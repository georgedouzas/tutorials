# The region between the square with vertices +-2 +-2i and the unit circle, cut along the axes into four pieces. The
# first-quadrant piece (shaded) lies in the half-plane x + y > 0 (boundary dashed), which does not contain 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(4.4, 4.4))
sq = [(2, 2), (-2, 2), (-2, -2), (2, -2), (2, 2)]
ax.plot([p[0] for p in sq], [p[1] for p in sq], color=ACCENT, lw=1.6)
t = np.linspace(0, 2 * np.pi, 400)
ax.plot(np.cos(t), np.sin(t), color=STATEMENT, lw=1.6)
for (x0, y0, x1, y1) in ((1, 0, 2, 0), (0, 1, 0, 2), (-1, 0, -2, 0), (0, -1, 0, -2)):
    ax.plot([x0, x1], [y0, y1], color=MUTED, lw=1.0)
s = np.linspace(0, np.pi / 2, 100)
ax.fill([2, 2, 0] + list(np.cos(s[::-1])), [0, 2, 2] + list(np.sin(s[::-1])), color=EXAMPLE, alpha=0.18, lw=0)
x = np.linspace(-2.4, 2.4, 2)
ax.plot(x, -x, color=EXAMPLE, lw=1.0, ls=(0, (4, 3)))
def arrow(p, q, c):
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=c, lw=1.5))
arrow((2, 0.9), (2, 1.2), ACCENT); arrow((-0.9, 2), (-1.2, 2), ACCENT)
arrow((-2, -0.9), (-2, -1.2), ACCENT); arrow((0.9, -2), (1.2, -2), ACCENT)
arrow((np.cos(0.9), np.sin(0.9)), (np.cos(1.05), np.sin(1.05)), STATEMENT)
ax.plot([0], [0], "o", color=INK, ms=4); ax.text(-0.3, -0.35, r"$0$")
ax.text(1.2, 1.35, r"$x + y > 0$", color=EXAMPLE, fontsize=10)
ax.set_aspect("equal"); ax.axis("off"); ax.set_xlim(-2.5, 2.5); ax.set_ylim(-2.5, 2.5)
fig.tight_layout()
save_matplotlib(fig, "square_to_circle")
