"""The flow of the Nagel-Schreckenberg model against density, with and without random braking, and the bound min(rho vmax, 1 - rho)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.engineering.traffic import NagelSchreckenbergSystem  # noqa: E402

rhos = np.linspace(0.02, 0.9, 23)
fig, ax = plt.subplots(figsize=(6.2, 3.6))
for p, color, label in ((0.0, EXAMPLE, r"$p = 0$"), (0.3, ACCENT, r"$p = 0.3$")):
    J = []
    for rho in rhos:
        v = np.asarray(simulate(NagelSchreckenbergSystem(1000, density=float(rho), slowdown=p, random_state=7), until=1500, random_state=7).get_values("road.velocity"))[1000:]
        J.append(rho * v[v >= 0].mean())
    ax.plot(rhos, J, "o-", ms=3, lw=1.2, color=color, label=label)
grid = np.linspace(0, 1, 201)
ax.plot(grid, np.minimum(5 * grid, 1 - grid), color=MUTED, lw=1.0, ls="--", label="bound")
ax.set_xlabel(r"density $\rho$")
ax.set_ylabel(r"flow $J$")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "fundamental_diagram")
