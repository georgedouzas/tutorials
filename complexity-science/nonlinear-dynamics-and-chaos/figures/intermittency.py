"""A time series of the intermittent map x -> (1 + eps) x + (1 - eps) x^2 mod 1 (Datseris eq. (4.5), Fig. 4.8)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402

eps, x, xs = 1e-2, 0.3, np.empty(3000)
for k in range(3000):
    x = ((1 + eps) * x + (1 - eps) * x**2) % 1.0
    xs[k] = x

fig, ax = plt.subplots(figsize=(7.2, 2.8))
ax.plot(np.arange(3000), xs, color=ACCENT, lw=0.7)
ax.set_xlabel(r"step $n$")
ax.set_ylabel(r"$x_n$")
ax.set_xlim(0, 3000)
ax.set_ylim(0, 1)
fig.tight_layout()
save_figure(fig, "intermittency")
