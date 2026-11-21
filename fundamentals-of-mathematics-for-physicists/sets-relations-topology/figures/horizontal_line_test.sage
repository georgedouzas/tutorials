# The horizontal-line test on [-2 pi, 2 pi]: the line y = 1/2 meets the graph of sin x four times (not injective)
# and the graph of x + (1/2) sin x once (injective, since |sin a - sin b| <= |a - b|).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

x = var("x")
f = x + sin(x) / 2
assert bool(diff(f, x) == 1 + cos(x) / 2)
hits_sin = [float(r) for r in (pi / 6 - 2 * pi, 5 * pi / 6 - 2 * pi, pi / 6, 5 * pi / 6)]
assert all(abs(np.sin(r) - 0.5) < 1e-12 for r in hits_sin)
hit_f = float(find_root(f - 1 / 2, -2, 2))
xs = np.linspace(-2 * np.pi, 2 * np.pi, 600)
fig, axes = plt.subplots(1, 2, figsize=(8, 3.0))
for ax, ys, hits, col, title in ((axes[0], np.sin(xs), hits_sin, STATEMENT, r"$y = \sin x$: four points, not injective"),
                                 (axes[1], xs + np.sin(xs) / 2, [hit_f], ACCENT, r"$y = x + \frac{1}{2}\sin x$: one point, injective")):
    ax.plot(xs, ys, color=col, linewidth=2)
    ax.axhline(0.5, color=INK, linestyle="--", linewidth=0.9)
    ax.plot(hits, [0.5] * len(hits), "o", color=col, markersize=6, zorder=5)
    ax.axhline(0, color=MUTED, linewidth=0.7); ax.axvline(0, color=MUTED, linewidth=0.7)
    ax.set_xticks([-2 * np.pi, -np.pi, 0, np.pi, 2 * np.pi]); ax.set_xticklabels([r"$-2\pi$", r"$-\pi$", "$0$", r"$\pi$", r"$2\pi$"])
    ax.set_title(title, fontsize=10.5)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
axes[0].set_ylim(-1.3, 1.3); axes[1].set_yticks([-6, -3, 0.5, 3, 6]); axes[1].set_yticklabels(["$-6$", "$-3$", r"$\frac{1}{2}$", "$3$", "$6$"])
axes[0].set_yticks([-1, 0.5, 1]); axes[0].set_yticklabels(["$-1$", r"$\frac{1}{2}$", "$1$"])
fig.tight_layout()
save_matplotlib(fig, "horizontal_line_test")
