"""Complementary distribution functions of Pareto, lognormal and exponential samples (Clauset et al. Sec. 2)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import distribution  # noqa: E402

rng = np.random.default_rng(3)
pareto = (1 - rng.random(10**5)) ** (-1 / 1.5)
median = np.median(pareto)
lognormal = np.exp(rng.normal(np.log(median), 1.0, 10**5))
exponential = rng.exponential(median / np.log(2), 10**5)

fig, ax = plt.subplots(figsize=(5.6, 4))
for sample, colour, label in ((pareto, ACCENT, r"Pareto, $\alpha = 2.5$"), (lognormal, STATEMENT, "lognormal"),
                              (exponential, EXAMPLE, "exponential")):
    result = distribution(sample, kind="ccdf")
    ax.loglog(result.support, result.survival, color=colour, lw=1.4, label=label)
x = np.logspace(0, 3, 50)
ax.loglog(x, x ** -1.5, color=MUTED, lw=1, ls="--", label=r"slope $1 - \alpha = -1.5$")
ax.set_xlim(0.5, 2e3)
ax.set_ylim(1e-5, 1.5)
ax.set_xlabel(r"$x$")
ax.set_ylabel(r"$\bar F(x)$")
ax.legend(frameon=False, fontsize=9, loc="lower left")
fig.tight_layout()
save_figure(fig, "heavy_tail_ccdf")
