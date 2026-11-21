# Three subsets of the plane cut out by the same expression X^2 + Y^2: the open disc (< 1), the circle (= 1) and the
# closed disc (<= 1). The open disc is drawn with a dashed edge, the circle as a curve alone.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle

fig, axes = plt.subplots(1, 3, figsize=(7.6, 2.8))
specs = [("open disc $X^2 + Y^2 < 1$", True, "--"), ("circle $S^1$: $X^2 + Y^2 = 1$", False, "-"),
         ("closed disc $X^2 + Y^2 \\leq 1$", True, "-")]
for ax, (title, filled, ls) in zip(axes, specs):
    if filled:
        ax.add_patch(Circle((0, 0), 1, facecolor=ACCENT, alpha=0.22, edgecolor="none"))
    ax.add_patch(Circle((0, 0), 1, fill=False, edgecolor=ACCENT, linewidth=2.0, linestyle=ls))
    ax.axhline(0, color=GRID, linewidth=0.8, zorder=0); ax.axvline(0, color=GRID, linewidth=0.8, zorder=0)
    ax.set_title(title, fontsize=10.5, color=INK)
    ax.set_xlim(-1.35, 1.35); ax.set_ylim(-1.35, 1.35); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "plane_sets")
