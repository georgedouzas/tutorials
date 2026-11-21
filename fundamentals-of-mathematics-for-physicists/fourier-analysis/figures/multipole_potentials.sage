# Equipotentials in the xz-plane of the linear quadrupole (charges e at +-a e_z, -2e at the origin), exact (left)
# and its leading multipole term e a^2 (3 cos^2 theta - 1)/(4 pi r^3) (right), with a = 1 and e = 4 pi.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

# check: far away the exact potential agrees with the l = 2 term up to a relative error of order (a/r)^2
x, z, a, e = var("x z a e")
r = sqrt(x^2 + z^2)
exact = e/(4*pi)*(1/sqrt(x^2 + (z - a)^2) + 1/sqrt(x^2 + (z + a)^2) - 2/r)
lead = e*a^2*(3*z^2/r^2 - 1)/(4*pi*r^3)
val = (exact - lead).subs({x: 30.0, z: 40.0, a: 1, e: 1})
assert abs(val) < 2e-3 * abs(lead.subs({x: 30.0, z: 40.0, a: 1, e: 1}))

X, Z = np.meshgrid(np.linspace(-3, 3, 601), np.linspace(-3, 3, 601))
R = np.sqrt(X**2 + Z**2)
with np.errstate(divide="ignore", invalid="ignore"):
    E = 1/np.sqrt(X**2 + (Z - 1)**2) + 1/np.sqrt(X**2 + (Z + 1)**2) - 2/R
    L = (3*Z**2/R**2 - 1)/R**3
levels = [-0.4, -0.2, -0.1, -0.05, 0.05, 0.1, 0.2, 0.4]
fig, axs = plt.subplots(1, 2, figsize=(9.2, 4.4))
for ax, F, ttl in [(axs[0], E, "exact potential"), (axs[1], L, "leading term, $l = 2$")]:
    neg = [v for v in levels if v < 0]; pos = [v for v in levels if v > 0]
    ax.contour(X, Z, F, levels=neg, colors=ACCENT, linewidths=1.0)
    ax.contour(X, Z, F, levels=pos, colors=STATEMENT, linewidths=1.0)
    ax.contour(X, Z, F, levels=[0], colors=MUTED, linewidths=0.8, linestyles="dashed")
    th = np.linspace(0, 2*np.pi, 200)
    ax.plot(np.cos(th), np.sin(th), color=GRID, lw=0.8)
    ax.set_aspect("equal"); ax.set_xlim(-3, 3); ax.set_ylim(-3, 3)
    ax.set_xlabel("$x$"); ax.set_ylabel("$z$"); ax.set_title(ttl, fontsize=11)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
axs[0].plot([0, 0, 0], [-1, 0, 1], "o", color=INK, ms=4)
fig.tight_layout()
save_matplotlib(fig, "multipole_potentials")
