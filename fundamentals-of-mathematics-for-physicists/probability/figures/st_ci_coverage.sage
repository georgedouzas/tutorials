# Fifty 95% intervals xbar +- 1.96 sigma/sqrt(n) from seeded samples of size n = 20 from N(0, 1);
# the intervals that miss the true mean 0 are drawn in red.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(8))
n, m = 20, 50
xbar = rng.normal(0, 1, size=(m, n)).mean(axis=1)
half = 1.96 / np.sqrt(n)
miss = np.abs(xbar) > half
fig, ax = plt.subplots(figsize=(7.5, 3.6))
for j in range(m):
    col = STATEMENT if miss[j] else ACCENT
    ax.plot([j + 1, j + 1], [xbar[j] - half, xbar[j] + half], color=col, lw=1.6)
    ax.plot(j + 1, xbar[j], "o", color=col, ms=3)
ax.axhline(0, color=INK, lw=1.0)
ax.set_xlabel("sample"); ax.set_ylabel(r"$\bar x \pm 1.96\,\sigma/\sqrt{n}$")
ax.set_xlim(0, m + 1)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
print("misses:", int(miss.sum()))
save_matplotlib(fig, "st_ci_coverage")
