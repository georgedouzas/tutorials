# Cobweb diagram of the iteration x -> cos x from x_0 = 0, converging to the fixed point p = 0.739...
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import cos

p = find_root(lambda x: cos(x) - x, 0, 1)
xs = [0.0]
for k in range(12):
    xs.append(cos(xs[-1]))
fig, ax = plt.subplots(figsize=(5.2, 4.4))
X = [k / 200 for k in range(0, 241)]
ax.plot(X, [cos(x) for x in X], color=ACCENT, lw=1.8)
ax.plot([0, 1.2], [0, 1.2], color=MUTED, lw=1.2)
px, py = [xs[0]], [0.0]
for k in range(12):
    px += [xs[k], xs[k + 1]]; py += [xs[k + 1], xs[k + 1]]
ax.plot(px, py, color=STATEMENT, lw=1.1)
ax.plot(p, p, "o", color=INK, ms=4)
ax.annotate("$p$", (p, p), xytext=(0.6, 0.93), fontsize=12, arrowprops=dict(arrowstyle="-", color=INK, lw=0.7))
ax.text(0.03, 1.03, r"$y = \cos x$", color=ACCENT, fontsize=12)
ax.text(1.06, 0.93, "$y = x$", color=MUTED, fontsize=12)
for k, lab in ((0, "$x_0$"), (1, "$x_1$"), (2, "$x_2$")):
    ax.text(xs[k], -0.08, lab, ha="center", fontsize=11)
ax.plot([0, 1.2], [0, 0], color=INK, lw=0.8); ax.plot([0, 0], [0, 1.2], color=INK, lw=0.8)
ax.set_xlim(-0.05, 1.25); ax.set_ylim(-0.15, 1.2); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "cobweb_cos")
