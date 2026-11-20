# Tensors in V (x) V with V = R^3 as 3 x 3 arrays of components: an elementary tensor u (x) v has rank one, a sum of
# two elementary tensors rank two, and a general element rank three (nine independent components).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.colors import LinearSegmentedColormap

u, v = vector(QQ, [1, 2, 3]), vector(QQ, [1, 0, -1])
w, z = vector(QQ, [0, 1, 1]), vector(QQ, [2, 1, 0])
A = u.outer_product(v)
B = A + w.outer_product(z)
C = matrix(QQ, [[1, 2, 0], [-1, 3, 1], [0, 2, -2]])
panels = [(A, r"$u \otimes v$"), (B, r"$u \otimes v + w \otimes z$"), (C, "a general tensor")]
assert [M.rank() for M, _ in panels] == [1, 2, 3]

cmap = LinearSegmentedColormap.from_list("site", ["#ffffff", ACCENT])
fig, axs = plt.subplots(1, 3, figsize=(8.4, 3.0))
for ax, (M, title) in zip(axs, panels):
    a = [[float(M[i, j]) for j in range(3)] for i in range(3)]
    ax.imshow([[abs(x) for x in r] for r in a], cmap=cmap, vmin=0, vmax=6, alpha=0.75)
    for i in range(3):
        for j in range(3):
            ax.text(j, i, f"{int(M[i, j])}", ha="center", va="center", color=INK, fontsize=11)
    ax.set_xticks(range(3), [f"$j={j + 1}$" for j in range(3)], fontsize=9)
    ax.set_yticks(range(3), [f"$i={i + 1}$" for i in range(3)], fontsize=9)
    ax.tick_params(length=0, colors=MUTED)
    for s in ax.spines.values():
        s.set_color(GRID)
    ax.set_title(f"{title}: rank {M.rank()}", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "tensor_grid")

# Interactive: the three arrays as heatmaps; hovering a cell shows its index pair and component.
traces, n = [], len(panels)
for k, (M, title) in enumerate(panels):
    a = [[float(M[i, j]) for j in range(3)] for i in range(3)]
    traces.append(dict(type="heatmap", z=a, x=["j=1", "j=2", "j=3"], y=["i=1", "i=2", "i=3"], xaxis=f"x{k + 1}",
                       yaxis=f"y{k + 1}", colorscale=[[0, "#ffffff"], [1, ACCENT]], zmin=-6, zmax=6, showscale=False,
                       text=[[f"{int(x)}" for x in r] for r in a], texttemplate="%{text}",
                       hovertemplate="%{y}, %{x}: %{z}<extra>" + f"rank {M.rank()}" + "</extra>"))
lay = {"showlegend": False}
for k in range(n):
    lay[f"xaxis{k + 1}"] = dict(domain=[k / n + 0.03, (k + 1) / n - 0.03], side="top")
    lay[f"yaxis{k + 1}"] = dict(autorange="reversed", anchor=f"x{k + 1}", scaleanchor=f"x{k + 1}")
save_plotly(traces, "tensor_grid", lay)
