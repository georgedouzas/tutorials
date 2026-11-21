# The twelve numbers 0, ..., 11 placed like the hours of a clock and grouped into the three classes of congruence
# modulo 3; each class is an inscribed square, and every number lies on exactly one square.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from math import pi, cos, sin

classes = {r: [n for n in range(12) if n % 3 == r] for r in range(3)}
assert sorted(sum(classes.values(), [])) == list(range(12))
cols = [ACCENT, STATEMENT, EXAMPLE]
pos = {n: (sin(2 * pi * n / 12), cos(2 * pi * n / 12)) for n in range(12)}

fig, ax = plt.subplots(figsize=(3.8, 3.8))
for r, members in classes.items():
    pts = [pos[n] for n in members] + [pos[members[0]]]
    ax.fill([p[0] for p in pts], [p[1] for p in pts], color=cols[r], alpha=0.10)
    ax.plot([p[0] for p in pts], [p[1] for p in pts], color=cols[r], lw=1.3)
    for n in members:
        ax.plot(*pos[n], "o", color=cols[r], ms=8, zorder=5)
        ax.text(1.2 * pos[n][0], 1.2 * pos[n][1], f"${n}$", color=cols[r], ha="center", va="center", fontsize=12)
ax.set_xlim(-1.4, 1.4); ax.set_ylim(-1.4, 1.4); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "classes_mod3")
