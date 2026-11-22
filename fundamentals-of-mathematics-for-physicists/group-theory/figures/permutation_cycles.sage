# The perfect shuffle of eight cards, sigma(p) = position of the card that was at position p: sigma = (2 3 5)(4 7 6),
# with fixed points 1 and 8, drawn as arrows p -> sigma(p) grouped by cycles.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, Circle
import math

sigma = {p: (2 * p - 1 if p <= 4 else 2 * (p - 4)) for p in range(1, 9)}
cycles, seen = [], set()
for p in range(1, 9):
    if p not in seen:
        c = [p]; seen.add(p)
        while sigma[c[-1]] != p:
            c.append(sigma[c[-1]]); seen.add(c[-1])
        cycles.append(c)
assert sorted(map(tuple, cycles)) == [(1,), (2, 3, 5), (4, 7, 6), (8,)]
fig, ax = plt.subplots(figsize=(7.0, 2.6))
centres = {(1,): (0.0, 0.0), (2, 3, 5): (2.4, 0.0), (4, 7, 6): (5.0, 0.0), (8,): (7.4, 0.0)}
for c in cycles:
    cx, cy = centres[tuple(c)]
    if len(c) == 1:
        ax.add_patch(Circle((cx, cy + 0.42), 0.32, fill=False, ec=MUTED, lw=1.3))
        ax.annotate("", xy=(cx + 0.06, cy + 0.11), xytext=(cx + 0.25, cy + 0.2),
                    arrowprops=dict(arrowstyle="-|>", color=MUTED, lw=1.3))
        ax.add_patch(Circle((cx, cy), 0.17, fc="white", ec=INK, lw=1.2, zorder=3))
        ax.text(cx, cy, str(c[0]), ha="center", va="center", fontsize=12, zorder=4)
        continue
    pos = [(cx + 0.85 * math.cos(math.pi / 2 + 2 * math.pi * j / 3), cy + 0.85 * math.sin(math.pi / 2 + 2 * math.pi * j / 3))
           for j in range(3)]
    col = ACCENT if c[0] == 2 else STATEMENT
    for j in range(3):
        a, b = pos[j], pos[(j + 1) % 3]
        ax.add_patch(FancyArrowPatch(a, b, connectionstyle="arc3,rad=0.25", arrowstyle="-|>", mutation_scale=14,
                                     color=col, lw=1.5, shrinkA=11, shrinkB=11))
    for j, p in enumerate(c):
        ax.add_patch(Circle(pos[j], 0.17, fc="white", ec=INK, lw=1.2, zorder=3))
        ax.text(pos[j][0], pos[j][1], str(p), ha="center", va="center", fontsize=12, zorder=4)
ax.set_xlim(-0.6, 8.0); ax.set_ylim(-1.0, 1.1); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "permutation_cycles")
