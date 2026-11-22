# The orbits of the dihedral group D_6 on the 20 arrangements of three red and three blue beads on a hexagon: one
# representative of each of the three orbits (bracelets), with the orbit size printed below it.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle
import math

D6 = DihedralGroup(6)
X = [tuple(1 if i in S else 0 for i in range(1, 7)) for S in Subsets(range(1, 7), 3)]
act = lambda g, x: tuple(x[(g**-1)(i + 1) - 1] for i in range(6))
orbits = []
for x in X:
    o = frozenset(act(g, x) for g in D6)
    if o not in orbits:
        orbits.append(o)
assert len(orbits) == 3 and sum(len(o) for o in orbits) == 20
orbits.sort(key=len)
reps = [max(o) for o in orbits]

fig, axs = plt.subplots(1, 3, figsize=(7.2, 2.7))
for ax, r, o in zip(axs, reps, orbits):
    ax.add_patch(Circle((0, 0), 1, fill=False, ec=MUTED, lw=1.2))
    for k in range(6):
        t = math.pi / 2 - 2 * math.pi * k / 6
        ax.add_patch(Circle((math.cos(t), math.sin(t)), 0.24, fc=STATEMENT if r[k] else ACCENT, ec=INK, lw=0.8, zorder=3))
    ax.text(0, -1.55, "%d arrangements" % len(o), ha="center", fontsize=11, color=INK)
    ax.set_xlim(-1.4, 1.4); ax.set_ylim(-1.85, 1.35); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "bracelets")
