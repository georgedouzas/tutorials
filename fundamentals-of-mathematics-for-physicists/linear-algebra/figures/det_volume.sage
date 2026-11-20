# The linear map with columns u = (2, 1, 0), v = (-1, 2, 0), w = (0, 1, 2) takes the unit cube to the parallelepiped
# spanned by u, v, w, of volume det = 10. Static figure (matplotlib 3D) and an interactive Plotly version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import itertools

u, v, w = vector(QQ, [2, 1, 0]), vector(QQ, [-1, 2, 0]), vector(QQ, [0, 1, 2])
A = matrix(QQ, [u, v, w]).transpose()
assert A.det() == 10


def corners(a, b, c):
    """The eight corners s a + t b + r c, s, t, r in {0, 1}, indexed by (s, t, r)."""
    return {(s, t, r): s * a + t * b + r * c for s, t, r in itertools.product([0, 1], repeat=3)}


def faces(P):
    """The six faces as lists of four corners."""
    F = []
    for k in range(3):
        for val in (0, 1):
            idx = [i for i in itertools.product([0, 1], repeat=3) if i[k] == val]
            a, b, c, d = sorted(idx)
            F.append([P[a], P[b], P[d], P[c]])
    return F


E = identity_matrix(QQ, 3).columns()
cube, box = corners(*E), corners(u, v, w)
fig = plt.figure(figsize=(5.2, 4.8))
ax = fig.add_subplot(projection="3d")
for P, col, alpha in ((cube, MUTED, 0.10), (box, ACCENT, 0.20)):
    polys = [[tuple(map(float, p)) for p in f] for f in faces(P)]
    ax.add_collection3d(Poly3DCollection(polys, facecolors=col, alpha=alpha, edgecolors="none"))
    for a in P:                       # the twelve edges, drawn as lines so that none is hidden by a face
        for k in range(3):
            if a[k] == 0:
                b = tuple(1 if i == k else a[i] for i in range(3))
                ax.plot(*[[float(P[a][i]), float(P[b][i])] for i in range(3)], color=col, linewidth=1.0)
for vec, lab, off in ((u, "$u$", (0.15, -0.1, -0.25)), (v, "$v$", (-0.3, -0.1, 0.1)), (w, "$w$", (0.0, -0.1, 0.2))):
    ax.quiver(0, 0, 0, float(vec[0]), float(vec[1]), float(vec[2]), color=STATEMENT, linewidth=2.0, arrow_length_ratio=0.1)
    ax.text(float(vec[0]) + off[0], float(vec[1]) + off[1], float(vec[2]) + off[2], lab, color=STATEMENT, fontsize=13)
ax.set_xlabel("$x$", color=MUTED); ax.set_ylabel("$y$", color=MUTED); ax.set_zlabel("$z$", color=MUTED)
ax.set_xlim(-1.2, 2.2); ax.set_ylim(0, 3.4); ax.set_zlim(0, 2.4)
ax.view_init(elev=28, azim=-125)
ax.grid(False)
ax.xaxis.pane.fill = ax.yaxis.pane.fill = ax.zaxis.pane.fill = False
ax.tick_params(labelsize=8)
save_matplotlib(fig, "det_volume")

# Interactive version: both solids as meshes, with the edge vectors as lines.
traces = []
for P, col, name, op in ((cube, MUTED, "unit cube, volume 1", 0.15), (box, ACCENT, "image of the cube, volume det A = 10", 0.3)):
    keys = list(P.keys())
    pts = [P[k] for k in keys]
    tri = []
    for f in faces(P):
        ids = [pts.index(p) for p in f]
        tri += [(ids[0], ids[1], ids[2]), (ids[0], ids[2], ids[3])]
    traces.append(dict(type="mesh3d", x=floats([p[0] for p in pts]), y=floats([p[1] for p in pts]), z=floats([p[2] for p in pts]),
                       i=[t[0] for t in tri], j=[t[1] for t in tri], k=[t[2] for t in tri], color=col, opacity=op,
                       name=name, showlegend=True, hoverinfo="name"))
for vec, name in ((u, "u = (2, 1, 0)"), (v, "v = (-1, 2, 0)"), (w, "w = (0, 1, 2)")):
    traces.append(dict(type="scatter3d", x=[0, float(vec[0])], y=[0, float(vec[1])], z=[0, float(vec[2])], mode="lines+markers",
                       line=dict(color=STATEMENT, width=6), marker=dict(size=[0, 4], color=STATEMENT), name=name))
save_plotly(traces, "det_volume", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="z", aspectmode="data")))
