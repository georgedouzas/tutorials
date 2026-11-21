# The lens x^2 <= y <= sqrt(x) of the Green's theorem examples, with its boundary traversed anticlockwise, a vertical
# strip (the region between graphs over the x-axis) and a horizontal strip (between graphs over the y-axis).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, y = var("x y")
assert integrate(sqrt(x) - x^2, x, 0, 1) == 1/3 == integrate(sqrt(y) - y^2, y, 0, 1)

s = np.linspace(0, 1, 200)
fig, ax = plt.subplots(figsize=(4.4, 4.4))
ax.fill_between(s, s**2, np.sqrt(s), color=ACCENT, alpha=0.18, lw=0)
x0, dx = 0.3, 0.04
xx = np.linspace(x0, x0 + dx, 10)
ax.fill_between(xx, xx**2, np.sqrt(xx), color=EXAMPLE, alpha=0.55, lw=0)
y0, dy = 0.7, 0.04
yy = np.linspace(y0, y0 + dy, 10)
ax.fill_betweenx(yy, yy**2, np.sqrt(yy), color=EXERCISE, alpha=0.55, lw=0)
ax.plot(s, s**2, color=ACCENT, lw=2); ax.plot(s, np.sqrt(s), color=ACCENT, lw=2)
for (p, q) in [((0.62, 0.62**2), (0.68, 0.68**2)), ((0.62**2, 0.62), (0.56**2, 0.56))]:
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.8))
ax.text(0.78, 0.42, r"$y = x^2$", color=ACCENT, fontsize=11)
ax.text(0.05, 0.62, r"$y = \sqrt{x}$", color=ACCENT, fontsize=11)
ax.text(x0 + 0.01, 0.02, "vertical strip", color=EXAMPLE, fontsize=9, rotation=0)
ax.text(0.95, y0 + 0.01, "horizontal strip", color=EXERCISE, fontsize=9, ha="left")
ax.set_aspect("equal"); ax.set_xlim(-0.05, 1.45); ax.set_ylim(-0.05, 1.1)
ax.set_xticks([0, 0.5, 1]); ax.set_yticks([0, 0.5, 1])
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "green_region")
