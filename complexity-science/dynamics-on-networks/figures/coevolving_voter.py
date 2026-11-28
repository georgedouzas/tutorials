"""Share of the minority opinion at the end of the coevolving voter model against the rewiring probability."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.social.opinion_dynamics import CoevolvingVoterSystem  # noqa: E402

ps = np.linspace(0.0, 1.0, 11)
means, spreads = [], []
for p in ps:
    m = []
    for seed in range(4):
        s = np.asarray(simulate(CoevolvingVoterSystem(200, rewiring=float(p), random_state=seed), until=800, random_state=seed).get_values("voters.opinion"))[-1]
        m.append(min(s.mean(), 1 - s.mean()))
    means.append(np.mean(m))
    spreads.append(np.std(m))
fig, ax = plt.subplots(figsize=(6.2, 3.4))
ax.errorbar(ps, means, yerr=spreads, fmt="o-", ms=4, color=ACCENT, capsize=2)
ax.axvline(0.38, color=MUTED, lw=0.8, ls="--")
ax.set_xlabel(r"rewiring probability $p$")
ax.set_ylabel("final minority share")
fig.tight_layout()
save_figure(fig, "coevolving_voter")
