# Steepest descent for the Airy integral: level curves of Re f(zeta) = -x^2 y + y^3/3 - y for
# f(zeta) = i(zeta^3/3 + zeta), zeta = x + iy, with the saddle points zeta = i and zeta = -i, the steepest-descent path
# y = sqrt(x^2/3 + 1) through i (on which Im f = 0), the horizontal line y = 1 through i, and the real axis.
# Interactive: the surface Re f over the same window, clipped to [-4, 4].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

X, Y = np.meshgrid(np.linspace(-2.5, 2.5, 401), np.linspace(-2.0, 2.6, 401))
R = -X**2 * Y + Y**3 / 3 - Y
fig, ax = plt.subplots(figsize=(5.6, 5.0))
levels = np.arange(-4, 4.01, 0.5)
cs = ax.contourf(X, Y, np.clip(R, -4, 4), levels=levels, cmap="RdBu_r", alpha=0.55)
ax.contour(X, Y, R, levels=levels, colors=MUTED, linewidths=0.4)
ax.contour(X, Y, R, levels=[-2/3], colors=INK, linewidths=0.9, linestyles="dashed")
x = np.linspace(-2.5, 2.5, 400)
ax.plot(x, np.sqrt(x**2 / 3 + 1), color=ACCENT, lw=2.2)
ax.plot(x, np.ones_like(x), color=EXAMPLE, lw=1.4, ls=(0, (5, 3)))
ax.axhline(0, color=INK, lw=0.8)
ax.plot([0, 0], [1, -1], "o", color=STATEMENT, ms=6, zorder=5)
ax.text(-0.07, 0.62, r"$i$", color=STATEMENT, fontsize=12,
        bbox=dict(facecolor="white", edgecolor="none", alpha=0.8, pad=1))
ax.text(0.12, -0.85, r"$-i$", color=STATEMENT, fontsize=12)
ax.text(1.24, 2.33, r"$y^2 = x^2/3 + 1$", color=ACCENT, fontsize=10,
        bbox=dict(facecolor="white", edgecolor="none", alpha=0.8, pad=1))
ax.text(1.55, 0.72, r"$y = 1$", color=EXAMPLE, fontsize=11,
        bbox=dict(facecolor="white", edgecolor="none", alpha=0.8, pad=1))
ax.set_xlim(-2.5, 2.5); ax.set_ylim(-2.0, 2.6); ax.set_aspect("equal")
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
cb = fig.colorbar(cs, ax=ax, shrink=0.8)
cb.set_label(r"$\mathrm{Re}\,f$")
fig.tight_layout()
save_matplotlib(fig, "saddle_landscape")

xs = [-2.5 + 5.0 * k / 100 for k in range(101)]
ys = [-2.0 + 4.6 * k / 92 for k in range(93)]
Z = [[max(-4.0, min(4.0, -xx**2 * yy + yy**3 / 3 - yy)) for xx in xs] for yy in ys]
path = [(t, float(sqrt(t**2 / 3 + 1))) for t in [-2.5 + 5.0 * k / 100 for k in range(101)]]
traces = [{"type": "surface", "x": xs, "y": ys, "z": Z, "colorscale": "RdBu", "reversescale": True,
           "showscale": False, "opacity": 0.9, "name": "Re f"},
          {"type": "scatter3d", "mode": "lines", "x": [p[0] for p in path], "y": [p[1] for p in path],
           "z": [max(-4.0, -p[0]**2 * p[1] + p[1]**3 / 3 - p[1]) for p in path],
           "line": {"color": ACCENT, "width": 6}, "name": "steepest descent"},
          {"type": "scatter3d", "mode": "markers", "x": [0, 0], "y": [1, -1], "z": [-2 / 3, 2 / 3],
           "marker": {"color": STATEMENT, "size": 5}, "name": "saddles"}]
save_plotly(traces, "saddle_landscape", {"scene": {"xaxis": {"title": "x"}, "yaxis": {"title": "y"},
                                                   "zaxis": {"title": "Re f", "range": [-4, 4]}},
                                         "margin": {"l": 0, "r": 0, "t": 0, "b": 0}, "showlegend": False})
