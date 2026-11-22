# Variations of a curve with fixed ends: y(x) = x^2 on [0, 1] and y + eps*eta with eta(x) = sin(pi x),
# eps = -0.3, -0.15, 0.15, 0.3. All curves pass through (0, 0) and (1, 1).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = np.linspace(0, 1, 400)
y0 = xs**2
eta = np.sin(np.pi * xs)
fig, ax = plt.subplots(figsize=(5.6, 3.8))
ax.plot(xs, y0, color=ACCENT, lw=2.2, label=r"$y = x^2$")
for eps, col, ls in zip([0.3, 0.15, -0.15, -0.3], [EXERCISE, EXAMPLE, EXAMPLE, EXERCISE],
                        [(0, (4, 2)), (0, (4, 2)), (0, (1.5, 1.5)), (0, (1.5, 1.5))]):
    ax.plot(xs, y0 + eps * eta, color=col, lw=1.3, ls=ls, label=r"$y + \varepsilon\eta$, $\varepsilon = %+.2f$" % eps)
ax.legend(loc="lower right", frameon=False, fontsize=10)
ax.plot([0, 1], [0, 1], "o", color=INK, ms=4)
ax.set_xlim(-0.05, 1.45); ax.set_ylim(-0.25, 1.15)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "varied_curves")
