# Orbits of SO^+(1, 3) on R^4, cut by the plane (x^1, x^0): the two sheets of eta(p, p) = 1, the two halves of the light cone,
# and the hyperboloid eta(p, p) = -1 (one connected orbit, cut in two branches). Dots: the representatives of the little groups.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

fig, ax = plt.subplots(figsize=(5.6, 5.2))
us = [k / 60 * 3.6 - 1.8 for k in range(61)]
for sgn in (1, -1):
    ax.plot([math.sinh(u) for u in us], [sgn * math.cosh(u) for u in us], color=ACCENT, lw=1.8)          # eta = 1
    ax.plot([sgn * math.cosh(u) for u in us], [math.sinh(u) for u in us], color=EXAMPLE, lw=1.8)         # eta = -1
for sgn in (1, -1):
    ax.plot([-3, 3], [sgn * -3, sgn * 3], "--", color=STATEMENT, lw=1.4)                                 # light cone
for u in us[::6]:   # check: the curves are the level sets
    assert abs(math.cosh(u)**2 - math.sinh(u)**2 - 1) < 1e-12
pts = [((0, 1), r"$m\mathbf{e}_0$: $SO(3)$", (0, 1.9), "center"), ((0, -1), r"$-m\mathbf{e}_0$: $SO(3)$", (0, -2.05), "center"),
       ((1.2, 1.2), r"$\mathbf{k}$: $ISO(2)$", (1.75, 0.55), "left"), ((1, 0), r"$m\mathbf{e}_3$: $SO^+(1, 2)$", (1.55, -0.75), "left")]
for (x, t), lab, (lx, ly), ha in pts:
    ax.plot(x, t, "o", color=INK, ms=6)
    ax.annotate(lab, xy=(x, t), xytext=(lx, ly), ha=ha, va="center", fontsize=10, color=INK,
                arrowprops=dict(arrowstyle="-", color=MUTED, lw=0.8, shrinkA=2, shrinkB=4))
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
ax.set_xlim(-3, 3); ax.set_ylim(-3, 3); ax.set_aspect("equal")
ax.set_xlabel(r"$x^1$ (or $x^3$)", color=INK); ax.set_ylabel(r"$x^0$", color=INK)
fig.tight_layout()
save_matplotlib(fig, "lorentz_orbits")
