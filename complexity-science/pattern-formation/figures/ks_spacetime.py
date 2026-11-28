"""Space-time diagram of the Kuramoto-Sivashinsky equation on the package's domain (Datseris Fig. 11.7a)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.physics.fluids import KuramotoSivashinskySystem  # noqa: E402

u = np.asarray(simulate(KuramotoSivashinskySystem(), until=150, dt=0.5).get_values("line.u"))
fig, ax = plt.subplots(figsize=(6.2, 3.6))
ax.imshow(u.T, aspect="auto", origin="lower", cmap="RdBu_r", extent=(0, 150, 0, 32 * np.pi), interpolation="nearest")
ax.set_xlabel(r"$t$")
ax.set_ylabel(r"$x$")
fig.tight_layout()
save_figure(fig, "ks_spacetime")
