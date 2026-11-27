# Two local trivialisations of the Moebius band over arcs U, U' of the circle, and the transition function on the overlap.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, FancyArrowPatch

fig, ax = plt.subplots(figsize=(6.4, 3.4))
tp = 2 * np.pi
# the band: [0, 2 pi] x [-1, 1], right edge glued to the left one with the flip y -> -y
ax.add_patch(Rectangle((0, -1), tp, 2, fill=False, ec=INK, lw=1.2))
ax.add_patch(FancyArrowPatch((0, -0.9), (0, 0.9), arrowstyle="-|>", mutation_scale=12, color=INK, lw=1.2))
ax.add_patch(FancyArrowPatch((tp, 0.9), (tp, -0.9), arrowstyle="-|>", mutation_scale=12, color=INK, lw=1.2))
for x in np.linspace(0.3, tp - 0.3, 13):                  # fibres
    ax.plot([x, x], [-1, 1], color=GRID, lw=0.8)
ax.plot([0, tp], [0, 0], color=MUTED, lw=1.0, ls="--")    # zero section
# U = (pi/6, 11 pi/6); U' = [0, pi/3) u (5 pi/3, 2 pi]
U, Up = (np.pi / 6, 11 * np.pi / 6), [(0, np.pi / 3), (5 * np.pi / 3, tp)]
ax.add_patch(Rectangle((U[0], -1.55), U[1] - U[0], 0.16, color=ACCENT, alpha=0.85, lw=0))
for a, b in Up:
    ax.add_patch(Rectangle((a, -1.8), b - a, 0.16, color=STATEMENT, alpha=0.85, lw=0))
for a, b in [(np.pi / 6, np.pi / 3), (5 * np.pi / 3, 11 * np.pi / 6)]:
    ax.add_patch(Rectangle((a, -1), b - a, 2, color=EXERCISE, alpha=0.18, lw=0))
ax.text(np.pi, -1.33, r"$U$", color=ACCENT, ha="center", va="bottom")
ax.text(5.95, -1.98, r"$U'$", color=STATEMENT, ha="center", va="top")
ax.text(np.pi / 4, 1.12, r"$g = -1$", color=EXERCISE, ha="center", va="bottom")
ax.text(7 * np.pi / 4, 1.12, r"$g = +1$", color=EXERCISE, ha="center", va="bottom")
ax.text(-0.12, 0, r"$F$", color=INK, ha="right", va="center")
ax.text(np.pi, -2.3, r"base $S^1$, angle $\varphi \in [0, 2\pi]$", color=MUTED, ha="center", va="top")
ax.set_xlim(-0.6, tp + 0.4); ax.set_ylim(-2.7, 1.5); ax.axis("off")
save_matplotlib(fig, "fib_trivialisations")
