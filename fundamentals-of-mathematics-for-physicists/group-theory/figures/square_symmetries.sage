# The symmetries of a square: vertices 1, 2, 3, 4 in counterclockwise order, the four mirror axes (two through opposite
# corners, two through midpoints of opposite edges) and the quarter turn r.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, Polygon
import math

fig, ax = plt.subplots(figsize=(4.4, 4.2))
V = [(math.cos(math.pi / 4 + math.pi * k / 2), math.sin(math.pi / 4 + math.pi * k / 2)) for k in range(4)]
ax.add_patch(Polygon(V, closed=True, fc="#e8eef6", ec=ACCENT, lw=1.6))
for t in [0, math.pi / 4, math.pi / 2, 3 * math.pi / 4]:
    ax.plot([-1.3 * math.cos(t), 1.3 * math.cos(t)], [-1.3 * math.sin(t), 1.3 * math.sin(t)], ls="--", color=MUTED, lw=1)
for k, (x, y) in enumerate(V):
    ax.plot(x, y, "o", color=ACCENT, ms=6)
    ax.text(1.17 * x + 0.13 * (1 if x > 0 else -1), 1.17 * y, str(k + 1), ha="center", va="center", fontsize=13, color=INK)
arc = FancyArrowPatch((0.40, 0.0), (0.0, 0.40), connectionstyle="arc3,rad=0.42", arrowstyle="-|>",
                      mutation_scale=14, color=STATEMENT, lw=1.6)
ax.add_patch(arc)
ax.text(0.47, 0.22, r"$r$", color=STATEMENT, fontsize=13, ha="center", va="center")
ax.set_xlim(-1.45, 1.45); ax.set_ylim(-1.4, 1.4); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "square_symmetries")
