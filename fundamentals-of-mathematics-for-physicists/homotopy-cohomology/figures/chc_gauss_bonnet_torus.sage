# Gauss-Bonnet on the torus of revolution R = 2, r = 1: the surface coloured by K = cos v/(r(R + r cos v)); the total
# curvature, printed, is 0, with 4 pi on the outer half and -4 pi on the inner half. Static view and interactive surface.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib import cm, colors
import numpy as np
from scipy.integrate import quad

R0, r0 = 2.0, 1.0
K = lambda v: np.cos(v) / (r0 * (R0 + r0 * np.cos(v)))
print("total:", round(2 * np.pi * quad(np.cos, 0, 2 * np.pi)[0], 10),
      "outer:", round(2 * np.pi * quad(np.cos, -np.pi / 2, np.pi / 2)[0] / np.pi, 10), "pi")
u, v = np.meshgrid(np.linspace(0, 2 * np.pi, 90), np.linspace(0, 2 * np.pi, 60))
X = (R0 + r0 * np.cos(v)) * np.cos(u); Y = (R0 + r0 * np.cos(v)) * np.sin(u); Z = r0 * np.sin(v)
kmax = 1.0
norm = colors.TwoSlopeNorm(vmin=-kmax, vcenter=0.0, vmax=kmax / 3)
cmap = colors.LinearSegmentedColormap.from_list("k", [STATEMENT, "#f4f1ea", ACCENT])
fig = plt.figure(figsize=(5.6, 4.0))
ax = fig.add_subplot(1, 1, 1, projection="3d")
ax.plot_surface(X, Y, Z, facecolors=cmap(norm(K(v))), linewidth=0, antialiased=True, shade=False)
ax.set_box_aspect((3, 3, 1)); ax.set_axis_off(); ax.view_init(elev=35, azim=-60)
sm = cm.ScalarMappable(norm=norm, cmap=cmap); sm.set_array([])
cb = fig.colorbar(sm, ax=ax, shrink=0.6, pad=0.02)
cb.set_label(r"$K$")
fig.tight_layout()
save_matplotlib(fig, "chc_gauss_bonnet_torus")

trace = {"type": "surface", "x": [floats(row) for row in X], "y": [floats(row) for row in Y], "z": [floats(row) for row in Z],
         "surfacecolor": [floats(row) for row in K(v)], "cmin": -kmax, "cmax": kmax / 3,
         "colorscale": [[0, STATEMENT], [0.75, "#f4f1ea"], [1, ACCENT]], "colorbar": {"title": "K"}, "name": "torus"}
save_plotly([trace], "chc_gauss_bonnet_torus", {"showlegend": False, "scene": {"aspectmode": "data",
            "xaxis": {"visible": False}, "yaxis": {"visible": False}, "zaxis": {"visible": False}}})
