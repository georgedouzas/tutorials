# The double cover SU(2) -> SO(3) along the rotations about the Z-axis. Left: the entry e^{-it/2} of
# U_t = diag(e^{-it/2}, e^{it/2}) for 0 <= t < 4 pi; right: the rotation angle t of L(U_t), covered twice. U_t (circles) and
# U_{t + 2 pi} = -U_t (squares) have the same colour and the same image.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle
import math

ts = [2 * math.pi * k / 6 for k in range(6)]
for t in ts:   # check: U_{t+2pi} = -U_t, and both rotate by the same angle t mod 2 pi
    a = complex(math.cos(-t / 2), math.sin(-t / 2)); b = complex(math.cos(-(t + 2 * math.pi) / 2), math.sin(-(t + 2 * math.pi) / 2))
    assert abs(a + b) < 1e-12
fig, axs = plt.subplots(1, 2, figsize=(7.2, 3.6))
for ax, title in zip(axs, (r"$e^{-it/2}$, $0 \leq t < 4\pi$", r"rotation angle $t$")):
    ax.add_patch(Circle((0, 0), 1, fill=False, ec=MUTED, lw=1.2))
    ax.set_xlim(-1.5, 1.5); ax.set_ylim(-1.5, 1.55); ax.set_aspect("equal"); ax.axis("off")
    ax.text(0, 1.38, title, ha="center", fontsize=12, color=INK)
for k, t in enumerate(ts):
    c = SERIES[k]
    for shift, mk in ((0, "o"), (2 * math.pi, "s")):
        p = -(t + shift) / 2
        axs[0].plot(math.cos(p), math.sin(p), mk, color=c, ms=8)
    axs[1].plot(math.cos(t), math.sin(t), "o", color=c, ms=8)
axs[0].text(0, -0.18, r"$\mathbf{U}_t$ (circles), $-\mathbf{U}_t$ (squares)", ha="center", fontsize=10, color=INK)
axs[0].text(1.12, 0, r"$\mathbf{I}$", ha="left", va="center", fontsize=11, color=INK)
axs[0].text(-1.12, 0, r"$-\mathbf{I}$", ha="right", va="center", fontsize=11, color=INK)
axs[1].text(1.12, 0, r"$0$", ha="left", va="center", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "double_cover")
