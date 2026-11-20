# The kernel of A = [[1, 2, 3], [2, 4, 6]]: the plane x + 2y + 3z = 0, with the kernel vectors (1, 1, -1) and
# (-2, 1, 0) in it and the row (1, 2, 3) normal to it. Static figure (matplotlib 3D) and an interactive Plotly version.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A = matrix(QQ, [[1, 2, 3], [2, 4, 6]])
u1, u2 = vector(QQ, [1, 1, -1]), vector(QQ, [-2, 1, 0])
n = vector(QQ, A.row(0))                          # the row (1, 2, 3)
assert A * u1 == 0 and A * u2 == 0 and A.right_kernel() == (QQ^3).span([u1, u2])
assert n * u1 == 0 and n * u2 == 0

S = [-1.2 + 2.4 * k / 12 for k in range(13)]      # the patch s u1 + t u2, s, t in [-1.2, 1.2]
P = lambda s, t: s * u1.change_ring(RDF) + t * u2.change_ring(RDF)
X = [[P(s, t)[0] for t in S] for s in S]; Y = [[P(s, t)[1] for t in S] for s in S]; Z = [[P(s, t)[2] for t in S] for s in S]
nn = n.change_ring(RDF) / n.norm().n() * 1.6      # the normal drawn with length 1.6

fig = plt.figure(figsize=(5.2, 4.6))
ax = fig.add_subplot(projection="3d")
ax.plot_surface(np.array(X), np.array(Y), np.array(Z), color=ACCENT, alpha=0.18, linewidth=0, shade=False)
ax.plot_wireframe(np.array(X), np.array(Y), np.array(Z), color=ACCENT, alpha=0.25, linewidth=0.5, rstride=2, cstride=2)
for vec, col, lab, off in ((u1, EXAMPLE, "$(1, 1, -1)$", (0.0, -1.0, -0.5)), (u2, EXAMPLE, "$(-2, 1, 0)$", (-0.3, 0.3, -0.45)),
                           (nn, STATEMENT, "row $(1, 2, 3)$", (0.0, -0.2, 0.3))):
    ax.quiver(0, 0, 0, float(vec[0]), float(vec[1]), float(vec[2]), color=col, linewidth=2.2, arrow_length_ratio=0.12)
    ax.text(float(vec[0]) + off[0], float(vec[1]) + off[1], float(vec[2]) + off[2], lab, color=col, fontsize=11)
ax.text(-2.4, -1.5, 1.4, r"$\ker A$", color=ACCENT, fontsize=12)
ax.set_xlabel("$x$", color=MUTED); ax.set_ylabel("$y$", color=MUTED); ax.set_zlabel("$z$", color=MUTED, labelpad=2)
ax.set_xlim(-2.6, 2.6); ax.set_ylim(-2.0, 2.0); ax.set_zlim(-1.6, 1.6)
ax.set_box_aspect((5.2, 4.0, 3.2))                # equal scales, so the row looks normal to the plane
ax.view_init(elev=22, azim=12)
ax.grid(False)
ax.xaxis.pane.fill = ax.yaxis.pane.fill = ax.zaxis.pane.fill = False
ax.tick_params(labelsize=8)
save_matplotlib(fig, "kernel_plane")

# Interactive version: the plane as a surface, the two kernel vectors and the normal row as lines with markers.
traces = [dict(type="surface", x=X, y=Y, z=Z, showscale=False, opacity=0.35, colorscale=[[0, ACCENT], [1, ACCENT]],
               name="ker A: x + 2y + 3z = 0", hovertemplate="ker A<extra></extra>")]
for vec, col, name in ((u1, EXAMPLE, "(1, 1, -1), in ker A"), (u2, EXAMPLE, "(-2, 1, 0), in ker A"),
                       (nn, STATEMENT, "the row (1, 2, 3), normal to ker A")):
    traces.append(dict(type="scatter3d", x=[0, float(vec[0])], y=[0, float(vec[1])], z=[0, float(vec[2])], mode="lines+markers",
                       line=dict(color=col, width=6), marker=dict(size=[0, 5], color=col), name=name))
save_plotly(traces, "kernel_plane", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="z", aspectmode="data")))
