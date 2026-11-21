# A ray from A = (0, 1) to B = (2, -1) across the interface y = 0, with indices n1 = 1 above and n2 = 1.5 below, crossing
# at the point x of least optical path sqrt(x^2 + 1) + 1.5 sqrt((2 - x)^2 + 1); the angles from the normal satisfy Snell's law.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

n1, n2 = 1.0, 1.5
x0 = find_root(lambda x: n1*x/math.sqrt(x^2 + 1) - n2*(2 - x)/math.sqrt((2 - x)^2 + 1), 0.01, 1.99)
t1, t2 = math.atan(x0), math.atan(2 - x0)
assert abs(n1*math.sin(t1) - n2*math.sin(t2)) < 1e-9
fig, ax = plt.subplots(figsize=(5.4, 4.2))
ax.axhspan(-1.5, 0, color=ACCENT, alpha=0.08, lw=0)
ax.axhline(0, color=MUTED, lw=1.0)
ax.plot([0, x0, 2], [1, 0, -1], color=STATEMENT, lw=2.0)
ax.plot([x0, x0], [-1.2, 1.2], color=MUTED, lw=0.9, ls="--")
ax.plot([0, 2], [1, -1], "o", color=INK, ms=5)
ax.text(-0.12, 1.08, "$A$", color=INK); ax.text(2.07, -1.1, "$B$", color=INK)
r = 0.45
a1 = [math.pi/2 + t*(t1)/40 for t in range(41)]
ax.plot([x0 - r*math.cos(math.pi - a) for a in a1], [r*math.sin(a) for a in a1], color=INK, lw=0.8)
ax.text(x0 - 0.33, 0.55, r"$\theta_1$", color=INK)
a2 = [-math.pi/2 + t*(t2)/40 for t in range(41)]
ax.plot([x0 + r*math.cos(a) for a in a2], [r*math.sin(a) for a in a2], color=INK, lw=0.8)
ax.text(x0 + 0.1 + 0.6*math.sin(t2/2) - 0.1, -0.6*math.cos(t2/2) - 0.05, r"$\theta_2$", color=INK)
ax.text(1.75, 0.6, "$n_1 = 1$", color=INK)
ax.text(0.0, -0.45, "$n_2 = 1.5$", color=ACCENT)
ax.set_xlim(-0.4, 2.6); ax.set_ylim(-1.5, 1.4); ax.set_aspect("equal")
ax.set_xticks([]); ax.set_yticks([])
for side in ("top", "right", "left", "bottom"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "snell")
