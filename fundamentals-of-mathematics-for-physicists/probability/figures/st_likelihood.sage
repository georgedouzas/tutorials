# The likelihood L(p)/L(p_hat) of the head probability for seeded samples of n = 10, 100, 1000 tosses
# of a coin with p = 0.3, each scaled to maximum 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(5))
tosses = rng.random(1000) < 0.3
p = np.linspace(0.001, 0.999, 2000)
fig, ax = plt.subplots(figsize=(7.0, 3.8))
for n, col in zip([10, 100, 1000], [ACCENT, EXAMPLE, STATEMENT]):
    k = int(tosses[:n].sum())
    ph = k / n
    ll = k * np.log(p) + (n - k) * np.log(1 - p)
    ax.plot(p, np.exp(ll - ll.max()), color=col, lw=1.8, label=r"$n = %d$, $k = %d$, $\hat p = %.3f$" % (n, k, ph))
    print("n = %d: k = %d, p_hat = %.3f, width = %.4f" % (n, k, ph, np.sqrt(ph * (1 - ph) / n)))
ax.axvline(0.3, color=MUTED, ls="--", lw=1.0)
ax.set_xlabel(r"$p$"); ax.set_ylabel(r"$L(p)/L(\hat p)$")
ax.set_xlim(0, 0.8); ax.set_ylim(0, 1.05)
ax.legend(frameon=False, loc="upper right", fontsize=9)
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "st_likelihood")
