# Tail probabilities P(|X - mu| >= k sigma) of a uniform and an exponential variable, against Chebyshev's bound 1/k^2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

k = np.linspace(0.05, 4, 800)
unif = np.clip(1 - k / np.sqrt(3), 0, None)
expo = np.where(k >= 1, np.exp(-1 - k), np.exp(-1 - k) + 1 - np.exp(-(1 - k)))
cheb = np.minimum(1 / k**2, 1.0)
fig, ax = plt.subplots(figsize=(6.2, 3.8))
ax.plot(k, cheb, color=MUTED, lw=2, ls="--", label=r"Chebyshev $\min(1, 1/k^2)$")
ax.plot(k, unif, color=ACCENT, lw=2, label="uniform")
ax.plot(k, expo, color=STATEMENT, lw=2, label="exponential")
ax.set_xlim(0, 4); ax.set_ylim(-0.02, 1.05)
ax.set_xlabel(r"$k$"); ax.set_ylabel(r"$\mathbb{P}(|X - \mu| \geq k\sigma)$")
ax.legend(frameon=False, loc="upper right")
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "rv_chebyshev")
