"""Five continuous-time random walks with the diffusive envelope (Jensen Sec. 10.1)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.stochastic_processes import RandomWalkSystem  # noqa: E402

run = simulate(RandomWalkSystem(5, rate=1.0), until=1000, dt=1.0, random_state=11)
t, x = run.times, run.get_values("walkers.x")

fig, ax = plt.subplots(figsize=(6, 3.6))
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(t, np.sqrt(t), color=MUTED, lw=1, ls="--", label=r"$\pm\sqrt{t}$")
ax.plot(t, -np.sqrt(t), color=MUTED, lw=1, ls="--")
for k in range(x.shape[1]):
    ax.plot(t, x[:, k], color=SERIES[k], lw=1.0)
ax.set_xlabel(r"$t$")
ax.set_ylabel(r"$X_t$")
ax.legend(frameon=False, fontsize=9, loc="upper left")
fig.tight_layout()
save_figure(fig, "random_walk_paths")
