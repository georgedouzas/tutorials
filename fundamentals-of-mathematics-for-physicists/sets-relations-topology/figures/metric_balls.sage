# Unit balls of the taxicab, Euclidean and max metrics on the plane, centred at the origin.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin

fig, ax = plt.subplots(figsize=(4.6, 4.2))
T = [2 * pi * k / 240 for k in range(241)]
sq = ([1, -1, -1, 1, 1], [1, 1, -1, -1, 1])
dia = ([1, 0, -1, 0, 1], [0, 1, 0, -1, 0])
ax.fill(*sq, color=EXERCISE, alpha=0.08, lw=0)
ax.plot(*sq, color=EXERCISE, lw=1.6)
ax.fill([cos(t) for t in T], [sin(t) for t in T], color=ACCENT, alpha=0.10, lw=0)
ax.plot([cos(t) for t in T], [sin(t) for t in T], color=ACCENT, lw=1.6)
ax.fill(*dia, color=STATEMENT, alpha=0.12, lw=0)
ax.plot(*dia, color=STATEMENT, lw=1.6)
ax.plot([-1.45, 1.45], [0, 0], color=GRID, lw=0.8, zorder=0)
ax.plot([0, 0], [-1.45, 1.45], color=GRID, lw=0.8, zorder=0)
ax.text(0.18, 0.18, "$d_1$", color=STATEMENT, fontsize=12)
ax.text(0.62, 0.50, "$d_2$", color=ACCENT, fontsize=12)
ax.text(1.06, 1.06, r"$d_\infty$", color=EXERCISE, fontsize=12)
ax.text(1.03, -0.16, "$1$", color=INK, fontsize=11)
ax.text(-0.14, 1.04, "$1$", color=INK, fontsize=11)
ax.set_xlim(-1.5, 1.5); ax.set_ylim(-1.5, 1.5); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "metric_balls")
