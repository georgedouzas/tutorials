# The Killing fields P = d_x, D = x d_x + y d_y and S = (x^2 - y^2) d_x + 2xy d_y of the half-plane, with integral curves.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fields = [("P", lambda x, y: (np.ones_like(x), 0*y)), ("D", lambda x, y: (x, y)), ("S", lambda x, y: (x**2 - y**2, 2*x*y))]
titles = [r"$P = \partial_x$", r"$D = x\,\partial_x + y\,\partial_y$", r"$S = (x^2 - y^2)\,\partial_x + 2xy\,\partial_y$"]
fig, axs = plt.subplots(1, 3, figsize=(11, 3.8))
gx, gy = np.meshgrid(np.linspace(-1.8, 1.8, 10), np.linspace(0.15, 1.95, 7))
curves = []
s = np.linspace(-2.5, 2.5, 200)
curves.append([(s, 0*s + h) for h in [0.3, 0.7, 1.1, 1.5, 1.9]])                                 # horizontal lines
u = np.linspace(0, 3, 50)
curves.append([(u*np.cos(a), u*np.sin(a)) for a in np.linspace(np.pi/10, 9*np.pi/10, 7)])       # rays from 0
ang = np.linspace(0, 2*np.pi, 300)
curves.append([(rr*np.sin(ang), rr*(1 - np.cos(ang))) for rr in [0.25, 0.5, 0.75, 1.0]])         # circles tangent to y = 0 at 0
for ax, (name, F), tit, cs in zip(axs, fields, titles, curves):
    U, V = F(gx, gy); N = np.sqrt(U**2 + V**2) + 1e-9
    ax.quiver(gx, gy, U/N, V/N, color=MUTED, angles="xy", scale_units="xy", scale=4.5, width=0.005)
    for (cx, cy) in cs: ax.plot(cx, cy, color=ACCENT, lw=1.2)
    ax.axhline(0, color=INK, lw=1)
    ax.set_xlim(-2, 2); ax.set_ylim(-0.05, 2.1); ax.set_aspect("equal"); ax.set_title(tit, fontsize=10); ax.set_xlabel(r"$x$")
axs[0].set_ylabel(r"$y$")
fig.tight_layout()
save_matplotlib(fig, "h2_killing")
traces = []
for k, ((name, F), cs) in enumerate(zip(fields, curves)):
    xa, ya = ("x", "y") if k == 0 else ("x%d" % (k + 1), "y%d" % (k + 1))
    for (cx, cy) in cs:
        keep = (cy >= 0) & (np.abs(cx) <= 2) & (cy <= 2.1)
        traces.append({"type": "scatter", "mode": "lines", "x": floats(cx[keep]), "y": floats(cy[keep]), "line": {"color": ACCENT},
                       "showlegend": False, "xaxis": xa, "yaxis": ya, "name": name})
lay = {"showlegend": False}
for k in range(3):
    xa, ya = ("xaxis", "yaxis") if k == 0 else ("xaxis%d" % (k + 1), "yaxis%d" % (k + 1))
    lay[xa] = {"domain": [k/3 + 0.02, (k + 1)/3 - 0.02], "range": [-2, 2], "title": ["P", "D", "S"][k]}
    lay[ya] = {"range": [0, 2.1], "anchor": "x" if k == 0 else "x%d" % (k + 1), "scaleanchor": "x" if k == 0 else "x%d" % (k + 1)}
save_plotly(traces, "h2_killing", lay)
