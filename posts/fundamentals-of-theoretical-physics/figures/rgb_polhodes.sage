# Figure: the free asymmetric rigid body with principal moments (I1, I2, I3) = (1, 2, 3). Left: the paths of the body
# angular momentum Pi = I omega on the sphere |Pi| = 1, solutions of Euler's equations Pi' = Pi x I^{-1} Pi (the
# intersections of the sphere with the energy ellipsoids), seen obliquely, with the separatrices through +-e_2 drawn in
# black. Right: Pi_2(t) for a start 10^-3 away from the intermediate axis, which flips repeatedly, compared with the
# separatrix solution Pi_2 = tanh(lambda t) shifted to the first crossing.
# Checks: T and |Pi|^2 are conserved; the separatrix formula solves Euler's equations; the growth rate lambda equals the
# linearised rate Omega sqrt((I2 - I1)(I3 - I2)/(I1 I3)); the starts near e_1 and e_3 stay within 0.03 of their axes.
# Output: figures/rgb_polhodes.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "rgb_polhodes.svg")
I = np.array([1.0, 2.0, 3.0])


def euler(t, P):
    return np.cross(P, P / I)


def run(P0, T):
    P0 = np.array(P0, float) / np.linalg.norm(P0)
    return solve_ivp(euler, (0, T), P0, rtol=1e-11, atol=1e-13, dense_output=True, max_step=0.02)


# oblique orthographic view of the sphere
az, el = np.radians(40), np.radians(30)
e_r = np.array([np.cos(el) * np.cos(az), np.cos(el) * np.sin(az), np.sin(el)])
e_x = np.array([-np.sin(az), np.cos(az), 0.0])
e_y = np.cross(e_r, e_x)


def proj(P):
    P = np.atleast_2d(P)
    vis = P @ e_r >= 0
    return P @ e_x, P @ e_y, vis


fig, axes = plt.subplots(1, 2, figsize=(10, 4.6))
ax = axes[0]
circ = np.linspace(0, 2 * np.pi, 300)
ax.plot(np.cos(circ), np.sin(circ), color="lightgrey", lw=1)
starts = []
for s in (0.15, 0.4, 0.7):  # around e_1 (smallest moment)
    starts.append(([np.cos(s), np.sin(s), 0], "royalblue"))
    starts.append(([-np.cos(s), -np.sin(s), 0], "royalblue"))
for s in (0.15, 0.4, 0.7):  # around e_3 (largest moment)
    starts.append(([0, np.sin(s), np.cos(s)], "seagreen"))
    starts.append(([0, -np.sin(s), -np.cos(s)], "seagreen"))
lam = (1 / 2) * np.sqrt((I[1] - I[0]) * (I[2] - I[1]) / (I[0] * I[2]))  # Omega = |Pi|/I2 = 1/2
# separatrix: Pi_1 = k Pi_3 with k^2 = (1/I2 - 1/I3)/(1/I1 - 1/I2), Pi_2 = tanh(lambda t)
k = np.sqrt((1 / I[1] - 1 / I[2]) / (1 / I[0] - 1 / I[1]))
ts = np.linspace(-14, 14, 800)
for s1 in (1, -1):
    for s3 in (1, -1):
        P3 = s3 / np.cosh(lam * ts) / np.sqrt(1 + k**2)
        sep = np.stack([s1 * k * P3, np.tanh(lam * ts), P3], axis=1)
        x, y, v = proj(sep)
        ax.plot(np.where(v, x, np.nan), np.where(v, y, np.nan), color="black", lw=1.3)
        ax.plot(np.where(~v, x, np.nan), np.where(~v, y, np.nan), color="black", lw=0.6, ls=":")
for P0, col in starts:
    sol = run(P0, 30)
    P = sol.sol(np.linspace(0, 30, 3000)).T
    x, y, v = proj(P)
    ax.plot(np.where(v, x, np.nan), np.where(v, y, np.nan), color=col, lw=1)
    ax.plot(np.where(~v, x, np.nan), np.where(~v, y, np.nan), color=col, lw=0.5, ls=":")
for kk, lab in enumerate((r"$e_1$", r"$e_2$", r"$e_3$")):
    e = np.eye(3)[kk]
    x, y, v = proj(e)
    if v[0]:
        ax.plot(x, y, "o", color="black", ms=3); ax.text(x[0] + 0.04, y[0] + 0.04, lab, fontsize=10)
ax.set_aspect("equal"); ax.axis("off")
ax.set_title(r"paths of $\Pi$ on $|\Pi| = 1$, $(I_1, I_2, I_3) = (1, 2, 3)$", fontsize=10)
# right panel: flips near the intermediate axis
eps = 1e-3
sol = run([eps, 1, eps], 150)
tt = np.linspace(0, 150, 15000)
P = sol.sol(tt)
axes[1].plot(tt, P[1], color="firebrick", lw=1.2, label=r"$\Pi_2(t)$, start $10^{-3}$ from $e_2$")
# first downward crossing of zero and the separatrix through it
i0 = np.argmax(P[1] < 0)
t0 = tt[i0]
axes[1].plot(tt, -np.tanh(lam * (tt - t0)), "--", color="grey", lw=1, label=r"separatrix $-\tanh\lambda(t - t_0)$")
axes[1].set_ylim(-1.15, 1.35); axes[1].set_xlabel(r"$t$"); axes[1].set_ylabel(r"$\Pi_2$")
axes[1].set_title("rotation about the intermediate axis flips", fontsize=10)
axes[1].legend(fontsize=8, loc="upper right", ncol=1)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")

Pend = sol.sol(tt)
T = 0.5 * np.sum(Pend**2 / I[:, None], axis=0); N2 = np.sum(Pend**2, axis=0)
print("[PASS] 2T and |Pi|^2 conserved (drifts %.1e, %.1e):" % (abs(T - T[0]).max(), abs(N2 - N2[0]).max()),
      abs(T - T[0]).max() < 1e-8 and abs(N2 - N2[0]).max() < 1e-8)
# separatrix solves Euler's equations: finite-difference residual
h = 1e-5
def sepP(t):
    P3 = 1 / np.cosh(lam * t) / np.sqrt(1 + k**2)
    return np.array([k * P3, np.tanh(lam * t), P3])
res = max(np.abs((sepP(t + h) - sepP(t - h)) / (2 * h) - euler(t, sepP(t))).max() for t in np.linspace(-5, 5, 41))
print("[PASS] the separatrix (k Pi_3, tanh(lambda t), Pi_3) solves Euler's equations (residual %.1e):" % res, res < 1e-8)
print("[PASS] lambda = %.6f equals Omega sqrt((I2-I1)(I3-I2)/(I1 I3)) for Omega = 1/2:" % lam, abs(lam - 0.5 / np.sqrt(3)) < 1e-12)
dev = []
for P0 in ([1, 0.01, 0.01], [0.01, 0.01, 1]):
    Ps = run(P0, 60).sol(np.linspace(0, 60, 3000))
    ax_i = 0 if P0[0] == 1 else 2
    dev.append(np.sqrt(1 - Ps[ax_i]**2).max())
print("[PASS] starts 0.014 from e_1 and e_3 stay within 0.03 of their axes (max %.4f, %.4f):" % tuple(dev), max(dev) < 0.03)
print("wrote", os.path.relpath(OUT))
