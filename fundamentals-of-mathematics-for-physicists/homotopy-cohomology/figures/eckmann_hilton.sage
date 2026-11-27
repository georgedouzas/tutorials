# Eckmann-Hilton: five stages of a homotopy rel boundary from f .1 g to g .1 f in pi_2. The coloured rectangles carry
# f (blue) and g (red), rescaled; the grey part of each square is sent to the base point x0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

stages = [
    [((0, 0), 0.5, 1, "f"), ((0.5, 0), 0.5, 1, "g")],
    [((0.05, 0.05), 0.4, 0.4, "f"), ((0.55, 0.55), 0.4, 0.4, "g")],
    [((0.3, 0.05), 0.4, 0.4, "f"), ((0.3, 0.55), 0.4, 0.4, "g")],
    [((0.55, 0.05), 0.4, 0.4, "f"), ((0.05, 0.55), 0.4, 0.4, "g")],
    [((0.5, 0), 0.5, 1, "f"), ((0, 0), 0.5, 1, "g")],
]
colours = {"f": ACCENT, "g": STATEMENT}
fig, axes = plt.subplots(1, 5, figsize=(9.6, 2.3))
for k, (ax, rects) in enumerate(zip(axes, stages)):
    ax.add_patch(Rectangle((0, 0), 1, 1, facecolor=GRID, edgecolor=INK, lw=1.2))
    for (xy, w, h, name) in rects:
        ax.add_patch(Rectangle(xy, w, h, facecolor=colours[name], edgecolor=INK, lw=0.8, alpha=0.85))
        ax.text(xy[0] + w / 2, xy[1] + h / 2, r"$%s$" % name, color="white", ha="center", va="center", fontsize=13)
    ax.set_xlim(-0.05, 1.05); ax.set_ylim(-0.25, 1.05)
    ax.set_aspect("equal"); ax.axis("off")
    ax.text(0.5, -0.17, ["$f \\cdot_1 g$", "shrink", "slide", "slide", "$g \\cdot_1 f$"][k], ha="center", color=INK,
            fontsize=10)
for k in range(4):
    fig.text(0.2 * (k + 1) - 0.005, 0.55, r"$\simeq$", ha="center", va="center", fontsize=13, color=MUTED)
fig.tight_layout(w_pad=2.2)
save_matplotlib(fig, "eckmann_hilton")
