# Buffon's needle with length l = 1 on lines a distance d = 1 apart.
# Left: needles thrown on the ruled plane (a fixed seed), crossing ones in red.
# Right: the rectangle of (theta, x), x the distance of the centre to the nearest line; the needle crosses
# when x <= (l/2) sin(theta), the shaded region of area l, a fraction 2l/(pi d) of the rectangle.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

l, d = 1.0, 1.0
rng = np.random.default_rng(int(7))
fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.0, 3.8), gridspec_kw={"width_ratios": [1.1, 1]})
for k in range(5):
    ax.axhline(k * d, color=MUTED, lw=1)
for _ in range(30):
    cx, cy = rng.uniform(0.3, 3.7), rng.uniform(0.2, 3.8)
    th = rng.uniform(0, np.pi)
    dx, dy = 0.5 * l * np.cos(th), 0.5 * l * np.sin(th)
    y0, y1 = cy - dy, cy + dy
    cross = np.floor(y0 / d) != np.floor(y1 / d)
    ax.plot([cx - dx, cx + dx], [y0, y1], color=STATEMENT if cross else ACCENT, lw=1.6)
ax.set_xlim(0, 4); ax.set_ylim(-0.2, 4.2); ax.set_aspect("equal"); ax.axis("off")
t = np.linspace(0, np.pi, 300)
bx.fill_between(t, 0, 0.5 * l * np.sin(t), color=STATEMENT, alpha=0.25)
bx.plot(t, 0.5 * l * np.sin(t), color=STATEMENT, lw=1.8)
bx.plot([0, np.pi, np.pi, 0, 0], [0, 0, d / 2, d / 2, 0], color=INK, lw=1)
bx.text(np.pi / 2, 0.17, "crossing", ha="center", fontsize=10)
bx.text(np.pi / 2, 0.545, r"$x = \frac{l}{2}\sin\theta$", ha="center", fontsize=11, color=STATEMENT)
bx.set_xticks([0, np.pi / 2, np.pi]); bx.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$"])
bx.set_yticks([0, d / 2]); bx.set_yticklabels([r"$0$", r"$d/2$"])
bx.set_xlabel(r"angle $\theta$"); bx.set_ylabel(r"distance $x$")
bx.set_ylim(0, 0.66)
for s in ["top", "right"]:
    bx.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "buffon_needle")
