"""Orbit diagram of the logistic map with its Lyapunov exponent below (Charbonneau Fig. 1.2, Gros Fig. 2.19)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.experiments import orbit_diagram  # noqa: E402
from skcomplex.systems.mathematics.dynamical_systems import LogisticMapSystem  # noqa: E402

rs = np.linspace(2.5, 4.0, 1200)
orbits = orbit_diagram(LogisticMapSystem(x=0.2), "map.r", rs, "map.x", transient=600, keep=120)
x, total = np.full(rs.shape, 0.2), np.zeros(rs.shape)
for _ in range(300):
    x = rs * x * (1 - x)
for _ in range(3000):
    x = rs * x * (1 - x)
    total += np.log(np.abs(rs * (1 - 2 * x)) + 1e-300)
lyap = total / 3000

fig, (top, bottom) = plt.subplots(2, 1, figsize=(6.4, 5.6), dpi=220, sharex=True, gridspec_kw={"height_ratios": [3, 2]})
counts = [len(points) for points in orbits.points]
top.scatter(np.repeat(rs, counts), np.concatenate(orbits.points), s=0.05, color=ACCENT, alpha=0.6, linewidths=0,
            rasterized=True)
for r_mark in (3.0, 1 + np.sqrt(6)):
    top.axvline(r_mark, color=MUTED, lw=0.8, ls=":")
top.set_ylabel(r"$x_n$ after the transient")
top.set_ylim(0, 1)
bottom.axhline(0, color=MUTED, lw=0.8)
bottom.plot(rs, lyap, color=STATEMENT, lw=1)
bottom.set_ylim(-2.5, 1.0)
bottom.set_xlabel(r"$r$")
bottom.set_ylabel(r"$\lambda_L$")
fig.tight_layout()
save_figure(fig, "logistic_bifurcation")

step = 4
traces = [{"type": "scattergl", "mode": "markers", "x": floats(np.repeat(rs[::step], [len(p) for p in orbits.points[::step]])),
           "y": floats(np.concatenate(orbits.points[::step])), "marker": {"size": 2, "color": ACCENT}, "name": "orbit", "xaxis": "x", "yaxis": "y"},
          {"type": "scatter", "mode": "lines", "x": floats(rs), "y": floats(lyap), "line": {"color": STATEMENT, "width": 1.5},
           "name": "Lyapunov exponent", "xaxis": "x", "yaxis": "y2"}]
layout = {"grid": {"rows": 2, "columns": 1, "roworder": "top to bottom"}, "showlegend": False,
          "xaxis": {"title": "r", "anchor": "y2"}, "yaxis": {"title": "x after the transient", "domain": [0.42, 1]},
          "yaxis2": {"title": "Lyapunov exponent", "domain": [0, 0.36], "range": [-2.5, 1]}}
save_plotly(traces, "logistic_bifurcation", layout)
