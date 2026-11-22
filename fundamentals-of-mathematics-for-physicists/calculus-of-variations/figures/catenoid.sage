# The catenoid: the surface swept out by the catenary rho = c cosh(z / c), -1 <= z <= 1, rotated about the z-axis,
# with c = 1.697 so that its boundary circles at z = +-1 have radius 2 (the shallow solution of c cosh(1/c) = 2).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import brentq

c = brentq(lambda c: c * np.cosh(1 / c) - 2, 0.84, 10.0)
z = np.linspace(-1, 1, 41)
ph = np.linspace(0, 2 * np.pi, 73)
Z, PH = np.meshgrid(z, ph)
R = c * np.cosh(Z / c)
X, Y = R * np.cos(PH), R * np.sin(PH)

fig = plt.figure(figsize=(4.8, 4.4))
ax = fig.add_subplot(projection="3d")
ax.plot_surface(X, Y, Z, color=ACCENT, alpha=0.55, linewidth=0.2, edgecolor="white", shade=True)
for zz in (-1, 1):
    ax.plot(2 * np.cos(ph), 2 * np.sin(ph), zz + 0 * ph, color=INK, lw=2)
ax.set_box_aspect((1, 1, 0.55))
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$"); ax.set_zlabel(r"$z$")
ax.set_xticks([-2, 0, 2]); ax.set_yticks([-2, 0, 2]); ax.set_zticks([-1, 0, 1])
ax.view_init(elev=18, azim=35)
ax.xaxis.pane.fill = False; ax.yaxis.pane.fill = False; ax.zaxis.pane.fill = False
fig.tight_layout()
save_matplotlib(fig, "catenoid")

surface = {"type": "surface", "x": X.tolist(), "y": Y.tolist(), "z": Z.tolist(), "showscale": False, "opacity": 0.85,
           "colorscale": [[0, ACCENT], [1, ACCENT]], "name": "catenoid"}
rings = [{"type": "scatter3d", "mode": "lines", "x": floats(2 * np.cos(ph)), "y": floats(2 * np.sin(ph)),
          "z": [float(zz)] * len(ph), "line": {"color": INK, "width": 6}, "name": "ring z = %d" % zz} for zz in (-1, 1)]
save_plotly([surface] + rings, "catenoid",
            {"scene": {"aspectmode": "manual", "aspectratio": {"x": 1, "y": 1, "z": 0.55}}, "showlegend": False})
