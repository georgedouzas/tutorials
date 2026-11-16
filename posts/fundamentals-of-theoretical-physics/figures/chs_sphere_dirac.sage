# Figure: a spherical pendulum computed in two ways. Left: the orbit on the sphere from the Cartesian Dirac-bracket equations
# xdot = {x, H}_D, pdot = {p, H}_D with H = |p|^2/2m + m g x3 and the constraints |x|^2 - R^2, x.p (dots) and from the
# Euler-Lagrange equations in spherical angles (line). Right: the constraint functions along the Dirac-bracket orbit and the
# difference of the heights x3 of the two computations.
# Checks: the two computations agree; |x| = R and x.p = 0 are preserved; the energy is conserved. Output: figures/chs_sphere_dirac.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "chs_sphere_dirac.svg")
g, R, m = 9.81, 1.0, 1.0
def dirac(t, s):
    # Dirac brackets {x_i, p_j}_D = delta_ij - x_i x_j/|x|^2, {p_i, p_j}_D = (x_j p_i - x_i p_j)/|x|^2, {x_i, x_j}_D = 0
    x, p = s[:3], s[3:]
    r2 = x @ x
    dH_dp, dH_dx = p/m, np.array([0, 0, m*g])
    xdot = dH_dp - x*(x @ dH_dp)/r2
    Pij = (np.outer(p, x) - np.outer(x, p))/r2          # {p_i, p_j}_D = (p_i x_j - x_i p_j)/r2
    pdot = -(dH_dx - x*(x @ dH_dx)/r2) + Pij @ dH_dp  # {p_i, H}_D = -{x_j, p_i}_D dH/dx_j + {p_i, p_j}_D dH/dp_j
    return list(xdot) + list(pdot)
def angles(t, s):
    th, ph, dth, dph = s                                  # theta from the downward vertical
    return [dth, dph, np.sin(th)*np.cos(th)*dph**2 - g/R*np.sin(th), -2*dth*dph*np.cos(th)/np.sin(th)]
th0, dph0, T = 1.1, 2.0, 6.0
x0 = R*np.array([np.sin(th0), 0, -np.cos(th0)]); p0 = m*np.array([0, R*np.sin(th0)*dph0, 0])
ts = np.linspace(0, T, 1201)
sd = solve_ivp(dirac, [0, T], list(x0) + list(p0), t_eval=ts, rtol=1e-11, atol=1e-12)
sa = solve_ivp(angles, [0, T], [th0, 0, 0, dph0], t_eval=ts, rtol=1e-11, atol=1e-12)
X, P = sd.y[:3], sd.y[3:]
th, ph = sa.y[0], sa.y[1]
Xa = R*np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), -np.cos(th)])
fig = plt.figure(figsize=(10.5, 4.2))
ax = fig.add_subplot(1, 2, 1, projection="3d")
u, v = np.meshgrid(np.linspace(0, 2*np.pi, 40), np.linspace(0, np.pi, 20))
ax.plot_wireframe(R*np.cos(u)*np.sin(v), R*np.sin(u)*np.sin(v), R*np.cos(v), color="lightgrey", lw=0.4)
ax.plot(Xa[0], Xa[1], Xa[2], color="royalblue", lw=1.4, label="angles (Euler-Lagrange)")
ax.plot(X[0, ::12], X[1, ::12], X[2, ::12], ".", color="firebrick", ms=3, label="Cartesian, Dirac bracket")
ax.set_box_aspect((1, 1, 1)); ax.set_xlabel("$x_1$"); ax.set_ylabel("$x_2$"); ax.set_zlabel("$x_3$")
ax.set_title("spherical pendulum", fontsize=10); ax.legend(fontsize=8, loc="upper left")
ax2 = fig.add_subplot(1, 2, 2)
rr = np.sqrt((X**2).sum(0)); xp = (X*P).sum(0); dz = X[2] - Xa[2]
ax2.semilogy(ts, np.abs(rr - R) + 1e-17, color="seagreen", label=r"$\,||x| - R|$")
ax2.semilogy(ts, np.abs(xp) + 1e-17, color="darkorange", label=r"$|x \cdot p|$")
ax2.semilogy(ts, np.abs(dz) + 1e-17, color="firebrick", label=r"$|x_3^{\mathrm{Dirac}} - x_3^{\mathrm{angles}}|$")
ax2.set_xlabel("$t$"); ax2.set_title("constraints and agreement along the orbit", fontsize=10); ax2.legend(fontsize=8)
ax2.set_ylim(1e-17, 1e-5)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
En = (P**2).sum(0)/(2*m) + m*g*X[2]
print("[PASS] Dirac-bracket and angle computations agree (max |x - x_angles| %.1e):" % np.abs(X - Xa).max(), np.abs(X - Xa).max() < 1e-7)
print("[PASS] |x| = R preserved (max %.1e):" % np.abs(rr - R).max(), np.abs(rr - R).max() < 1e-8)
print("[PASS] x.p = 0 preserved (max %.1e):" % np.abs(xp).max(), np.abs(xp).max() < 1e-8)
print("[PASS] energy conserved (max relative change %.1e):" % (np.abs(En - En[0]).max()/abs(En[0])), np.abs(En - En[0]).max()/abs(En[0]) < 1e-8)
print("wrote", os.path.relpath(OUT))
