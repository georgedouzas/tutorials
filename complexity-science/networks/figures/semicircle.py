"""Eigenvalues of the adjacency matrix of an Erdős-Rényi graph against the semicircle law (Gros Fig. 1.5)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import networkx as nx  # noqa: E402
import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.networks import RandomGraphEnsemblesSystem  # noqa: E402

# The eigenvalues come from NumPy: the package has no graph spectra (scikit-complexity #67).
G = simulate(RandomGraphEnsemblesSystem(2000, mean_degree=25.0, steps=20), until=20, random_state=2).get_network(-1).get_graph()
w = np.linalg.eigvalsh(nx.to_numpy_array(G))
z = 2 * G.number_of_edges() / G.number_of_nodes()
fig, ax = plt.subplots(figsize=(6.2, 3.6))
ax.hist(w[:-1], bins=60, density=True, color=ACCENT, alpha=0.55, label="eigenvalues")
x = np.linspace(-2 * np.sqrt(z), 2 * np.sqrt(z), 400)
x = np.clip(x, -2 * np.sqrt(z), 2 * np.sqrt(z))
ax.plot(x, np.sqrt(np.maximum(4 * z - x ** 2, 0)) / (2 * np.pi * z), color=STATEMENT, lw=1.4, label=r"$\sqrt{4z - \lambda^2}/(2\pi z)$")
ax.axvline(w[-1], color=INK, lw=1.2, ls="--", label=rf"largest eigenvalue $\lambda_1 = {w[-1]:.1f}$")
ax.set_xlabel(r"eigenvalue $\lambda$")
ax.set_ylabel(r"density $\rho(\lambda)$")
ax.legend(frameon=False, loc="center left", bbox_to_anchor=(0.45, 0.6))
fig.tight_layout()
save_figure(fig, "semicircle")
