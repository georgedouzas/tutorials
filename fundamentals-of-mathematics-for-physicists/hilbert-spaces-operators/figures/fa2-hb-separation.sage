# Left: the open unit disc A and the closed square B = [3/2, 5/2]^2 in R^2, separated by the line x_1 + x_2 = 2.
# Right: the point x_0 = 0 outside the closed disc B of radius 1 about (3, 1), and the line phi = c with
# phi(x) = (3x_1 + x_2)/sqrt(10) and c = (sqrt(10) - 1)/2, halfway between x_0 and B.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Circle, Rectangle

th = np.linspace(0, 2 * np.pi, 400)
# checks: sup of x1 + x2 on the disc is sqrt(2) < 2 <= 3 = min on the square
assert np.sqrt(2) < 2 <= 3
c = (np.sqrt(10) - 1) / 2
assert 0 < c < np.sqrt(10) - 1   # phi(x_0) = 0 < c < min_B phi = sqrt(10) - 1

fig, (a, b) = plt.subplots(1, 2, figsize=(9, 4.2))
a.add_patch(Circle((0, 0), 1, facecolor=ACCENT, alpha=0.18, edgecolor=ACCENT, ls="--", lw=1.2))
a.add_patch(Rectangle((1.5, 1.5), 1, 1, facecolor=STATEMENT, alpha=0.18, edgecolor=STATEMENT, lw=1.4))
u = np.linspace(-1.6, 3.2, 10)
a.plot(u, 2 - u, color=INK, lw=1.2)
a.text(-0.25, -0.1, "$A$", fontsize=13, color=ACCENT)
a.text(1.9, 1.9, "$B$", fontsize=13, color=STATEMENT)
a.text(0.25, 2.35, r"$x_1 + x_2 = 2$", fontsize=10, color=INK)
a.set_xlim(-1.6, 3.2); a.set_ylim(-1.6, 3.2)
b.add_patch(Circle((3, 1), 1, facecolor=STATEMENT, alpha=0.18, edgecolor=STATEMENT, lw=1.4))
b.plot([0], [0], "o", color=ACCENT, ms=5)
b.text(-0.55, -0.35, r"$\mathbf{x}_0$", fontsize=12, color=ACCENT)
b.text(2.85, 0.85, "$B$", fontsize=13, color=STATEMENT)
n = np.array([3, 1]) / np.sqrt(10)
p = c * n
d = np.array([-n[1], n[0]])
s = np.linspace(-2.6, 2.4, 10)
b.plot(p[0] + s * d[0], p[1] + s * d[1], color=INK, lw=1.2)
q = (np.sqrt(10) - 1) * n
b.plot([0, q[0]], [0, q[1]], color=MUTED, lw=0.9, ls=":")
b.text(0.55, 2.6, r"$\varphi(\mathbf{x}) = c$", fontsize=10, color=INK)
b.set_xlim(-1.0, 4.4); b.set_ylim(-1.6, 3.2)
for ax in (a, b):
    ax.set_aspect("equal")
    ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-hb-separation")
