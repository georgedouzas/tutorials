# The 24 permutations of S_4 sorted into their five conjugacy classes by cycle type, each column headed by the
# Young diagram of the cycle type and the class size 24/z.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

G = SymmetricGroup(4)
types = [[1, 1, 1, 1], [2, 1, 1], [2, 2], [3, 1], [4]]
cols = {tuple(t): [] for t in types}
for g in G:
    cols[tuple(g.cycle_type())].append(g)
assert [len(cols[tuple(t)]) for t in types] == [Partition(t).conjugacy_class_size() for t in types] == [1, 6, 3, 8, 6]

def cyc(g):
    s = "".join("(" + " ".join(str(a) for a in c) + ")" for c in g.cycle_tuples())
    return s if s else "e"

S = 0.28
fig, ax = plt.subplots(figsize=(9.0, 4.8))
for k, t in enumerate(types):
    x0 = k * 2.0
    for i, row in enumerate(t):
        for j in range(row):
            ax.add_patch(Rectangle((x0 + j * S, 0.9 - i * S), S, S, fc="#dbe7f3", ec=INK, lw=1.0))
    ax.text(x0, 1.45, "(" + ", ".join(map(str, t)) + ")  %d" % len(cols[tuple(t)]), fontsize=10.5, color=STATEMENT)
    for r, g in enumerate(sorted(cols[tuple(t)], key=cyc)):
        ax.text(x0, -0.55 - 0.42 * r, cyc(g), fontsize=10.5, color=INK, family="monospace")
ax.set_xlim(-0.1, 9.7); ax.set_ylim(-4.2, 1.8); ax.axis("off")
save_matplotlib(fig, "s4_classes")
