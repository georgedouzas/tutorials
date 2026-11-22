# Extremals y = alpha sin x of the functional int (y'^2 - y^2) dx through the origin, for alpha in [-1, 1].
# They all meet again at the conjugate point (pi, 0).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(0, 1.25 * np.pi, 500)
fig, ax = plt.subplots(figsize=(5.8, 3.6))
alphas = [-1.0, -0.6, -0.25, 0.25, 0.6, 1.0]
for a in alphas:
    ax.plot(xs, a * np.sin(xs), color=EXAMPLE if a > 0 else EXERCISE, lw=1.3)
ax.plot(xs, 0 * xs, color=ACCENT, lw=2.2, label=r"$y = 0$")
ax.plot([0], [0], "o", color=INK, ms=5)
ax.plot([np.pi], [0], "o", color=ACCENT, ms=7)
ax.annotate(r"conjugate point $(\pi, 0)$", xy=(np.pi, 0), xytext=(np.pi, 1.12),
            fontsize=10, color=INK, ha="center", arrowprops=dict(arrowstyle="->", color=INK, lw=0.8))
ax.text(np.pi / 2, 1.1, r"$y = \alpha\sin x$", fontsize=10, color=INK, ha="center")
ax.set_xticks([0, np.pi / 2, np.pi]); ax.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$"])
ax.set_xlim(-0.1, 1.25 * np.pi); ax.set_ylim(-1.15, 1.32)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "conjugate_points")
