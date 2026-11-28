"""A well-mixed SIR epidemic with R0 = 3 started from one infected individual in 10 000 (Datseris and Parlitz Fig. 10.8)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.biology.epidemiology import SIRSystem  # noqa: E402

N = 10000
tr = simulate(SIRSystem(N - 1, 1, 0, beta=0.3 / N, gamma=0.1), until=150, dt=0.5)
t = np.asarray(tr.times)
fig, ax = plt.subplots(figsize=(6.2, 3.4))
for name, color, label in (("S.x", ACCENT, "susceptible"), ("I.x", STATEMENT, "infected"), ("R.x", EXAMPLE, "recovered")):
    ax.plot(t, np.asarray(tr.get_values(name)).ravel() / N, color=color, lw=1.6, label=label)
ax.axhline(1 / 3, color=MUTED, lw=0.8, ls="--")
ax.set_xlabel(r"time $t$")
ax.set_ylabel("share of the population")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "sir_curves")
