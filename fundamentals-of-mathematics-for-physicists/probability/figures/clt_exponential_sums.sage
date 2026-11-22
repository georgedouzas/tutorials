# Histograms of 20000 seeded samples of the standardised sum (S_n - n)/sqrt(n) of n exponential variables with
# rate 1, for n = 1, 4, 16, 64, against the standard Gaussian density.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(7))
fig, axes = plt.subplots(1, 4, figsize=(11, 3.0), sharey=True)
zz = np.linspace(-3.5, 4.5, 400)
for ax, n in zip(axes, [1, 4, 16, 64]):
    s = rng.exponential(1.0, size=(int(20000), int(n))).sum(axis=1)
    z = (s - n) / np.sqrt(n)
    ax.hist(z, bins=np.linspace(-3.5, 4.5, 49), density=True, color=ACCENT, alpha=0.8)
    ax.plot(zz, np.exp(-zz**2 / 2) / np.sqrt(2 * np.pi), color=STATEMENT, lw=1.8)
    ax.set_title(r"$n = %d$" % n, fontsize=11)
    ax.set_xlabel(r"$z$")
    ax.set_xlim(-3.5, 4.5); ax.set_ylim(0, 1.05)
    ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "clt_exponential_sums")
