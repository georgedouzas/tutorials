"""A time series of the intermittent map x -> (1 + eps) x + (1 - eps) x^2 mod 1 (Datseris eq. (4.5), Fig. 4.8)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.components.laws.utils import mod  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.general.dynamics import DynamicalSystem  # noqa: E402

eps = 1e-2
datseris = DynamicalSystem(states={"x": 0.3}, parameters={"eps": eps}, time="discrete", element="map",
                           equations={"x": lambda s: mod((1 + s.target.eps) * s.target.x + (1 - s.target.eps) * s.target.x**2, 1)})
xs = simulate(datseris, until=3000).get_values("map.x")[1:]

fig, ax = plt.subplots(figsize=(7.2, 2.8))
ax.plot(np.arange(3000), xs, color=ACCENT, lw=0.7)
ax.set_xlabel(r"step $n$")
ax.set_ylabel(r"$x_n$")
ax.set_xlim(0, 3000)
ax.set_ylim(0, 1)
fig.tight_layout()
save_figure(fig, "intermittency")
