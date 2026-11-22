# Orbits of the symmetry group D_4 of the square, the eight matrices R(k pi/2) and S(k pi/2), on the grid {-2,...,2}^2,
# each orbit in its own colour, with the four mirror axes dashed. The interactive page shows, for each point, its orbit
# size and the order of its stabiliser.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

Rq = matrix(ZZ, [[0, -1], [1, 0]]); Sx = matrix(ZZ, [[1, 0], [0, -1]])
D4 = [g.matrix() for g in MatrixGroup([Rq, Sx])]
assert len(D4) == 8
pts = [vector(ZZ, [a, b]) for a in range(-2, 3) for b in range(-2, 3)]
orbits = []
for p in pts:
    o = frozenset(tuple(m * p) for m in D4)
    if o not in orbits:
        orbits.append(o)
orbits.sort(key=lambda o: (len(o), max(abs(x) + abs(y) for x, y in o)))
stab = {tuple(p): sum(1 for m in D4 if m * p == p) for p in pts}
assert all(len(o) * stab[next(iter(o))] == 8 for o in orbits) and sum(len(o) for o in orbits) == 25
cols = [INK, ACCENT, STATEMENT, EXAMPLE, EXERCISE, ORANGE]

fig, ax = plt.subplots(figsize=(4.4, 4.4))
for t in ([(-2.6, 0), (2.6, 0)], [(0, -2.6), (0, 2.6)], [(-2.6, -2.6), (2.6, 2.6)], [(-2.6, 2.6), (2.6, -2.6)]):
    ax.plot([t[0][0], t[1][0]], [t[0][1], t[1][1]], ls="--", color=GRID, lw=1, zorder=1)
for o, col in zip(orbits, cols):
    xs = [x for x, y in o]; ys = [y for x, y in o]
    ax.scatter(xs, ys, s=110, color=col, zorder=3, label="%d point%s" % (len(o), "" if len(o) == 1 else "s"))
ax.set_xlim(-2.7, 2.7); ax.set_ylim(-2.7, 2.7); ax.set_aspect("equal"); ax.axis("off")
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.02), ncol=3, frameon=False, fontsize=10, handletextpad=0.2)
save_matplotlib(fig, "square_orbits")

traces = []
for i, (o, col) in enumerate(zip(orbits, cols)):
    pl = sorted(o)
    traces.append({"type": "scatter", "mode": "markers", "x": [float(x) for x, y in pl], "y": [float(y) for x, y in pl],
                   "marker": {"size": 16, "color": col},
                   "text": ["point (%d, %d): orbit of %d points, stabiliser of order %d" % (x, y, len(o), stab[(x, y)]) for x, y in pl],
                   "hoverinfo": "text", "name": "orbit of (%d, %d)" % max(pl)})
save_plotly(traces, "square_orbits", {"xaxis": {"range": [-2.7, 2.7], "zeroline": False, "dtick": 1},
                                      "yaxis": {"range": [-2.7, 2.7], "scaleanchor": "x", "zeroline": False, "dtick": 1}})
