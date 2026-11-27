"""Extinction of a Galton-Watson process with Poisson offspring (Jensen Fig. 5.3, Gros Fig. 6.12)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.stochastic_processes import GaltonWatsonSystem  # noqa: E402


def extinction(sigma, steps=2000):
    q = 0.0
    for _ in range(steps):
        q = np.exp(sigma * (q - 1))
    return q


fig, (left, right) = plt.subplots(1, 2, figsize=(8.4, 3.6))
z = np.linspace(0, 1, 200)
left.plot(z, z, color=MUTED, lw=0.8)
for sigma, colour in ((0.8, ACCENT), (1.0, EXAMPLE), (1.5, STATEMENT)):
    left.plot(z, np.exp(sigma * (z - 1)), color=colour, lw=1.4, label=rf"$\sigma = {sigma}$")
    q, xs, ys = 0.0, [0.0], [0.0]
    for _ in range(12):
        new = np.exp(sigma * (q - 1))
        xs += [q, new]
        ys += [new, new]
        q = new
    left.plot(xs, ys, color=colour, lw=0.7, ls=":")
left.set_xlabel(r"$z$")
left.set_ylabel(r"$G(z)$")
left.legend(frameon=False, fontsize=9, loc="upper left")

sigmas = np.linspace(0.5, 3.0, 101)
right.plot(sigmas, [extinction(s) for s in sigmas], color=ACCENT, lw=1.4, label="smallest root of $G(q) = q$")
points = np.array([0.8, 1.2, 1.5, 2.0])
estimates = [np.mean([simulate(GaltonWatsonSystem(1, m=s), until=8, random_state=seed).get_values("population.count")[-1] == 0
                      for seed in range(400)]) for s in points]
right.plot(points, estimates, "o", color=STATEMENT, ms=5, label="share of 400 runs extinct by $n = 8$")
right.set_xlabel(r"$\sigma$")
right.set_ylabel(r"$q$")
right.legend(frameon=False, fontsize=8.5, loc="upper right")
fig.tight_layout()
save_figure(fig, "branching_extinction")
