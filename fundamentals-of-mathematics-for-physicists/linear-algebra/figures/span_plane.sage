# The span of v1 = (1, 2, 0) and v2 = (0, 1, 1) in R^3: the plane 2x - y + z = 0, with v3 = v1 + v2 in it and the
# vector (1, 1, 1) off it. Static figure (matplotlib 3D) and an interactive Plotly version that can be rotated.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

v1, v2 = vector(QQ, [1, 2, 0]), vector(QQ, [0, 1, 1])
v3, w = v1 + v2, vector(QQ, [1, 1, 1])
n = vector(QQ, [2, -1, 1])                       # normal of the plane spanned by v1, v2
assert n * v1 == 0 and n * v2 == 0 and n * v3 == 0 and n * w != 0
V = QQ^3
assert v3 in V.span([v1, v2]) and w not in V.span([v1, v2])

S = [-1.2 + 2.6 * k / 12 for k in range(13)]      # the patch s v1 + t v2, s, t in [-1.2, 1.4]
P = lambda s, t: s * v1.change_ring(RDF) + t * v2.change_ring(RDF)

fig = plt.figure(figsize=(5.2, 4.6))
ax = fig.add_subplot(projection="3d")
X = [[P(s, t)[0] for t in S] for s in S]; Y = [[P(s, t)[1] for t in S] for s in S]; Z = [[P(s, t)[2] for t in S] for s in S]
import numpy as np
ax.plot_surface(np.array(X), np.array(Y), np.array(Z), color=ACCENT, alpha=0.18, linewidth=0, shade=False)
ax.plot_wireframe(np.array(X), np.array(Y), np.array(Z), color=ACCENT, alpha=0.25, linewidth=0.5, rstride=2, cstride=2)
for vec, col, lab, off in ((v1, ACCENT, "$v_1$", (0.15, 0.15, -0.25)), (v2, ACCENT, "$v_2$", (-0.35, 0.0, 0.2)),
                           (v3, EXAMPLE, "$v_3$", (-0.1, 0.3, 0.15)), (w, STATEMENT, "$(1, 1, 1)$", (0.15, -0.2, 0.12))):
    ax.quiver(0, 0, 0, float(vec[0]), float(vec[1]), float(vec[2]), color=col, linewidth=2.2, arrow_length_ratio=0.12)
    ax.text(float(vec[0]) + off[0], float(vec[1]) + off[1], float(vec[2]) + off[2], lab, color=col, fontsize=12)
foot = w - (n * w) / (n * n) * n                # the point of the plane nearest to (1, 1, 1)
ax.plot([float(w[0]), float(foot[0])], [float(w[1]), float(foot[1])], [float(w[2]), float(foot[2])], color=STATEMENT, linestyle="--", linewidth=1.2)
ax.set_xlabel("$x$", color=MUTED); ax.set_ylabel("$y$", color=MUTED); ax.set_zlabel("$z$", color=MUTED)
ax.set_xlim(-1.3, 1.6); ax.set_ylim(-3.0, 3.6); ax.set_zlim(-1.3, 1.6)
ax.view_init(elev=20, azim=-105)
ax.grid(False)
ax.xaxis.pane.fill = ax.yaxis.pane.fill = ax.zaxis.pane.fill = False
ax.tick_params(labelsize=8)
save_matplotlib(fig, "span_plane")

# Interactive version: the same plane as a surface and the four vectors as lines with markers at their tips.
traces = [dict(type="surface", x=X, y=Y, z=Z, showscale=False, opacity=0.35, colorscale=[[0, ACCENT], [1, ACCENT]],
               name="span(v1, v2): 2x - y + z = 0", hovertemplate="span(v1, v2)<extra></extra>")]
for vec, col, name in ((v1, ACCENT, "v1 = (1, 2, 0)"), (v2, ACCENT, "v2 = (0, 1, 1)"), (v3, EXAMPLE, "v3 = v1 + v2 = (1, 3, 1), in the plane"),
                       (w, STATEMENT, "(1, 1, 1), off the plane")):
    traces.append(dict(type="scatter3d", x=[0, float(vec[0])], y=[0, float(vec[1])], z=[0, float(vec[2])], mode="lines+markers",
                       line=dict(color=col, width=6), marker=dict(size=[0, 5], color=col), name=name))
save_plotly(traces, "span_plane", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="z", aspectmode="data")))
