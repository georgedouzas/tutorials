"""The two Lyapunov exponents of the Henon map against a, at b = 0.3 (Datseris Ch. 3)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import lyapunov  # noqa: E402
from skcomplex.systems.mathematics.dynamical_systems import HenonMapSystem  # noqa: E402

values = np.linspace(1.0, 1.42, 85)
spectra = np.array([lyapunov(HenonMapSystem(x=0.1, y=0.1, a=a), until=4000, transient=1000).exponents for a in values])

fig, ax = plt.subplots(figsize=(5.6, 3.8))
ax.axhline(0, color=GRID, lw=0.8)
ax.axhline(np.log(0.3), color=MUTED, lw=1, ls=":")
ax.plot(values, spectra[:, 0], color=ACCENT, lw=1.4, label=r"$\lambda_{L,1}$")
ax.plot(values, spectra[:, 1], color=STATEMENT, lw=1.4, label=r"$\lambda_{L,2}$")
ax.plot(values, spectra.sum(axis=1), color=EXAMPLE, lw=1, ls="--", label="sum")
ax.set_xlabel(r"$a$")
ax.set_ylabel("Lyapunov exponent")
ax.legend(frameon=False, fontsize=9, loc="lower left")
fig.tight_layout()
save_figure(fig, "henon_lyapunov")
