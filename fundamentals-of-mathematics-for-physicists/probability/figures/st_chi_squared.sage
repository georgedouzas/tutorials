# Densities of the chi-squared distribution with k = 1, 2, 3, 5, 9 degrees of freedom.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from math import gamma

x = np.linspace(0.005, 20, 1000)
fig, ax = plt.subplots(figsize=(6.5, 3.6))
for k, col in zip([1, 2, 3, 5, 9], SERIES):
    g = x ** (k / 2 - 1) * np.exp(-x / 2) / (2 ** (k / 2) * gamma(k / 2))
    ax.plot(x, g, color=col, lw=1.8, label=r"$k = %d$" % k)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$g_k(x)$")
ax.set_xlim(0, 20); ax.set_ylim(0, 0.55)
ax.legend(frameon=False, loc="upper right", fontsize=9)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "st_chi_squared")
