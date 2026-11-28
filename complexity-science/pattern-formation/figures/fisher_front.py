"""Fisher-KPP front invading the empty line from a step, at equal time intervals (Gros Fig. 4.1)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.biology.ecology import FisherKPPSystem  # noqa: E402

N, h = 1200, 0.25
x = np.arange(N) * h
u = np.asarray(simulate(FisherKPPSystem(N, spacing=h), until=100, dt=10).get_values("line.u"))
fig, ax = plt.subplots(figsize=(6.2, 3.4))
for t in range(0, 11, 2):
    ax.plot(x, u[t], color=ACCENT, lw=1.3, alpha=0.4 + 0.06 * t)
ax.set_xlabel(r"$x$")
ax.set_ylabel(r"$u$")
ax.set_xlim(0, 260)
fig.tight_layout()
save_figure(fig, "fisher_front")
