# Nearest points of the half-plane C = {x_1 + x_2 <= 0} to x_0 = (1, 1/2) in the norms |.|_2, |.|_inf, |.|_1:
# the ball of radius dist(x_0, C) about x_0 touches C at (1/4, -1/4) for the first two norms
# (radii 3/(2 sqrt 2) and 3/4) and along the segment from (-1/2, 1/2) to (1, -1) for |.|_1 (radius 3/2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Polygon, Circle

x0 = np.array([1.0, 0.5])
d2, dinf, d1 = 1.5 / np.sqrt(2), 0.75, 1.5
# checks: distances to the line x1 + x2 = 0 are |x1 + x2| / dual norm of (1, 1)
assert abs(d2 - 1.5 / np.linalg.norm([1, 1], 2)) < 1e-15
assert abs(dinf - 1.5 / np.linalg.norm([1, 1], 1)) < 1e-15
assert abs(d1 - 1.5 / np.linalg.norm([1, 1], np.inf)) < 1e-15

fig, axes = plt.subplots(1, 3, figsize=(12, 4))
titles = [r"$\|\cdot\|_2$", r"$\|\cdot\|_\infty$", r"$\|\cdot\|_1$"]
for ax, ttl in zip(axes, titles):
    ax.add_patch(Polygon([[-3, 3], [3, -3], [-3, -3]], closed=True, facecolor=MUTED, alpha=0.15, lw=0))
    s = np.linspace(-3, 3, 10)
    ax.plot(s, -s, color=INK, lw=1)
    ax.plot(*x0, "o", color=ACCENT, ms=5)
    ax.text(x0[0] + 0.08, x0[1] + 0.1, r"$\mathbf{x}_0$", color=ACCENT, fontsize=12)
    ax.text(-1.0, -1.25, "$C$", fontsize=13, color=INK)
    ax.set_title(ttl, fontsize=12)
    ax.set_xlim(-1.4, 2.8); ax.set_ylim(-1.6, 2.3); ax.set_aspect("equal")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
axes[0].add_patch(Circle(x0, d2, fill=False, edgecolor=ACCENT, lw=1.3))
axes[1].add_patch(Polygon([x0 + dinf * np.array(v) for v in [(1, 1), (-1, 1), (-1, -1), (1, -1)]], closed=True, fill=False, edgecolor=ACCENT, lw=1.3))
axes[2].add_patch(Polygon([x0 + d1 * np.array(v) for v in [(1, 0), (0, 1), (-1, 0), (0, -1)]], closed=True, fill=False, edgecolor=ACCENT, lw=1.3))
for ax in axes[:2]:
    ax.plot(0.25, -0.25, "o", color=STATEMENT, ms=5)
axes[2].plot([-0.5, 1.0], [0.5, -1.0], color=STATEMENT, lw=3)
fig.tight_layout()
save_matplotlib(fig, "fa2-nearest-point")
