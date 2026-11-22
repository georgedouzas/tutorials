# The curves exp(t n.T), 0 <= t <= 4 pi, in SU(2) = S^3, for six directions n, as (a0, a) = (cos(t/2), sin(t/2) n),
# drawn by stereographic projection from (a0, a1, a2, a3) = (0, 0, 0, -1): (a0, a1, a2) / (1 + a3).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def stereo(q):
    return q[:3] / (1 + q[3])
dirs = [np.array(v, dtype=float) for v in ([1, 0, 0], [0, 1, 0], [0, 0, 1], [1, 1, 0], [1, 0, 1], [0, 1, -1])]
dirs = [d / np.linalg.norm(d) for d in dirs]
ts = np.linspace(0, 4 * np.pi, 801)
curves = []
for n in dirs:
    pts = np.array([stereo(np.array([np.cos(t / 2), *(np.sin(t / 2) * n)])) for t in ts if abs(1 + np.sin(t / 2) * n[2]) > 1e-2])
    curves.append(pts)
I_pt, mI_pt = stereo(np.array([1.0, 0, 0, 0])), stereo(np.array([-1.0, 0, 0, 0]))
assert np.allclose(I_pt, [1, 0, 0]) and np.allclose(mI_pt, [-1, 0, 0])
fig = plt.figure(figsize=(4.8, 4.6)); ax = fig.add_subplot(projection="3d")
for k, pts in enumerate(curves):
    pts = pts[np.linalg.norm(pts, axis=1) < 4]
    ax.plot(pts[:, 0], pts[:, 1], pts[:, 2], ".", ms=1.2, color=SERIES[k % 5])
ax.scatter(*I_pt, color=INK, s=40, marker="o"); ax.scatter(*mI_pt, color=INK, s=40, marker="s")
ax.text(1.15, 0, 0.15, r"$\mathbf{I}$", color=INK); ax.text(-1.6, 0, 0.15, r"$-\mathbf{I}$", color=INK)
ax.set_xlim(-2, 2); ax.set_ylim(-2, 2); ax.set_zlim(-2, 2); ax.set_box_aspect((1, 1, 1)); ax.view_init(elev=20, azim=-60); ax.set_axis_off()
fig.tight_layout()
save_matplotlib(fig, "exp_su2")
traces = []
for k, (n, pts) in enumerate(zip(dirs, curves)):
    pts = pts[np.linalg.norm(pts, axis=1) < 6]
    traces.append({"type": "scatter3d", "mode": "markers", "x": floats(pts[:, 0]), "y": floats(pts[:, 1]), "z": floats(pts[:, 2]),
                   "marker": {"color": SERIES[k % 5], "size": 2}, "name": "n = (%.2f, %.2f, %.2f)" % tuple(n)})
traces.append({"type": "scatter3d", "mode": "markers+text", "x": [1.0, -1.0], "y": [0.0, 0.0], "z": [0.0, 0.0], "text": ["I", "-I"],
               "marker": {"color": INK, "size": 5, "symbol": ["circle", "square"]}, "name": "I and -I"})
save_plotly(traces, "exp_su2", {"scene": {"aspectmode": "cube", "xaxis": {"range": [-3, 3]}, "yaxis": {"range": [-3, 3]}, "zaxis": {"range": [-3, 3]}}})
