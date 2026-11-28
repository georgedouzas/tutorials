"""Complementary cumulative degree distributions of three network models of mean degree 4, on log-log axes."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import distribution, network_measures  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.networks import BarabasiAlbertSystem, RandomGraphEnsemblesSystem  # noqa: E402

graphs = {
    "Barabási-Albert": (simulate(BarabasiAlbertSystem(5000, random_state=1), until=4997, random_state=1).get_network(-1).get_graph(), ACCENT),
    "Erdős-Rényi": (simulate(RandomGraphEnsemblesSystem(5000, mean_degree=4.0, steps=10), until=10, random_state=1).get_network(-1).get_graph(), STATEMENT),
    "Watts-Strogatz": (simulate(RandomGraphEnsemblesSystem(5000, ensemble="watts_strogatz", mean_degree=4, rewiring=0.2, steps=1), until=1, random_state=1).get_network(-1).get_graph(), EXAMPLE),
}
fig, ax = plt.subplots(figsize=(6.2, 3.8))
for name, (G, color) in graphs.items():
    k = network_measures(G, kind="degrees").degrees[0].astype(float)
    d = distribution(k[k > 0], kind="ccdf")
    ax.loglog(d.support, d.survival, "o", ms=3, color=color, label=name)
k = np.logspace(np.log10(2), 2.3, 50)
ax.loglog(k, 6 / (k * (k + 1)), color=INK, lw=1, label=r"$6/(k(k+1))$")
ax.set_xlabel(r"degree $k$")
ax.set_ylabel(r"$P(K \geq k)$")
ax.set_ylim(1e-4, 1.5)
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "degree_tails")
