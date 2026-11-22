# Phase portraits of six planar linear systems x' = A x: stable node A = [[-1, 0], [0, -3]], saddle [[1, 0], [0, -2]],
# stable spiral [[-0.3, 1], [-1, -0.3]], centre [[0, 1], [-1, 0]], stable degenerate node [[-1, 1], [0, -1]] and unstable
# spiral [[0.2, 1], [-1, 0.2]]. Each panel shows streamlines of the vector field (blue) and, for real eigenvalues,
# the real eigenvector lines (green).
# Interactive: trajectories exp(tA) x0 of the same systems in six Plotly subplots.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.linalg import expm

systems = [("stable node", [[-1, 0], [0, -3]]), ("saddle", [[1, 0], [0, -2]]), ("stable spiral", [[-0.3, 1], [-1, -0.3]]),
           ("centre", [[0, 1], [-1, 0]]), ("stable degenerate node", [[-1, 1], [0, -1]]), ("unstable spiral", [[0.2, 1], [-1, 0.2]])]
kinds = []
for name, M in systems:               # the names agree with the trace-determinant classification
    A = matrix(QQ, M); tr, de = A.trace(), A.det()
    k = "saddle" if de < 0 else ("centre" if tr == 0 else (("stable " if tr < 0 else "unstable ") + ("spiral" if tr^2 < 4 * de else ("degenerate node" if tr^2 == 4 * de and A != tr / 2 * identity_matrix(2) else "node"))))
    assert k == name, (k, name)
L = 2.0
g = np.linspace(-L, L, 41)
X, Y = np.meshgrid(g, g)
fig, axes = plt.subplots(2, 3, figsize=(9.0, 6.2))
traces, layout = [], {}
for i, ((name, M), ax) in enumerate(zip(systems, axes.flat)):
    M = np.array(M, dtype=float)
    U = M[0, 0] * X + M[0, 1] * Y; V = M[1, 0] * X + M[1, 1] * Y
    ax.streamplot(X, Y, U, V, color=ACCENT, linewidth=0.8, density=0.9, arrowsize=0.8)
    ev, evec = np.linalg.eig(M)
    if np.all(np.isreal(ev)):
        for j in range(2):
            v = np.real(evec[:, j]); v = v / np.linalg.norm(v)
            ax.plot([-3 * v[0], 3 * v[0]], [-3 * v[1], 3 * v[1]], color=EXAMPLE, lw=1.4)
    ax.plot([0], [0], "o", color=STATEMENT, ms=4, zorder=5)
    ax.set_xlim(-L, L); ax.set_ylim(-L, L); ax.set_aspect("equal")
    ax.set_xticks([]); ax.set_yticks([])
    ax.set_title(name, fontsize=FONT_SIZE)
    sx = "x%d" % (i + 1) if i else "x"; sy = "y%d" % (i + 1) if i else "y"
    col, row = i % 3, i // 3
    layout["xaxis%s" % (i + 1 if i else "")] = dict(domain=[col / 3 + 0.02, (col + 1) / 3 - 0.02], range=[-L, L], showticklabels=False, title=name)
    layout["yaxis%s" % (i + 1 if i else "")] = dict(domain=[0.52 if row == 0 else 0.0, 1.0 if row == 0 else 0.45], range=[-L, L], showticklabels=False, anchor=sx)
    ts = np.linspace(0, 12, 400)
    for a in np.linspace(0, 2 * math.pi, 9)[:-1]:
        x0 = 1.9 * np.array([math.cos(a), math.sin(a)])
        P = np.array([expm(M * s) @ x0 for s in ts])
        P[~((np.abs(P[:, 0]) <= L) & (np.abs(P[:, 1]) <= L))] = np.nan
        traces.append(dict(type="scatter", mode="lines", x=[None if math.isnan(v) else float(v) for v in P[:, 0]],
                           y=[None if math.isnan(v) else float(v) for v in P[:, 1]], xaxis=sx, yaxis=sy,
                           line=dict(color=ACCENT, width=1.5), showlegend=False, hoverinfo="skip"))
fig.tight_layout()
save_matplotlib(fig, "linear_phase_portraits")
layout["showlegend"] = False
save_plotly(traces, "linear_phase_portraits", layout)
