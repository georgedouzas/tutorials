"""Complementary distributions of power-law, lognormal and exponential samples above 15, with a power-law fit (Clauset et al. Fig. 4.1a)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import distribution, fit_law  # noqa: E402

rng = np.random.default_rng(3)
power = 15 * (1 - rng.random(1000)) ** (-1 / 1.5)
pool = rng.lognormal(0.3, 2.0, 10**6)
lognormal = pool[pool > 15][:1000]
exponential = 15 + rng.exponential(8.0, 1000)
fit = fit_law(power, law="power", minimum=15.0, bootstrap=0, compare_with=())

fig, ax = plt.subplots(figsize=(5.6, 4))
for sample, colour, label in ((power, ACCENT, r"power law, $\alpha = 2.5$"), (lognormal, STATEMENT, r"lognormal, $\sigma = 2$"),
                              (exponential, EXAMPLE, "exponential")):
    result = distribution(sample, kind="ccdf")
    ax.loglog(result.support, result.survival, color=colour, lw=1.4, label=label)
x = np.logspace(np.log10(15), 4, 50)
ax.loglog(x, (x / 15) ** (1 - fit.exponent), color=MUTED, lw=1, ls="--", label=rf"fit, $\hat\alpha = {fit.exponent:.2f}$")
ax.set_xlim(12, 2e4)
ax.set_ylim(5e-4, 1.5)
ax.set_xlabel(r"$x$")
ax.set_ylabel(r"$\bar F(x)$")
ax.legend(frameon=False, fontsize=9, loc="lower left")
fig.tight_layout()
save_figure(fig, "power_law_ccdf")
