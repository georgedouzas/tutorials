# Left: the unit hyperbola (x^0)^2 - (x^1)^2 = 1 with the four-velocities of rapidity 0, 0.6 and 1.4 = 0.6 + 0.8.
# Right: the composed velocity (v + v')/(1 + v v') against v for v' = 0.3, 0.6, 0.9.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

fig, axs = plt.subplots(1, 2, figsize=(8.4, 3.6))
ax = axs[0]
ws = [k / 50 * 3.2 - 1.6 for k in range(51)]
ax.plot([math.sinh(u) for u in ws], [math.cosh(u) for u in ws], color=ACCENT, lw=1.8)
ax.plot([-2.2, 2.2], [0, 0], color=GRID, lw=0.8); ax.plot([0, 0], [0, 2.6], color=GRID, lw=0.8)
ax.plot([0, 2.4], [0, 2.4], "--", color=MUTED, lw=1); ax.plot([0, -2.4], [0, 2.4], "--", color=MUTED, lw=1)
for k, (u, lab, dx, dy, ha) in enumerate([(0, r"$w = 0$", -0.1, -0.55, "right"), (0.6, r"$w = 0.6$", -0.12, 0.15, "right"), (1.4, r"$w + w' = 1.4$", -0.15, 0.1, "right")]):
    x, t = math.sinh(u), math.cosh(u)
    assert abs(t * t - x * x - 1) < 1e-12
    ax.annotate("", xy=(x, t), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=SERIES[k + 1], lw=1.6))
    ax.text(x + dx, t + dy, lab, ha=ha, fontsize=10, color=SERIES[k + 1])
ax.set_xlim(-2.3, 2.3); ax.set_ylim(-0.1, 2.7); ax.set_aspect("equal")
ax.set_xlabel(r"$x^1$", color=INK); ax.set_ylabel(r"$x^0$", color=INK)
ax = axs[1]
vs = [k / 100 for k in range(101)]
for k, vp in enumerate([float(0.3), float(0.6), float(0.9)]):
    ax.plot(vs, [(v + vp) / (1 + v * vp) for v in vs], color=SERIES[k], lw=1.8, label=r"$v' = %s$" % float(vp))
ax.plot([0, 1], [1, 1], "--", color=MUTED, lw=1)
ax.set_xlim(0, 1); ax.set_ylim(0, 1.05)
ax.set_xlabel(r"$v$", color=INK); ax.set_ylabel(r"$\frac{v + v'}{1 + vv'}$", color=INK)
ax.legend(frameon=False, fontsize=10, loc="lower right")
fig.tight_layout()
save_matplotlib(fig, "rapidity_addition")
