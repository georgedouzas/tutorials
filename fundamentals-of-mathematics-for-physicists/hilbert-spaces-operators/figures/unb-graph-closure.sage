# Smooth functions vanishing at 0 and 1 converging to the tent min(x, 1 - x), with derivatives converging in mean square:
# u_eps(x) = sqrt(1/4 + eps^2) - sqrt((x - 1/2)^2 + eps^2) for eps = 0.15, 0.06, 0.02.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(0, 1, 801)
fig, ax = plt.subplots(figsize=(6.2, 3.6))
for eps, col in [(0.15, EXERCISE), (0.06, EXAMPLE), (0.02, STATEMENT)]:
    u = np.sqrt(0.25 + eps ** 2) - np.sqrt((xs - 0.5) ** 2 + eps ** 2)
    ax.plot(xs, u, color=col, lw=1.2, label=r"$u_n$, $\varepsilon = %.2f$" % eps)
ax.plot(xs, np.minimum(xs, 1 - xs), color=ACCENT, lw=2.4, label=r"$u = \min(x, 1 - x)$")
ax.set_xlabel(r"$x$"); ax.set_ylim(-0.02, 0.56)
ax.legend(loc="upper right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-graph-closure")
