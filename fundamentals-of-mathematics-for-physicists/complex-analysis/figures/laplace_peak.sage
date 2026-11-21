# Laplace's method for Stirling's formula: the integrand exp(lambda (ln s - s + 1)) of Gamma(lambda + 1) =
# lambda^(lambda + 1) e^(-lambda) int_0^oo exp(lambda (ln s - s + 1)) ds on [0, 3.5] for lambda = 1, 4, 16, 64, with the
# Gaussian exp(-lambda (s - 1)^2 / 2) of the same height and curvature for lambda = 64 (dotted).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

s = np.linspace(1e-4, 3.5, 900)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.axhline(0, color=GRID, lw=0.7)
lams = [1, 4, 16, 64]
cols = [MUTED, EXERCISE, EXAMPLE, ACCENT]
for lam, col in zip(lams, cols):
    ax.plot(s, np.exp(lam * (np.log(s) - s + 1)), color=col, lw=1.5, label=r"$\lambda = %d$" % lam)
ax.plot(s, np.exp(-64 * (s - 1) ** 2 / 2), color=STATEMENT, lw=1.2, ls=(0, (1.5, 1.5)),
        label=r"$e^{-64(s - 1)^2/2}$")
ax.legend(loc="upper right", frameon=False, fontsize=10)
ax.set_xlim(0, 3.5); ax.set_ylim(-0.03, 1.08)
ax.set_xlabel(r"$s$")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplace_peak")
