"""Fractional Brownian motion for three Hurst exponents and the detrended fluctuations of its increments (Jensen Fig. 10.7)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import scaling  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.soft_matter import FractionalBrownianMotionSystem  # noqa: E402

fig, (left, right) = plt.subplots(1, 2, figsize=(9, 3.8))
for H, colour in zip((0.3, 0.5, 0.8), (EXAMPLE, ACCENT, STATEMENT)):
    path = np.asarray(simulate(FractionalBrownianMotionSystem(1, H=H, D=0.5, n_dim=1), until=4096, dt=1.0,
                               random_state=3).get_values("walkers.x"))[:, 0, 0]
    left.plot(path - path[0], color=colour, lw=0.8, label=rf"$H = {H}$")
    result = scaling(np.diff(path), kind="detrended-fluctuation")
    right.loglog(result.scales, result.fluctuations[0], "o", ms=3, color=colour, label=rf"$H = {H}$: slope {result.exponent[0]:.2f}")
left.set_xlabel(r"$t$")
left.set_ylabel(r"$x_t - x_0$")
left.legend(frameon=False, fontsize=9)
right.set_xlabel(r"window size $n$")
right.set_ylabel(r"$\mathcal{F}(n)$")
right.legend(frameon=False, fontsize=9)
fig.tight_layout()
save_figure(fig, "hurst_dfa")
