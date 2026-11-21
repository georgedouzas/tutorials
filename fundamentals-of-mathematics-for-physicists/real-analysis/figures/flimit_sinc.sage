# sin x / x on [-10, 10], undefined at 0 (open circle at (0, 1)), with the band 1 +- eps for eps = 0.1 and the
# window 0 < |x| < delta = sqrt(2 eps) inside which the graph stays in the band (from 0 < 1 - sin x/x < x^2/2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

eps = 0.1
delta = float(sqrt(2 * eps))
xs = [-10 + k * 0.01 for k in range(2001)]
xs = [t for t in xs if abs(t) > 1e-9]
assert all(0 < 1 - sin(t) / t < eps for t in [delta * k / 200 for k in range(1, 200)])
fig, ax = plt.subplots(figsize=(6.6, 3.6))
ax.axhspan(1 - eps, 1 + eps, color=EXAMPLE, alpha=0.15, lw=0)
ax.axvspan(-delta, delta, color=ACCENT, alpha=0.12, lw=0)
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(xs, [float(sin(t) / t) for t in xs], color=INK, lw=1.4)
ax.plot([0], [1], "o", ms=6, mfc="white", mec=INK, zorder=5)
ax.text(1.0, 1.15, r"$1 \pm \varepsilon$", color=EXAMPLE, fontsize=11)
ax.text(-0.42, -0.42, r"$|x| < \delta$", color=ACCENT, fontsize=11, ha="center")
ax.text(5.6, 0.32, r"$\frac{\sin x}{x}$", color=INK, fontsize=14)
ax.set_xlim(-10, 10); ax.set_ylim(-0.5, 1.3); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "flimit_sinc")
