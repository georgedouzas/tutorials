# Left: f_n(x) = sin(n^2 x)/n on [0, pi] for n = 1, 2, 4. Right: |f_n|_inf = 1/n and |f_n'|_inf = n on log axes.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, np.pi, 6001)
fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
for n, col in zip((1, 2, 4), (ACCENT, EXAMPLE, STATEMENT)):
    a.plot(x, np.sin(n**2 * x) / n, color=col, lw=1.1, label=f"$n = {n}$")
a.axhline(0, color=GRID, lw=0.6)
a.set_xlabel("$x$"); a.set_ylabel("$f_n(x)$")
a.set_xticks([0, np.pi / 2, np.pi]); a.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$"])
a.legend(fontsize=9, frameon=False, loc="lower left", ncol=3)
a.set_ylim(-1.35, 1.2)
n = np.arange(1, 33)
b.loglog(n, 1.0 / n, "o-", color=ACCENT, ms=3, lw=1.0, label=r"$\|f_n\|_\infty = 1/n$")
b.loglog(n, n, "s-", color=STATEMENT, ms=3, lw=1.0, label=r"$\|f_n'\|_\infty = n$")
b.set_xlabel("$n$")
b.legend(fontsize=9, frameon=False, loc="lower left")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-unbounded-derivative")
