# An equivalence relation on X = {1, 2, 3, 4} drawn as the set of related pairs (x, y) in the grid X x X: the
# diagonal (reflexivity), symmetry about it, and the pair 1 ~ 3 with its mirror 3 ~ 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

X = [1, 2, 3, 4]
R = {(x, x) for x in X} | {(1, 3), (3, 1)}
assert all((y, x) in R for x, y in R)
assert all((x, z) in R for x, y in R for yy, z in R if y == yy)

fig, ax = plt.subplots(figsize=(3.6, 3.6))
for x in X:
    for y in X:
        rel = (x, y) in R
        col = ACCENT if x == y else (STATEMENT if rel else None)
        ax.add_patch(Rectangle((x - 0.5, y - 0.5), 1, 1, facecolor=col if rel else "none", alpha=0.85 if rel else 1,
                               edgecolor=GRID, lw=1))
ax.plot([0.5, 4.5], [0.5, 4.5], color=MUTED, ls="--", lw=0.9)
for k in X:
    ax.text(k, 0.2, f"${k}$", ha="center", va="top", fontsize=12)
    ax.text(0.2, k, f"${k}$", ha="right", va="center", fontsize=12)
ax.text(2.5, -0.35, "$x$", ha="center", va="top", fontsize=12)
ax.text(-0.35, 2.5, "$y$", ha="right", va="center", fontsize=12)
ax.set_xlim(-0.6, 4.6); ax.set_ylim(-0.7, 4.6); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "relation_grid")
