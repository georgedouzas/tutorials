"""Number of nines of n independent replicas in parallel, -log10(1 - A) with A = 1 - (1 - a)^n, for three component
availabilities a, and of n components in series, -log10(1 - a^n)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

n = np.arange(1, 7)
fig, ax = plt.subplots(figsize=(5.2, 4.0))
for a, colour in ((0.9, STATEMENT), (0.99, ACCENT), (0.999, EXAMPLE)):
    parallel = -np.log10((1 - a) ** n)
    series = -np.log10(1 - a**n)
    ax.plot(n, parallel, "o-", color=colour, lw=1.8, ms=4, label=rf"$a = {a}$, in parallel")
    ax.plot(n, series, "s--", color=colour, lw=1.2, ms=3.5, label=rf"$a = {a}$, in series")
ax.set_xlabel(r"number of components $n$")
ax.set_ylabel(r"nines, $-\log_{10}(1 - A)$")
ax.set_xticks(n)
ax.set_ylim(0, 18.5)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, fontsize=8.5, loc="upper left")
save_figure(fig, "availability_replicas")
