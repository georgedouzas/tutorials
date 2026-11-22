# The exponential map of U(1): the tangent line i R at 1 and its image e^{it} on the unit circle; t = 0, pi/2, pi, 3pi/2, 2pi marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
fig, ax = plt.subplots(figsize=(4.2, 4.2))
th = np.linspace(0, 2 * np.pi, 300)
ax.plot(np.cos(th), np.sin(th), color=ACCENT, lw=2)
ax.plot([1, 1], [-1.6, 2 * np.pi * 0.3 + 0.2], color=MUTED, lw=1.2, ls="--")
marks = [(0, r"$0$"), (np.pi / 2, r"$\pi/2$"), (np.pi, r"$\pi$"), (3 * np.pi / 2, r"$3\pi/2$")]
for k, (t, lab) in enumerate(marks):
    c = SERIES[k + 1]
    ax.plot(1, 0.3 * t, "o", color=c, ms=6)               # point i t on the tangent line (scaled)
    ax.plot(np.cos(t), np.sin(t), "o", color=c, ms=7)
    ax.text(1.08, 0.3 * t, r"$i$" + lab if t else r"$0$", va="center", fontsize=10, color=INK)
ax.text(1.08, 0.3 * 2 * np.pi, r"$2\pi i$", va="center", fontsize=10, color=INK)
ax.plot(1, 0.3 * 2 * np.pi, "o", color=SERIES[1], ms=6, mfc="white")
ax.text(-0.2, 0.0, r"$U(1)$", fontsize=11, color=ACCENT)
ax.text(1.05, -1.45, r"$\mathfrak{u}(1) = i\mathbb{R}$", fontsize=11, color=MUTED)
ax.set_xlim(-1.4, 2.0); ax.set_ylim(-1.6, 2.2); ax.set_aspect("equal"); ax.axis("off")
assert abs(np.exp(2j * np.pi) - 1) < 1e-12
save_matplotlib(fig, "exp_circle")
