"""The branching probability of the self-organised branching process approaching 1/2, with the mean-field equation."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from scipy.integrate import solve_ivp  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.criticality import SelfOrganizedBranchingSystem  # noqa: E402

n = 10
N = 2 ** (n + 1) - 1
tr = simulate(SelfOrganizedBranchingSystem(0.3, generations=n), until=30000, random_state=13)
g, p = (np.asarray(tr.get_values(v)).ravel() for v in ("tree.g", "tree.p"))
pa = p[g == 0]
k = np.arange(len(pa))
sol = solve_ivp(lambda t, q: (1 - (2 * q) ** n) / N, (0, k[-1]), [0.3], t_eval=k, rtol=1e-8)
fig, ax = plt.subplots(figsize=(6.2, 3.4))
ax.plot(k, pa, color=ACCENT, lw=0.8, label="simulation")
ax.plot(k, sol.y[0], color=STATEMENT, lw=1.6, ls="--", label="mean field")
ax.axhline(0.5, color=MUTED, lw=0.8, ls=":")
ax.set_xlabel(r"avalanche $k$")
ax.set_ylabel(r"branching probability $p$")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "sob_drift")
