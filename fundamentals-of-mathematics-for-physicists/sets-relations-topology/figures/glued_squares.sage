# Surfaces glued from a square: edges with the same arrow mark are identified so that the arrows match. Cylinder
# (vertical edges, same direction), torus (both pairs, same direction), Moebius band (vertical edges, opposite
# directions) and projective plane (both pairs, opposite directions).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

def arrow(ax, p, q, col, double=False):
    # an arrow head at the middle of the edge from p to q
    m = ((p[0] + q[0]) / 2, (p[1] + q[1]) / 2)
    d = ((q[0] - p[0]) * 0.08, (q[1] - p[1]) * 0.08)
    for s in ((0,) if not double else (-0.06, 0.06)):
        c = (m[0] + (q[0] - p[0]) * s, m[1] + (q[1] - p[1]) * s)
        ax.annotate("", xy=(c[0] + d[0], c[1] + d[1]), xytext=(c[0] - d[0], c[1] - d[1]),
                    arrowprops=dict(arrowstyle="-|>", color=col, lw=1.6, mutation_scale=16))

# each surface: (name, vertical gluing: +1 same direction / -1 opposite / 0 none, horizontal gluing likewise)
surfaces = [("cylinder", 1, 0), ("torus $T^2$", 1, 1), ("Möbius band", -1, 0), (r"projective plane $\mathbb{RP}^2$", -1, -1)]
fig, axs = plt.subplots(1, 4, figsize=(10.4, 3.0))
for ax, (name, vert, hor) in zip(axs, surfaces):
    ax.fill([0, 1, 1, 0], [0, 0, 1, 1], color=ACCENT, alpha=0.10, lw=0)
    for (p, q), glued in (((0, 0), (0, 1)), vert), (((1, 0), (1, 1)), vert), (((0, 0), (1, 0)), hor), (((0, 1), (1, 1)), hor):
        ax.plot([p[0], q[0]], [p[1], q[1]], color=STATEMENT if glued and p[0] == q[0] else (EXAMPLE if glued else MUTED),
                lw=2.2 if glued else 1.2)
    if vert:
        arrow(ax, (0, 0), (0, 1), STATEMENT)
        arrow(ax, (1, 0), (1, 1), STATEMENT) if vert == 1 else arrow(ax, (1, 1), (1, 0), STATEMENT)
    if hor:
        arrow(ax, (0, 0), (1, 0), EXAMPLE, double=True)
        arrow(ax, (0, 1), (1, 1), EXAMPLE, double=True) if hor == 1 else arrow(ax, (1, 1), (0, 1), EXAMPLE, double=True)
    ax.text(0.5, -0.22, name, ha="center", va="top", fontsize=11)
    ax.set_xlim(-0.15, 1.15); ax.set_ylim(-0.45, 1.12); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "glued_squares")
