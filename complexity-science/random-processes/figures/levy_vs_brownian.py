"""A two-dimensional Levy flight and a Brownian path (Gros Fig. 3.9, Thurner Fig. 2.10)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.soft_matter import BrownianMotionSystem, LevyFlightSystem  # noqa: E402

flight = simulate(LevyFlightSystem(1, mu=1.2, n_dim=2), until=2000, dt=1, random_state=9).get_values("walkers.x")[:, 0, :]
brown = simulate(BrownianMotionSystem(1, inertial=False, n_dim=2, random_state=9), until=2000, dt=1,
                 random_state=9).get_values("beads.x")[:, 0, :]

fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 4))
left.plot(flight[:, 0], flight[:, 1], color=ACCENT, lw=0.6)
left.plot(*flight[0], "o", color=STATEMENT, ms=4)
left.set_title(r"Lévy flight, $\mu = 1.2$", fontsize=10)
right.plot(brown[:, 0], brown[:, 1], color=EXAMPLE, lw=0.6)
right.plot(*brown[0], "o", color=STATEMENT, ms=4)
right.set_title("Brownian motion", fontsize=10)
for ax in (left, right):
    ax.set_aspect("equal", adjustable="datalim")
    ax.set_xlabel(r"$x_1$")
    ax.set_ylabel(r"$x_2$")
fig.tight_layout()
save_figure(fig, "levy_vs_brownian")
