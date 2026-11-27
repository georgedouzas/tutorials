# Hopf fibration: fibres p_H^{-1}(q) over points q on three circles of latitude of S^2 (z = 0.8, 0.4, -0.1), drawn in R^3
# after stereographic projection of S^3 from (0, 0, 0, 1), (a1, a2, b1, b2) -> (a1, a2, b1)/(1 - b2). The fibre over
# q = (x, y, z), z > -1, is w -> (sqrt((1 + z)/2) w, (x - i y) w / sqrt(2 (1 + z))), |w| = 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def fibre(x, y, z, n=400):
    w = np.exp(1j * np.linspace(0, 2 * np.pi, n))
    a = np.sqrt((1 + z) / 2) * w
    b = (x - 1j * y) * w / np.sqrt(2 * (1 + z))
    d = 1 - b.imag
    return a.real / d, a.imag / d, b.real / d

lats = [(0.8, ACCENT), (0.4, STATEMENT), (-0.1, EXAMPLE)]
pts = []
for z, col in lats:
    r = np.sqrt(1 - z * z)
    for k in range(6):
        ph = 2 * np.pi * k / 6 + 0.2
        pts.append((r * np.cos(ph), r * np.sin(ph), z, col))

fig = plt.figure(figsize=(8.4, 4.2))
ax0 = fig.add_subplot(1, 2, 1, projection="3d")
U, V = np.meshgrid(np.linspace(0, 2 * np.pi, 60), np.linspace(0, np.pi, 30))
ax0.plot_surface(np.cos(U) * np.sin(V), np.sin(U) * np.sin(V), np.cos(V), color=GRID, alpha=0.3, linewidth=0)
for x, y, z, col in pts:
    ax0.scatter([x], [y], [z], color=col, s=22, depthshade=False)
ax0.set_box_aspect((1, 1, 1)); ax0.set_axis_off(); ax0.view_init(elev=18, azim=-60)
ax0.set_title(r"points $q \in S^2$", color=INK, fontsize=FONT_SIZE)
ax1 = fig.add_subplot(1, 2, 2, projection="3d")
for x, y, z, col in pts:
    X, Y, Z = fibre(x, y, z)
    ax1.plot(X, Y, Z, color=col, lw=1.3)
ax1.set_xlim(-1.8, 1.8); ax1.set_ylim(-1.8, 1.8); ax1.set_zlim(-1.8, 1.8)
ax1.set_box_aspect((1, 1, 1)); ax1.set_axis_off(); ax1.view_init(elev=40, azim=-35)
ax1.set_title(r"fibres $p_H^{-1}(q) \subset S^3$, projected to $\mathbb{R}^3$", color=INK, fontsize=FONT_SIZE)
fig.tight_layout()
save_matplotlib(fig, "hopf_fibration")

traces = []
for i, (x, y, z, col) in enumerate(pts):
    X, Y, Z = fibre(x, y, z)
    traces.append({"type": "scatter3d", "mode": "lines", "x": floats(X), "y": floats(Y), "z": floats(Z),
                   "line": {"color": col, "width": 5}, "name": "fibre over z = %.1f" % z, "showlegend": i % 6 == 0})
save_plotly(traces, "hopf_fibration", {"scene": {"aspectmode": "cube",
            "xaxis": {"visible": False, "range": [-2.0, 2.0]}, "yaxis": {"visible": False, "range": [-2.0, 2.0]},
            "zaxis": {"visible": False, "range": [-2.0, 2.0]}}})
