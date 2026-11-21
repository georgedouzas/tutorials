# Continuity through preimages: the preimage of the open band 1/2 < y < 2 under cos is a union of open intervals
# (-pi/3 + 2 pi k, pi/3 + 2 pi k); under the step function it is [0, oo), which contains 0 but no interval around it.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos

fig, axs = plt.subplots(1, 2, figsize=(9.2, 3.4))
X = [-7 + 14 * k / 600 for k in range(601)]
for ax in axs:
    ax.axhspan(0.5, 2, color=EXAMPLE, alpha=0.12, lw=0)
    ax.axhline(0, color=MUTED, lw=0.8)
    ax.set_xlim(-7, 7); ax.set_ylim(-1.3, 2.2)
    ax.spines[["top", "right"]].set_visible(False)
    ax.text(6.9, 1.75, r"$(\frac{1}{2}, 2)$", color=EXAMPLE, ha="right", fontsize=11)
ax = axs[0]
ax.plot(X, [cos(x) for x in X], color=ACCENT, lw=1.6)
for k in (-1, 0, 1):
    lo, hi = -pi / 3 + 2 * pi * k, pi / 3 + 2 * pi * k
    lo, hi = max(lo, -7), min(hi, 7)
    ax.plot([lo, hi], [0, 0], color=STATEMENT, lw=4, solid_capstyle="butt")
ax.set_xticks([-2 * pi, -pi / 3, pi / 3, 2 * pi], [r"$-2\pi$", r"$-\frac{\pi}{3}$", r"$\frac{\pi}{3}$", r"$2\pi$"])
ax.set_title(r"$\cos$: preimage open", fontsize=11, color=INK)
ax = axs[1]
ax.plot([-7, 0], [0.02, 0.02], color=ACCENT, lw=1.6); ax.plot([0, 7], [1, 1], color=ACCENT, lw=1.6)
ax.plot(0, 1, "o", color=ACCENT, ms=6); ax.plot(0, 0.02, "o", mfc="white", mec=ACCENT, ms=6)
ax.plot([0, 7], [-0.5, -0.5], color=STATEMENT, lw=4, solid_capstyle="butt")
ax.plot(0, -0.5, "o", color=STATEMENT, ms=7)
ax.text(0.3, -0.95, r"$[0, \infty)$", color=STATEMENT, fontsize=11)
ax.set_xticks([0], ["$0$"])
ax.set_title("step: preimage not open", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "preimage_step_cos")
