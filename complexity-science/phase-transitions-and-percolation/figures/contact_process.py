"""Density of the contact process on a lattice at three infection rates, with the mean-field solutions (Bertin Sec. 3.2.2)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.statistical_mechanics import ContactProcessSystem  # noqa: E402

fig, ax = plt.subplots(figsize=(5.6, 3.8))
t = np.arange(501) * 0.1
for rate, colour in zip((1.4, 1.65, 1.9), (EXAMPLE, ACCENT, STATEMENT)):
    rho = np.asarray(simulate(ContactProcessSystem((64, 64), rate=rate, random_state=4), until=500, random_state=4).get_values("lattice.infected")).reshape(501, -1).mean(axis=1)
    ax.plot(np.arange(501), rho, color=colour, lw=1.4, label=rf"lattice, $\lambda = {rate}$")
    eps = rate - 1
    mf = eps * 0.5 * np.exp(eps * t) / (eps + rate * 0.5 * (np.exp(eps * t) - 1))
    ax.plot(np.arange(501), mf, color=colour, lw=1, ls="--")
ax.set_xlabel("steps")
ax.set_ylabel(r"density $\rho$")
ax.legend(frameon=False, fontsize=9)
fig.tight_layout()
save_figure(fig, "contact_process")
