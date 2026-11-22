# The two-to-one map from the spin rotations U_3(theta) = diag(exp(-i theta/2), exp(i theta/2)) to the rotations by theta
# about the third axis. Left: the entry exp(-i theta/2) for theta in [0, 4 pi), one turn of the circle; right: the
# rotation angle theta on the circle, covered twice. Points theta and theta + 2 pi (the matrices U and -U) get the same
# colour on the left and land on the same point on the right.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle
import math

thetas = [2 * math.pi * k / 6 for k in range(6)]          # 6 rotation angles in [0, 2 pi)
cols = [SERIES[k] for k in range(6)]
# check: U_3(theta + 2 pi) = -U_3(theta) and both give the same rotation angle
for th in thetas:
    a, b = complex(math.cos(-th / 2), math.sin(-th / 2)), complex(math.cos(-(th + 2 * math.pi) / 2), math.sin(-(th + 2 * math.pi) / 2))
    assert abs(a + b) < 1e-12
fig, axs = plt.subplots(1, 2, figsize=(7.2, 3.6))
for ax, title in zip(axs, (r"$e^{-i\theta/2}$, $0 \leq \theta < 4\pi$", r"rotation angle $\theta$")):
    ax.add_patch(Circle((0, 0), 1, fill=False, ec=MUTED, lw=1.2))
    ax.set_xlim(-1.5, 1.5); ax.set_ylim(-1.5, 1.55); ax.set_aspect("equal"); ax.axis("off")
    ax.text(0, 1.38, title, ha="center", fontsize=12, color=INK)
for th, c in zip(thetas, cols):
    for shift, mk in ((0, "o"), (2 * math.pi, "s")):
        phi = -(th + shift) / 2
        axs[0].plot(math.cos(phi), math.sin(phi), mk, color=c, ms=8)
    axs[1].plot(math.cos(th), math.sin(th), "o", color=c, ms=8)
axs[0].text(0, -0.18, r"$\mathbf{U}$ (circles), $-\mathbf{U}$ (squares)", ha="center", fontsize=10, color=INK)
axs[0].text(1.12, 0, r"$\mathbf{I}$", ha="left", va="center", fontsize=11, color=INK)
axs[0].text(-1.12, 0, r"$-\mathbf{I}$", ha="right", va="center", fontsize=11, color=INK)
axs[1].text(1.12, 0, r"$0$", ha="left", va="center", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "double_cover_circle")
