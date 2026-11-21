# Hausdorff separation. Left: two points p, q of the plane at distance d, with the disjoint open balls of radius d/2.
# Right: the line with two origins 0 and 0'; every neighbourhood of either origin contains the same punctured interval.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin, hypot

p, q = (-0.7, -0.2), (0.8, 0.4)
d = hypot(q[0] - p[0], q[1] - p[1]); r = d / 2
assert abs(hypot(q[0] - p[0], q[1] - p[1]) - 2 * r) < 1e-12        # the balls touch at most at one point, not inside

T = [2 * pi * k / 200 for k in range(201)]
fig, axs = plt.subplots(1, 2, figsize=(9.2, 3.6), gridspec_kw=dict(width_ratios=[1.1, 1]))
ax = axs[0]
for c, col, lab, off in ((p, ACCENT, "$p$", (-0.12, -0.18)), (q, STATEMENT, "$q$", (0.08, -0.18))):
    rr = 0.97 * r
    ax.fill([c[0] + rr * cos(t) for t in T], [c[1] + rr * sin(t) for t in T], color=col, alpha=0.12, lw=0)
    ax.plot([c[0] + rr * cos(t) for t in T], [c[1] + rr * sin(t) for t in T], color=col, lw=1.5, ls=(0, (4, 3)))
    ax.plot(*c, "o", color=INK, ms=4)
    ax.text(c[0] + off[0], c[1] + off[1], lab, fontsize=12)
ax.plot([p[0], q[0]], [p[1], q[1]], color=MUTED, lw=1)
ax.text((p[0] + q[0]) / 2 - 0.45, (p[1] + q[1]) / 2 + 0.05, "$d$", color=MUTED, fontsize=12)
ax.text(p[0], p[1] - r - 0.2, r"$B_{d/2}(p)$", color=ACCENT, ha="center", fontsize=12)
ax.text(q[0], q[1] + r + 0.08, r"$B_{d/2}(q)$", color=STATEMENT, ha="center", fontsize=12)
ax.set_xlim(-1.7, 1.8); ax.set_ylim(-1.3, 1.5); ax.set_aspect("equal"); ax.axis("off")

ax = axs[1]
eps1, eps2 = 0.6, 0.35
ax.plot([-1.5, 1.5], [0, 0], color=INK, lw=1.6)
ax.plot(0, 0.32, "o", color=ACCENT, ms=6); ax.text(0, 0.47, "$0$", color=ACCENT, ha="center", fontsize=12)
ax.plot(0, -0.32, "o", color=STATEMENT, ms=6); ax.text(0, -0.62, "$0'$", color=STATEMENT, ha="center", fontsize=12)
ax.plot(0, 0, "o", mfc="white", mec=INK, ms=6, zorder=3)
ax.plot([-eps1, eps1], [0.12, 0.12], color=ACCENT, lw=4, alpha=0.6, solid_capstyle="butt")
ax.plot([-eps2, eps2], [-0.12, -0.12], color=STATEMENT, lw=4, alpha=0.6, solid_capstyle="butt")
ax.text(-1.45, 0.9, "neighbourhoods of $0$ and $0'$\nshare the points near zero", fontsize=11, color=INK)
ax.set_xlim(-1.6, 1.6); ax.set_ylim(-1.0, 1.3); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "hausdorff_separation")
