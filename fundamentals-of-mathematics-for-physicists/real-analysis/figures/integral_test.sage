# The integral test for f(x) = 1/x^2 on [1, 7]: rectangles of height f(k) on [k, k + 1] lie above the curve and those of
# height f(k + 1) below it, so sum_{k>=2} f(k) <= int_1^oo f = 1 <= sum_{k>=1} f(k).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

assert sum(1 / QQ(k)^2 for k in range(2, 7)) < 1 - QQ(1) / 7 < sum(1 / QQ(k)^2 for k in range(1, 7))
fig, ax = plt.subplots(figsize=(6.4, 3.6))
for k in range(1, 7):
    ax.add_patch(Rectangle((k, 0), 1, 1.0 / k**2, facecolor=STATEMENT, alpha=0.18, edgecolor=STATEMENT, lw=0.8))
    ax.add_patch(Rectangle((k, 0), 1, 1.0 / (k + 1)**2, facecolor=ACCENT, alpha=0.35, edgecolor=ACCENT, lw=0.8))
xs = [0.9 + k * 6.2 / 500 for k in range(501)]
ax.plot(xs, [1 / t**2 for t in xs], color=INK, lw=1.8)
ax.text(2.15, 0.55, "$f(k)$ on $[k, k+1]$", color=STATEMENT, fontsize=10)
ax.text(2.6, 0.32, "$f(k+1)$ on $[k, k+1]$", color=ACCENT, fontsize=10)
ax.annotate("", xy=(2.35, 0.13), xytext=(2.9, 0.29), arrowprops=dict(arrowstyle="->", color=ACCENT, lw=0.8))
ax.annotate("", xy=(1.6, 0.8), xytext=(2.3, 0.6), arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=0.8))
ax.text(1.12, 1.03, "$1/x^2$", color=INK, fontsize=12)
ax.set_xlim(0.8, 7.3); ax.set_ylim(0, 1.15); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "integral_test")
