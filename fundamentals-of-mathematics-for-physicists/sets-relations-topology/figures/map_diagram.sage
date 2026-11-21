# Three maps between finite sets drawn as arrows from the domain X (left) to the codomain Y (right): an injective
# map that is not surjective, a surjective map that is not injective, and a bijection. The properties are checked
# on the tables before drawing.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Ellipse, FancyArrowPatch

maps = [(["1", "2"], ["x", "y", "z"], {"1": "x", "2": "y"}, "injective, not surjective"),
        (["1", "2", "3"], ["x", "y"], {"1": "x", "2": "x", "3": "y"}, "surjective, not injective"),
        (["1", "2", "3"], ["x", "y", "z"], {"1": "y", "2": "z", "3": "x"}, "bijective")]
injective = lambda X, Y, f: len(set(f.values())) == len(X)
surjective = lambda X, Y, f: set(f.values()) == set(Y)
assert [(injective(*m[:3]), surjective(*m[:3])) for m in maps] == [(True, False), (False, True), (True, True)]

fig, axes = plt.subplots(1, 3, figsize=(8.4, 3.2))
ys = lambda n: [1.0 - k * 1.0 for k in range(n)]           # vertical positions of n points, from the top
for ax, (X, Y, f, title) in zip(axes, maps):
    px = {x: (0.0, y) for x, y in zip(X, ys(len(X)))}
    py = {y: (2.0, h) for y, h in zip(Y, ys(len(Y)))}
    for cx, n, col in ((0.0, len(X), ACCENT), (2.0, len(Y), STATEMENT)):
        ax.add_patch(Ellipse((cx, 1.0 - (n - 1) / 2), 0.9, n + 0.4, fill=False, edgecolor=col, linewidth=1.2))
    for x, (a, b) in px.items():
        ax.plot(a, b, "o", color=ACCENT, markersize=7)
        ax.text(a - 0.2, b, f"${x}$", ha="right", va="center", color=ACCENT, fontsize=12)
    for y, (a, b) in py.items():
        ax.plot(a, b, "o", color=STATEMENT, markersize=7)
        ax.text(a + 0.2, b, f"${y}$", ha="left", va="center", color=STATEMENT, fontsize=12)
    for x, y in f.items():
        ax.add_patch(FancyArrowPatch(px[x], py[y], arrowstyle="-|>", mutation_scale=12, color=INK,
                                     linewidth=1.1, shrinkA=6, shrinkB=6))
    ax.text(0.0, 1.85, "$X$", ha="center", color=ACCENT, fontsize=13)
    ax.text(2.0, 1.85, "$Y$", ha="center", color=STATEMENT, fontsize=13)
    ax.text(1.0, 1.85, "$f$", ha="center", color=INK, fontsize=13)
    ax.set_title(title, fontsize=11, color=INK, pad=14)
    ax.set_xlim(-0.8, 2.8); ax.set_ylim(-1.6, 2.2); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "map_diagram")
