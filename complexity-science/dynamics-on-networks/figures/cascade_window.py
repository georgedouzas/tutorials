"""Share of single seeds that start a global threshold cascade on random graphs, against the mean degree."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from scipy.stats import poisson  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.networks import RandomGraphEnsemblesSystem  # noqa: E402
from skcomplex.systems.social.spreading import WattsCascadesSystem  # noqa: E402

zs = np.arange(0.5, 9.01, 0.5)
share = []
for z in zs:
    G = simulate(RandomGraphEnsemblesSystem(1000, mean_degree=float(z), steps=10), until=10, random_state=1).get_network(-1).get_graph()
    runs = [float(np.mean(simulate(WattsCascadesSystem(G, threshold=0.18, random_state=s), until=50, random_state=s).get_agents("nodes", -1).values["active"])) for s in range(6)]
    share.append(np.mean(np.array(runs) > 0.5))
k = np.arange(200)
grid = np.linspace(0.5, 9, 400)
ok = [np.sum(k * (k - 1) * poisson.pmf(k, z) * ((k >= 1) & (k <= 1 / 0.18))) > z for z in grid]
fig, ax = plt.subplots(figsize=(6.2, 3.4))
ax.fill_between(grid, 0, 1, where=ok, color=EXAMPLE, alpha=0.15, label="criterion holds")
ax.plot(zs, share, "o-", ms=4, color=ACCENT, label="global cascades")
ax.set_xlabel(r"mean degree $z$")
ax.set_ylabel("share of seeds")
ax.set_ylim(0, 1.02)
ax.legend(frameon=False, loc="upper right")
fig.tight_layout()
save_figure(fig, "cascade_window")
