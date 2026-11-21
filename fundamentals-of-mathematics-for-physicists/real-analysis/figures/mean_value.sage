# The mean value theorem for f(x) = x^3 on [0, 2]: the chord from (0, 0) to (2, 8) has slope 4, and the tangent at
# c = 2/sqrt(3) is parallel to it.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

c = float(2 / sqrt(3))
assert abs(3 * c^2 - 4) < 1e-12
fig, ax = plt.subplots(figsize=(5.4, 4.4))
xs = [-0.2 + k / 200 for k in range(0, 461)]
ax.plot(xs, [t^3 for t in xs], color=INK, lw=1.6)
ax.plot([0, 2], [0, 8], color=ACCENT, lw=1.3)
ax.plot([0, 2], [0, 8], "o", color=ACCENT, ms=5)
ax.plot([c - 0.9, c + 0.9], [c^3 - 3.6, c^3 + 3.6], color=STATEMENT, lw=1.3)
ax.plot([c], [c^3], "o", color=STATEMENT, ms=5)
ax.plot([c, c], [-1, c^3], color=STATEMENT, lw=0.8, ls=(0, (3, 3)))
ax.text(c, -1.55, "$c$", color=STATEMENT, fontsize=12, ha="center")
ax.text(0.55, 3.2, "slope $4$", color=ACCENT, fontsize=10, rotation=0)
ax.text(1.3, 0.4, r"$f'(c) = 4$", color=STATEMENT, fontsize=10)
ax.text(1.85, 3.0, "$x^3$", color=INK, fontsize=12)
ax.set_xlim(-0.25, 2.25); ax.set_ylim(-1.0, 9); ax.set_xlabel("$x$")
ax.set_xticks([0, 1, 2])
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "mean_value")
