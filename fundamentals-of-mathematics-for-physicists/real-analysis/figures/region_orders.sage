# The triangle D = {0 <= y <= x <= 1} described in the two orders of Fubini's theorem: vertical strips 0 <= y <= x over
# x in [0, 1] (left), horizontal strips y <= x <= 1 over y in [0, 1] (right). Both give the area 1/2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

x, y = var("x y")
assert integrate(integrate(1, y, 0, x), x, 0, 1) == integrate(integrate(1, x, y, 1), y, 0, 1) == 1/2

fig, axes = plt.subplots(1, 2, figsize=(8.0, 3.9))
n = 8
for ax, mode in zip(axes, ["vertical", "horizontal"]):
    ax.fill([0, 1, 1], [0, 0, 1], color=ACCENT, alpha=0.12, lw=0)
    ax.plot([0, 1, 1, 0], [0, 0, 1, 0], color=INK, lw=1.2)
    for k in range(n):
        t0, t1 = k / n, (k + 1) / n
        tm = (t0 + t1) / 2
        if mode == "vertical":
            ax.add_patch(plt.Rectangle((t0, 0), 1 / n, tm, fill=False, ec=ACCENT, lw=0.9))
        else:
            ax.add_patch(plt.Rectangle((tm, t0), 1 - tm, 1 / n, fill=False, ec=STATEMENT, lw=0.9))
    if mode == "vertical":
        ax.annotate("", xy=(0.69, 0.65), xytext=(0.69, 0.02), arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.6))
        ax.text(0.25, 0.75, "$0 \\leq y \\leq x$", color=ACCENT, fontsize=12)
        ax.set_title("inner integral in $y$", fontsize=11, color=INK)
    else:
        ax.annotate("", xy=(0.98, 0.31), xytext=(0.33, 0.31), arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=1.6))
        ax.text(0.12, 0.75, "$y \\leq x \\leq 1$", color=STATEMENT, fontsize=12)
        ax.set_title("inner integral in $x$", fontsize=11, color=INK)
    ax.set_xlim(-0.05, 1.1); ax.set_ylim(-0.05, 1.1); ax.set_aspect("equal")
    ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
    ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "region_orders")
