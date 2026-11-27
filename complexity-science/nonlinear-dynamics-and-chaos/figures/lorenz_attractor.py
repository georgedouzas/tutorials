"""The Lorenz attractor at sigma = 10, rho = 28, beta = 8/3 (Datseris Fig. 1.1, Gros Fig. 3.2), static and interactive."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.mathematics.dynamical_systems import LorenzSystem  # noqa: E402

trajectory = simulate(LorenzSystem(), until=100, dt=0.005)
keep = trajectory.times >= 50
x, y, z = (trajectory.get_values(f"lorenz.{c}")[keep] for c in "xyz")
t = trajectory.times[keep]

fig = plt.figure(figsize=(5.4, 4.6))
ax = fig.add_subplot(projection="3d")
ax.plot(x, y, z, color=ACCENT, lw=0.35, alpha=0.85, rasterized=True)
q = np.sqrt(8 / 3 * 27)
ax.scatter([q, -q], [q, -q], [27, 27], color=STATEMENT, s=14, depthshade=False)
ax.set_xlabel(r"$x$")
ax.set_ylabel(r"$y$")
ax.set_zlabel(r"$z$")
ax.view_init(elev=18, azim=-60)
for axis in (ax.xaxis, ax.yaxis, ax.zaxis):
    axis.pane.set_alpha(0.0)
fig.tight_layout()
save_figure(fig, "lorenz_attractor")

step = 2
traces = [{"type": "scatter3d", "mode": "lines", "x": floats(x[::step]), "y": floats(y[::step]), "z": floats(z[::step]),
           "line": {"color": floats(t[::step]), "colorscale": "Viridis", "width": 2}, "name": "orbit"},
          {"type": "scatter3d", "mode": "markers", "x": [q, -q], "y": [q, -q], "z": [27, 27],
           "marker": {"size": 4, "color": STATEMENT}, "name": "C+ and C-"}]
layout = {"showlegend": False, "scene": {"xaxis": {"title": "x"}, "yaxis": {"title": "y"}, "zaxis": {"title": "z"}}}
save_plotly(traces, "lorenz_attractor", layout)
