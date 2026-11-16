# Figure: the heavy symmetric top (Lagrange top) with I1 = 1, I3 = 1/2, Mgl = 1 and p_psi = I3 omega_3 = 4, started at
# theta_0 = 0.8 with theta' = 0. Left: the path of the tip of the symmetry axis R e_3, seen from above, for three initial
# precession rates phi'(0) = 0 (cusps), 0.4 (waves) and -0.4 (loops). Right: theta(t) for phi'(0) = 0 with the two turning
# angles given by the roots of the cubic f(u) of the reduced energy equation u'^2 = f(u), u = cos theta.
# Checks: E, p_phi and p_psi are conserved; theta stays between the roots; for the release from rest the nutation
# amplitude, frequency and mean precession agree with the fast-top estimates 2 I1 Mgl sin(theta_0)/p_psi^2, p_psi/I1 and
# Mgl/p_psi. Output: figures/rgb_heavy_top.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "rgb_heavy_top.svg")
I1, I3, Mgl, ppsi, th0 = 1.0, 0.5, 1.0, 4.0, 0.8


def rhs(t, y, pphi):
    th, ph, thd = y
    s, c = np.sin(th), np.cos(th)
    phd = (pphi - ppsi * c) / (I1 * s**2)
    # I1 theta'' = I1 sin cos phi'^2 - p_psi sin phi' + Mgl sin, the theta equation of the Lagrangian
    thdd = (I1 * s * c * phd**2 - ppsi * s * phd + Mgl * s) / I1
    return [thd, phd, thdd]


def run(phd0, T=12.0):
    pphi = I1 * np.sin(th0)**2 * phd0 + ppsi * np.cos(th0)
    sol = solve_ivp(rhs, (0, T), [th0, 0.0, 0.0], args=(pphi,), rtol=1e-11, atol=1e-12, dense_output=True, max_step=0.01)
    return sol, pphi


def energy(th, thd, pphi):
    return 0.5 * I1 * thd**2 + (pphi - ppsi * np.cos(th))**2 / (2 * I1 * np.sin(th)**2) + Mgl * np.cos(th)


fig, axes = plt.subplots(1, 2, figsize=(10, 4.4))
ax = axes[0]
tt = np.linspace(0, 12, 6000)
cases = [(0.0, "firebrick", r"$\dot\varphi(0) = 0$: cusps"), (0.4, "royalblue", r"$\dot\varphi(0) = 0.4$: waves"),
         (-0.4, "seagreen", r"$\dot\varphi(0) = -0.4$: loops")]
results = {}
for phd0, col, lab in cases:
    sol, pphi = run(phd0)
    th, ph, thd = sol.sol(tt)
    results[phd0] = (th, ph, thd, pphi)
    # the axis R e_3 = (sin th sin ph, -sin th cos ph, cos th) (Euler's kinematic equations of Part I)
    ax.plot(np.sin(th) * np.sin(ph), -np.sin(th) * np.cos(ph), color=col, lw=1.1, label=lab)
circ = np.linspace(0, 2 * np.pi, 200)
for r in (np.sin(th0),):
    ax.plot(r * np.cos(circ), r * np.sin(circ), ":", color="grey", lw=0.8)
ax.set_aspect("equal"); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.set_title(r"tip of the symmetry axis seen from above", fontsize=10)
ax.legend(fontsize=8, loc="lower left")
# right panel: theta(t) for the release from rest, with the turning angles from the cubic
th, ph, thd, pphi = results[0.0]
E = energy(th0, 0.0, pphi)
# u'^2 = f(u) = (2/I1)(E - Mgl u)(1 - u^2) - (pphi - ppsi u)^2 / I1^2, a cubic in u
coef = np.polynomial.polynomial.Polynomial([2 * E / I1, -2 * Mgl / I1]) * np.polynomial.polynomial.Polynomial([1, 0, -1]) \
    - np.polynomial.polynomial.Polynomial([pphi, -ppsi])**2 / I1**2
roots = np.sort(coef.roots().real)
inside = roots[(roots > -1) & (roots < 1)]
th_turn = np.sort(np.arccos(inside))
axes[1].plot(tt, th, color="firebrick", lw=1.2, label=r"$\theta(t)$, $\dot\varphi(0) = 0$")
for k, v in enumerate(th_turn):
    axes[1].axhline(v, ls="--", color="grey", lw=0.8, label=r"turning angles from the roots of $f(u)$" if k == 0 else None)
axes[1].set_xlabel(r"$t$"); axes[1].set_ylabel(r"$\theta$")
axes[1].set_title(r"nutation between the two turning angles", fontsize=10)
axes[1].set_ylim(th_turn[0] - 0.01, th_turn[1] + 0.025)
axes[1].legend(fontsize=8, loc="upper right", ncol=2)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")

dE = max(abs(energy(r[0], r[2], r[3]) - energy(th0, 0.0, r[3])).max() for r in results.values())
print("[PASS] energy conserved along the three runs (max drift %.1e):" % dE, dE < 1e-8)
print("[PASS] theta stays between the turning angles %.5f and %.5f:" % tuple(th_turn),
      th.min() > th_turn[0] - 1e-6 and th.max() < th_turn[1] + 1e-6 and abs(th.max() - th_turn[1]) < 1e-4)
amp = th.max() - th0
est = 2 * I1 * Mgl * np.sin(th0) / ppsi**2
print("[PASS] nutation amplitude %.4f against the fast-top estimate %.4f (within 15%%):" % (amp, est), abs(amp / est - 1) < 0.15)
# nutation period from the maxima of theta
mx = [tt[i] for i in range(1, len(tt) - 1) if th[i] > th[i - 1] and th[i] >= th[i + 1]]
per = np.mean(np.diff(mx))
print("[PASS] nutation period %.4f against 2 pi I1/p_psi = %.4f (within 10%%):" % (per, 2 * np.pi * I1 / ppsi), abs(per / (2 * np.pi * I1 / ppsi) - 1) < 0.1)
mean_prec = ph[-1] / tt[-1]
print("[PASS] mean precession rate %.4f against Mgl/p_psi = %.4f (within 15%%):" % (mean_prec, Mgl / ppsi), abs(mean_prec / (Mgl / ppsi) - 1) < 0.15)
print("[PASS] the cubic has a root at u_0 = cos(theta_0) for the release from rest:", abs(coef(np.cos(th0))) < 1e-12)
print("wrote", os.path.relpath(OUT))
