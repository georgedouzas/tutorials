# Left: the distribution function of a fair die (a staircase with steps 1/6).
# Right: the density e^{-t} and the distribution function 1 - e^{-t} of an exponential variable with rate 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.0, 3.6))
# staircase: F(x) = floor(x)/6 on [0, 6], value at the top of each step (right-continuous)
xs = [-0.5] + list(range(1, 7)) + [7.5]
for k in range(len(xs) - 1):
    a, b = xs[k], xs[k + 1]
    level = min(max(k, 0), 6) / 6.0
    ax.plot([a, b], [level, level], color=ACCENT, lw=2)
for k in range(1, 7):
    ax.plot(k, k / 6.0, "o", color=ACCENT, ms=5)                          # value taken
    ax.plot(k, (k - 1) / 6.0, "o", mfc="white", mec=ACCENT, ms=5)         # left limit
ax.set_xlim(-0.5, 7.5); ax.set_ylim(-0.05, 1.08)
ax.set_xticks(range(0, 8)); ax.set_yticks([0, 1/6, 2/6, 3/6, 4/6, 5/6, 1])
ax.set_yticklabels(["0", "1/6", "2/6", "3/6", "4/6", "5/6", "1"])
ax.set_xlabel(r"$x$"); ax.set_title(r"die: $F_X(x)$", fontsize=11)
ax.grid(color=GRID, lw=0.5)

t = np.linspace(0, 5, 400)
bx.plot(t, 1 - np.exp(-t), color=ACCENT, lw=2, label=r"$F_T(t) = 1 - e^{-t}$")
bx.plot(t, np.exp(-t), color=STATEMENT, lw=2, label=r"$\rho(t) = e^{-t}$")
bx.plot([-1, 0], [0, 0], color=ACCENT, lw=2)
bx.set_xlim(-1, 5); bx.set_ylim(-0.05, 1.08)
bx.set_xlabel(r"$t$"); bx.set_title(r"exponential, $\lambda = 1$", fontsize=11)
bx.legend(loc="center right", frameon=False)
bx.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "rv_distribution_functions")
