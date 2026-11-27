# Loops of classes (1, 0), (0, 1) and (2, 3) on the torus embedded as ((2 + cos th) cos ph, (2 + cos th) sin ph, sin th),
# the loop of class (p, q) being s -> (ph, th) = (2 pi p s, 2 pi q s) (offset by a constant to separate the curves).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def emb(ph, th, r=1.0):
    return ((2 + r * np.cos(th)) * np.cos(ph), (2 + r * np.cos(th)) * np.sin(ph), r * np.sin(th))

P, T = np.meshgrid(np.linspace(0, 2 * np.pi, 80), np.linspace(0, 2 * np.pi, 40))
X, Y, Z = emb(P, T)
s = np.linspace(0, 1, 800)
loops = [((1, 0), (0.0, 1.2), ACCENT), ((0, 1), (-0.9, 0.0), STATEMENT), ((2, 3), (0.4, 0.3), EXAMPLE)]

fig = plt.figure(figsize=(5.6, 4.2))
ax = fig.add_subplot(projection="3d")
ax.plot_surface(X, Y, Z, color=GRID, alpha=0.35, linewidth=0, shade=True)
for (p, q), (ph0, th0), col in loops:
    x, y, z = emb(ph0 + 2 * np.pi * p * s, th0 + 2 * np.pi * q * s, 1.02)
    ax.plot(x, y, z, color=col, lw=2.2, label=r"$(%d, %d)$" % (p, q))
ax.legend(loc="upper left", frameon=False)
ax.set_box_aspect((1, 1, 0.38))
ax.set_axis_off()
ax.view_init(elev=38, azim=-55)
fig.tight_layout()
save_matplotlib(fig, "torus_loops")

surf = {"type": "surface", "x": X.tolist(), "y": Y.tolist(), "z": Z.tolist(), "showscale": False, "opacity": 0.45,
        "colorscale": [[0, GRID], [1, GRID]], "name": "torus", "hoverinfo": "skip"}
traces = [surf]
for (p, q), (ph0, th0), col in loops:
    x, y, z = emb(ph0 + 2 * np.pi * p * s, th0 + 2 * np.pi * q * s, 1.02)
    traces.append({"type": "scatter3d", "mode": "lines", "x": floats(x), "y": floats(y), "z": floats(z),
                   "line": {"color": col, "width": 6}, "name": "class (%d, %d)" % (p, q)})
save_plotly(traces, "torus_loops", {"scene": {"aspectmode": "manual", "aspectratio": {"x": 1, "y": 1, "z": 0.38},
            "xaxis": {"visible": False}, "yaxis": {"visible": False}, "zaxis": {"visible": False}}})
