# Finite models of connectedness: a graph with two components, and the six-cycle (a discrete circle) with one
# vertex removed (still one component) and with two opposite vertices removed (two components).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin

def components(V, E):
    """Connected components of a graph, by merging along edges."""
    comp = {v: {v} for v in V}
    for a, b in E:
        if comp[a] is not comp[b]:
            u = comp[a] | comp[b]
            for v in u:
                comp[v] = u
    out = []
    for v in V:
        if comp[v] not in out:
            out.append(comp[v])
    return out

# Panel 1: edges AB, BC, DE.
V1 = ["A", "B", "C", "D", "E"]; E1 = [("A", "B"), ("B", "C"), ("D", "E")]
P1 = {"A": (-1.0, 0.45), "B": (0.0, 0.95), "C": (1.0, 0.45), "D": (-0.6, -0.75), "E": (0.6, -0.75)}
assert [sorted(c) for c in components(V1, E1)] == [["A", "B", "C"], ["D", "E"]]

# Panels 2 and 3: the six-cycle 0-1-2-3-4-5-0 on the unit circle, with vertices removed.
C6 = list(range(6)); E6 = [(k, (k + 1) % 6) for k in C6]
P6 = {k: (cos(pi / 2 - 2 * pi * k / 6), sin(pi / 2 - 2 * pi * k / 6)) for k in C6}
def minus(R):
    V = [v for v in C6 if v not in R]
    return V, [(a, b) for a, b in E6 if a not in R and b not in R]
assert len(components(*minus([0]))) == 1 and len(components(*minus([0, 3]))) == 2

fig, axs = plt.subplots(1, 3, figsize=(10.5, 3.9))
cols = [ACCENT, STATEMENT]

def draw(ax, V, E, P, removed, title):
    T = [2 * pi * j / 200 for j in range(201)]
    if removed is not None:
        ax.plot([cos(t) for t in T], [sin(t) for t in T], color=GRID, lw=1, zorder=0)
    comps = components(V, E)
    for a, b in E:
        c = cols[[i for i, k in enumerate(comps) if a in k][0]]
        ax.plot([P[a][0], P[b][0]], [P[a][1], P[b][1]], color=c, lw=2.2, zorder=1)
    for i, k in enumerate(comps):
        for v in k:
            ax.plot(*P[v], "o", ms=17, color=cols[i], zorder=2)
            ax.text(P[v][0], P[v][1], str(v), color="white", ha="center", va="center", fontsize=11, zorder=3)
    for v in removed or []:
        ax.plot(*P[v], "o", ms=17, mfc="none", mec=MUTED, mew=1.4, ls="none", zorder=2)
        ax.plot(*P[v], "x", ms=9, color=MUTED, mew=1.6, zorder=3)
        for a, b in E6:
            if v in (a, b):
                ax.plot([P[a][0], P[b][0]], [P[a][1], P[b][1]], color=MUTED, lw=1, ls=(0, (3, 3)), zorder=0)
    ax.set_title(title, fontsize=11, color=INK)
    ax.set_xlim(-1.4, 1.4); ax.set_ylim(-1.35, 1.35); ax.set_aspect("equal"); ax.axis("off")

draw(axs[0], V1, E1, P1, None, "edges AB, BC, DE: two components")
draw(axs[1], *minus([0]), P6, [0], "six-cycle minus one vertex: one")
draw(axs[2], *minus([0, 3]), P6, [0, 3], "minus two opposite vertices: two")
fig.tight_layout()
save_matplotlib(fig, "components_graph")
