# Orbits of p = (0.8, 0, 0.6) on the unit sphere under e^{t n.L}, 0 <= t <= 2 pi, for n = e3, e1, (1,1,1)/sqrt3
# (Rodrigues' formula), with a wireframe sphere; static view and interactive Plotly page.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

p = np.array([0.8, 0.0, 0.6])
axes = [(np.array([0, 0, 1.0]), ACCENT, r"$\mathbf{e}_3$"), (np.array([1.0, 0, 0]), STATEMENT, r"$\mathbf{e}_1$"),
        (np.array([1.0, 1, 1]) / np.sqrt(3), EXAMPLE, r"$(1,1,1)/\sqrt{3}$")]
def orbit(n, ts):
    return np.array([p * np.cos(t) + np.cross(n, p) * np.sin(t) + n * np.dot(n, p) * (1 - np.cos(t)) for t in ts])
ts = np.linspace(0, 2 * np.pi, 200)
for n, _, _ in axes:
    o = orbit(n, ts)
    assert np.allclose(np.linalg.norm(o, axis=1), 1) and np.allclose(o[-1], p)
fig = plt.figure(figsize=(4.8, 4.6)); ax = fig.add_subplot(projection="3d")
u, v = np.meshgrid(np.linspace(0, 2 * np.pi, 25), np.linspace(0, np.pi, 13))
ax.plot_wireframe(np.cos(u) * np.sin(v), np.sin(u) * np.sin(v), np.cos(v), color=GRID, lw=0.4)
for n, c, lab in axes:
    o = orbit(n, ts); ax.plot(o[:, 0], o[:, 1], o[:, 2], color=c, lw=2.2, label=lab)
    ax.plot([0, 1.3 * n[0]], [0, 1.3 * n[1]], [0, 1.3 * n[2]], color=c, lw=1, ls="--")
ax.scatter([p[0]], [p[1]], [p[2]], color=INK, s=25)
ax.set_box_aspect((1, 1, 1)); ax.view_init(elev=22, azim=35); ax.set_axis_off()
ax.legend(loc="upper left", fontsize=9, frameon=False)
fig.tight_layout()
save_matplotlib(fig, "rotation_orbits")
traces = [{"type": "scatter3d", "mode": "lines", "x": floats(o[:, 0]), "y": floats(o[:, 1]), "z": floats(o[:, 2]),
           "line": {"color": c, "width": 6}, "name": "axis " + name}
          for (n, c, _), name in zip(axes, ["e3", "e1", "(1,1,1)/sqrt3"]) for o in [orbit(n, ts)]]
traces.append({"type": "surface", "x": (np.cos(u) * np.sin(v)).tolist(), "y": (np.sin(u) * np.sin(v)).tolist(), "z": np.cos(v).tolist(),
               "opacity": 0.15, "showscale": False, "colorscale": [[0, MUTED], [1, MUTED]], "name": "S^2"})
traces.append({"type": "scatter3d", "mode": "markers", "x": [0.8], "y": [0.0], "z": [0.6], "marker": {"color": INK, "size": 4}, "name": "p"})
save_plotly(traces, "rotation_orbits", {"scene": {"aspectmode": "cube"}})
