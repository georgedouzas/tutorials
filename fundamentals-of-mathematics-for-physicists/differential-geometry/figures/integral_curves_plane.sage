# Integral curves of the rotation field -y d_x + x d_y (circles) and of the radial field x d_x + y d_y (rays), with the fields as arrows.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.4))
g = np.linspace(-1.8, 1.8, 9); X, Y = np.meshgrid(g, g)
t = np.linspace(0, 2*np.pi, 300)
for R in [0.5, 1.0, 1.5, 2.0]:
    a1.plot(R*np.cos(t), R*np.sin(t), color=ACCENT, lw=1.2)
a1.quiver(X, Y, -Y, X, color=MUTED, angles="xy", scale_units="xy", scale=5, width=0.005)
a1.set_title(r"$-y\,\partial_x + x\,\partial_y$", fontsize=11)
for ang in np.linspace(0, 2*np.pi, 12, endpoint=False):
    s = np.linspace(-3, 1, 100); a2.plot(np.exp(s)*np.cos(ang), np.exp(s)*np.sin(ang), color=STATEMENT, lw=1.2)
a2.quiver(X, Y, X, Y, color=MUTED, angles="xy", scale_units="xy", scale=5, width=0.005)
a2.set_title(r"$x\,\partial_x + y\,\partial_y$", fontsize=11)
for a in (a1, a2):
    a.set_aspect("equal"); a.set_xlim(-2.1, 2.1); a.set_ylim(-2.1, 2.1); a.set_xlabel(r"$x$"); a.set_ylabel(r"$y$")
fig.tight_layout()
save_matplotlib(fig, "integral_curves_plane")
# interactive version
traces = []
for R in [0.5, 1.0, 1.5, 2.0]:
    traces.append({"type": "scatter", "mode": "lines", "x": floats(R*np.cos(t)), "y": floats(R*np.sin(t)), "line": {"color": ACCENT},
                   "name": "circle r = %.1f" % R, "xaxis": "x", "yaxis": "y"})
for ang in np.linspace(0, 2*np.pi, 12, endpoint=False):
    s = np.linspace(-3, 1, 60)
    traces.append({"type": "scatter", "mode": "lines", "x": floats(np.exp(s)*np.cos(ang)), "y": floats(np.exp(s)*np.sin(ang)),
                   "line": {"color": STATEMENT}, "showlegend": False, "xaxis": "x2", "yaxis": "y2"})
lay = {"xaxis": {"domain": [0, 0.45], "range": [-2.1, 2.1]}, "yaxis": {"range": [-2.1, 2.1], "scaleanchor": "x"},
       "xaxis2": {"domain": [0.55, 1], "range": [-2.1, 2.1]}, "yaxis2": {"range": [-2.1, 2.1], "anchor": "x2", "scaleanchor": "x2"}, "showlegend": False}
save_plotly(traces, "integral_curves_plane", lay)
