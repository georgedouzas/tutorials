# The Young diagrams of the seven partitions of 5, each partition placed above its conjugate; (3, 1, 1) is
# self-conjugate and stands alone.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

pairs = [([5], [1, 1, 1, 1, 1]), ([4, 1], [2, 1, 1, 1]), ([3, 2], [2, 2, 1]), ([3, 1, 1], None)]
for la, mu in pairs:
    assert sum(la) == 5 and (mu is None and Partition(la) == Partition(la).conjugate() or Partition(la).conjugate() == Partition(mu))
assert Partitions(5).cardinality() == 7

S = 0.42  # box size

def draw(ax, la, x0, y0, colour):
    for i, row in enumerate(la):
        for j in range(row):
            ax.add_patch(Rectangle((x0 + j * S, y0 - (i + 1) * S), S, S, fc=colour, ec=INK, lw=1.1, alpha=1.0))
    label = "(" + ", ".join(str(p) for p in la) + ")"
    ax.text(x0, y0 + 0.18, label, ha="left", va="bottom", fontsize=11, color=INK)

fig, ax = plt.subplots(figsize=(8.4, 4.6))
x = 0.0
for la, mu in pairs:
    draw(ax, la, x, 0.0, "#dbe7f3")
    if mu is not None:
        draw(ax, mu, x, -2.95, "#f3dcd8")
    x += max(la[0], mu[0] if mu else 0) * S + 0.75
ax.text(-0.15, -1.2, "", fontsize=1)
ax.set_xlim(-0.2, x - 0.4); ax.set_ylim(-5.2, 0.7); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "young_diagrams")
