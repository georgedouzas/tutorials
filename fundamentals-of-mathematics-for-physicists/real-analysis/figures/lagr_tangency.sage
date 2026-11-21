# Level curves xy = k of T = 1 + xy and the unit circle; at (+-1, +-1)/sqrt(2) the level curves xy = +-1/2 touch the
# circle, and grad T = (y, x) is parallel to grad(x^2 + y^2) = (2x, 2y).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

fig, ax = plt.subplots(figsize=(5.2, 5.0))
th = [2*math.pi*k/400 for k in range(401)]
ax.plot([math.cos(t) for t in th], [math.sin(t) for t in th], color=INK, lw=1.8)
for k in (-1.0, -0.5, -0.2, 0.2, 0.5, 1.0):
    col = STATEMENT if abs(k) == 0.5 else MUTED
    lw = 1.6 if abs(k) == 0.5 else 0.8
    for sgn in (1, -1):
        xs = [sgn*(0.05 + 1.95*j/300) for j in range(301)]
        pts = [(x, k/x) for x in xs if abs(k/x) <= 2]
        ax.plot([p[0] for p in pts], [p[1] for p in pts], color=col, lw=lw)
s = 1/math.sqrt(2)
for (x, y) in ((s, s), (-s, -s), (s, -s), (-s, s)):
    assert abs(x*x + y*y - 1) < 1e-12
    ax.plot([x], [y], "o", color=ACCENT, ms=5)
    ax.annotate("", xy=(x + 0.45*y, y + 0.45*x), xytext=(x, y), arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.6))
    ax.annotate("", xy=(x + 0.3*x, y + 0.3*y), xytext=(x, y), arrowprops=dict(arrowstyle="->", color=EXAMPLE, lw=1.2, ls="--"))
ax.text(-0.38, 0.12, r"$\nabla T$", color=ACCENT)
ax.text(-1.3, 1.12, r"$\nabla g$", color=EXAMPLE)
ax.text(2.04, 0.25, r"$xy = \frac{1}{2}$", color=STATEMENT, va="center", clip_on=False)
ax.text(2.04, -0.25, r"$xy = -\frac{1}{2}$", color=STATEMENT, va="center", clip_on=False)
ax.set_xlim(-2, 2); ax.set_ylim(-2, 2); ax.set_aspect("equal")
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "lagr_tangency")
