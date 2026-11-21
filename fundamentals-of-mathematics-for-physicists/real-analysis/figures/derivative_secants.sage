# The graph of x^2 near a = 1, three secants through (1, 1) and (1 + h, (1 + h)^2) for h = 1, 1/2, 1/4, with slopes
# 2 + h, and the tangent y = 2x - 1 of slope 2 that they approach.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(5.6, 4.4))
xs = [k / 200 for k in range(0, 501)]
ax.plot(xs, [t^2 for t in xs], color=INK, lw=1.6)
for h, col in ((1, ORANGE), (0.5, EXAMPLE), (0.25, EXERCISE)):
    s = 2 + h
    assert abs(((1 + h)^2 - 1) / h - s) < 1e-12
    ax.plot([0, 2.5], [1 + s * (0 - 1), 1 + s * (2.5 - 1)], color=col, lw=1.0)
    ax.plot([1 + h], [(1 + h)^2], "o", color=col, ms=4)
ax.plot([0, 2.5], [-1, 4], color=STATEMENT, lw=1.6)
ax.plot([1], [1], "o", color=INK, ms=5)
ax.text(2.54, 5.5, "$h = 1$", color=ORANGE, fontsize=10, va="center")
ax.text(2.54, 4.85, "$h = 1/2$", color=EXAMPLE, fontsize=10, va="center")
ax.text(2.54, 4.35, "$h = 1/4$", color=EXERCISE, fontsize=10, va="center")
ax.text(2.54, 3.85, "tangent", color=STATEMENT, fontsize=10, va="center")
ax.text(1.55, 1.0, "$y = x^2$", color=INK, fontsize=11)
ax.set_xlim(0, 3.0); ax.set_ylim(-0.5, 7); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "derivative_secants")
