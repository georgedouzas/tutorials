# Flows of the rotation field -y d_x + x d_y and of the radial field x d_x + y d_y acting on a cloud of points.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
rng = np.random.default_rng(int(3))
r = 0.28*np.sqrt(rng.random(14)); a = 2*np.pi*rng.random(14)
cloud = np.array([1.2 + r*np.cos(a), 0.35 + r*np.sin(a)])          # a cloud of points near (1.2, 0.35)
shades = ["#9aa3ad", "#7fa3cc", "#4a7fb8", ACCENT]                  # grey at t = 0, darker blue later
def rot(t, P): return np.array([P[0]*np.cos(t) - P[1]*np.sin(t), P[0]*np.sin(t) + P[1]*np.cos(t)])
def dil(t, P): return np.exp(t)*P
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.4))
g = np.linspace(-2.4, 2.4, 11); X, Y = np.meshgrid(g, g)
a1.quiver(X, Y, -Y, X, color=GRID, angles="xy", scale_units="xy", scale=6, width=0.004)
a2.quiver(X, Y, X, Y, color=GRID, angles="xy", scale_units="xy", scale=6, width=0.004)
for k, t in enumerate([0, np.pi/4, np.pi/2, 3*np.pi/4]):
    P = rot(t, cloud); a1.scatter(P[0], P[1], s=14, color=shades[k], zorder=3, label=r"$t = %s$" % ["0", r"\pi/4", r"\pi/2", r"3\pi/4"][k])
for k, t in enumerate([0, 0.3, 0.6, 0.9]):
    P = dil(t, cloud); a2.scatter(P[0], P[1], s=14, color=shades[k], zorder=3, label=r"$t = %s$" % ["0", "0.3", "0.6", "0.9"][k])
s = np.linspace(0, 3*np.pi/4, 100); p0 = cloud[:, 0]
a1.plot(*rot(s, p0[:, None]), color=STATEMENT, lw=1.6, zorder=2)
s = np.linspace(0, 0.9, 100); a2.plot(*dil(s, p0[:, None]), color=STATEMENT, lw=1.6, zorder=2)
a1.set_title(r"$X = -y\,\partial_x + x\,\partial_y$", fontsize=11)
a2.set_title(r"$X = x\,\partial_x + y\,\partial_y$", fontsize=11)
for ax in (a1, a2):
    ax.set_aspect("equal"); ax.set_xlim(-2.5, 3.6); ax.set_ylim(-1.2, 2.6); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
    ax.legend(loc="upper left", fontsize=9, frameon=False)
fig.tight_layout()
save_matplotlib(fig, "flow_rotation")
# interactive version: the same clouds, with the integral curves through every point of the cloud
traces = []
for k, t in enumerate([0, np.pi/4, np.pi/2, 3*np.pi/4]):
    P = rot(t, cloud)
    traces.append({"type": "scatter", "mode": "markers", "x": floats(P[0]), "y": floats(P[1]), "marker": {"color": shades[k], "size": 6},
                   "name": "rotation, t = %.2f" % t, "xaxis": "x", "yaxis": "y"})
for k, t in enumerate([0, 0.3, 0.6, 0.9]):
    P = dil(t, cloud)
    traces.append({"type": "scatter", "mode": "markers", "x": floats(P[0]), "y": floats(P[1]), "marker": {"color": shades[k], "size": 6},
                   "name": "dilation, t = %.1f" % t, "xaxis": "x2", "yaxis": "y2"})
for j in range(cloud.shape[1]):
    s = np.linspace(0, 3*np.pi/4, 60); C = rot(s, cloud[:, j][:, None])
    traces.append({"type": "scatter", "mode": "lines", "x": floats(C[0]), "y": floats(C[1]), "line": {"color": STATEMENT, "width": 1},
                   "showlegend": False, "xaxis": "x", "yaxis": "y"})
    s = np.linspace(0, 0.9, 60); C = dil(s, cloud[:, j][:, None])
    traces.append({"type": "scatter", "mode": "lines", "x": floats(C[0]), "y": floats(C[1]), "line": {"color": STATEMENT, "width": 1},
                   "showlegend": False, "xaxis": "x2", "yaxis": "y2"})
lay = {"xaxis": {"domain": [0, 0.45], "range": [-2.5, 3.6]}, "yaxis": {"range": [-1.2, 2.6], "scaleanchor": "x"},
       "xaxis2": {"domain": [0.55, 1], "range": [-2.5, 3.6]}, "yaxis2": {"range": [-1.2, 2.6], "anchor": "x2", "scaleanchor": "x2"}}
save_plotly(traces, "flow_rotation", lay)
