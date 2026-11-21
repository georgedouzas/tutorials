# The product {1, 2} x {a, b, c} as a grid of six pairs: the first factor along the horizontal axis, the second
# along the vertical one, and the two projections reading off the column and the row of a pair.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch

X, Y = [1, 2], ["a", "b", "c"]
pairs = [(x, y) for x in X for y in Y]
assert len(pairs) == len(X) * len(Y) == 6

fig, ax = plt.subplots(figsize=(4.4, 3.8))
for i, x in enumerate(X):
    for j, y in enumerate(Y):
        hl = (x, y) == (2, "b")
        ax.plot(i + 1, j + 1, "o", color=STATEMENT if hl else ACCENT, ms=8 if hl else 7, zorder=5)
        ax.text(i + 1 + 0.12, j + 1 + 0.16, f"$({x}, {y})$", fontsize=10, color=STATEMENT if hl else INK)
    ax.plot(i + 1, -0.1, "s", color=EXAMPLE, ms=7)
    ax.text(i + 1, -0.42, f"${x}$", ha="center", va="top", color=EXAMPLE, fontsize=12)
for j, y in enumerate(Y):
    ax.plot(-0.1, j + 1, "s", color=EXERCISE, ms=7)
    ax.text(-0.4, j + 1, f"${y}$", ha="right", va="center", color=EXERCISE, fontsize=12)
ax.add_patch(FancyArrowPatch((2, 2), (2, -0.1), arrowstyle="-|>", mutation_scale=11, color=EXAMPLE, lw=1, ls="--", shrinkA=6, shrinkB=6))
ax.add_patch(FancyArrowPatch((2, 2), (-0.1, 2), arrowstyle="-|>", mutation_scale=11, color=EXERCISE, lw=1, ls="--", shrinkA=6, shrinkB=6))
ax.text(1.5, -1.05, r"$\{1, 2\}$", ha="center", color=EXAMPLE, fontsize=12)
ax.text(-1.0, 2.0, r"$\{a, b, c\}$", ha="right", va="center", color=EXERCISE, fontsize=12)
ax.set_xlim(-2.4, 3.0); ax.set_ylim(-1.3, 3.6); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "product_grid")
