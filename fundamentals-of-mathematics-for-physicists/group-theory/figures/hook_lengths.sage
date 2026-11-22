# The Young diagram of (4, 2, 1) with the hook length h(i, j) written in each box; the hook of the box (1, 2)
# (the box, two boxes to its right, one box below it) is shaded.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

la = Partition([4, 2, 1]); H = la.hook_lengths()
assert H == [[6, 4, 2, 1], [3, 1], [1]]
hook = {(0, 1), (0, 2), (0, 3), (1, 1)}   # zero-based cells of the hook of (1, 2)
assert len(hook) == H[0][1]
fig, ax = plt.subplots(figsize=(3.6, 2.8))
for i, row in enumerate(la):
    for j in range(row):
        fc = "#f3dcd8" if (i, j) in hook else "white"
        ax.add_patch(Rectangle((j, -i - 1), 1, 1, fc=fc, ec=INK, lw=1.3))
        ax.text(j + 0.5, -i - 0.5, str(H[i][j]), ha="center", va="center", fontsize=14,
                color=STATEMENT if (i, j) == (0, 1) else INK)
ax.set_xlim(-0.1, 4.1); ax.set_ylim(-3.1, 0.1); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "hook_lengths")
