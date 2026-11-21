# Cobweb diagrams of a_{n+1} = 3 a_n / (a_n + 1): from a_0 = 0.3 the terms increase to the fixed point 2, from
# a_0 = 5 they decrease to it.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

f = lambda x: 3 * x / (x + 1)
fig, ax = plt.subplots(figsize=(5.2, 4.4))
xs = [k / 100 for k in range(0, 561)]
ax.plot(xs, [f(x) for x in xs], color=INK, lw=1.4)
ax.plot([0, 5.6], [0, 5.6], color=MUTED, lw=1.0, ls=(0, (4, 3)))
for a0, col in ((0.3, ACCENT), (5.0, STATEMENT)):
    a = a0
    px, py = [a], [0]
    for _ in range(8):
        b = f(a)
        px += [a, b]; py += [b, b]
        a = b
    ax.plot(px, py, color=col, lw=1.1)
    ax.plot([a0], [0], "o", color=col, ms=5)
ax.plot([2], [2], "o", color=EXAMPLE, ms=6)
ax.text(2.1, 1.7, "$2$", color=EXAMPLE, fontsize=12)
ax.text(0.3, -0.38, "$a_0 = 0.3$", color=ACCENT, fontsize=10, ha="center")
ax.text(5.0, -0.38, "$a_0 = 5$", color=STATEMENT, fontsize=10, ha="center")
ax.text(4.55, 4.0, "$y = x$", color=MUTED, fontsize=11)
ax.text(4.3, 2.75, r"$y = \frac{3x}{x+1}$", color=INK, fontsize=12)
ax.set_xlim(0, 5.6); ax.set_ylim(-0.6, 5.0)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "monotone_cobweb")
