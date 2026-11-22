# The symmetries of an equilateral triangle: vertices 1, 2, 3 at the angles 0, 120, 240 degrees, the three mirror axes
# labelled by the transposition they induce, and the rotation by 120 degrees.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, Polygon
import math

fig, ax = plt.subplots(figsize=(4.4, 4.2))
V = [(math.cos(2 * math.pi * k / 3), math.sin(2 * math.pi * k / 3)) for k in range(3)]
ax.add_patch(Polygon(V, closed=True, fc="#e8eef6", ec=ACCENT, lw=1.6))
names = {0: r"$(2\,3)$", 1: r"$(1\,3)$", 2: r"$(1\,2)$"}
for k, (x, y) in enumerate(V):
    ax.plot([-0.95 * x, 1.32 * x], [-0.95 * y, 1.32 * y], ls="--", color=MUTED, lw=1)
    t = 2 * math.pi * k / 3 + 0.22
    ax.text(1.15 * math.cos(t), 1.15 * math.sin(t), str(k + 1), ha="center", va="center", fontsize=13, color=INK)
    ax.text(-0.80 * x, -0.80 * y + (-0.12 if k == 0 else 0.0), names[k], ha="center", va="center",
            fontsize=11, color=MUTED, bbox=dict(fc="white", ec="none", pad=1))
for (x, y) in V:
    ax.plot(x, y, "o", color=ACCENT, ms=6)
arc = FancyArrowPatch((0.28 * math.cos(0.17), 0.28 * math.sin(0.17)), (0.28 * math.cos(1.75), 0.28 * math.sin(1.75)), connectionstyle="arc3,rad=0.5", arrowstyle="-|>",
                      mutation_scale=14, color=STATEMENT, lw=1.6)
ax.add_patch(arc)
ax.text(0.34, 0.15, r"$120^\circ$", color=STATEMENT, fontsize=11, ha="left", va="center")
ax.set_xlim(-1.05, 1.45); ax.set_ylim(-1.2, 1.25); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "triangle_symmetries")
