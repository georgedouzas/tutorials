# The multiples k(1, 1) = (k mod 2, k mod 3), k = 0, ..., 5, on the grid Z_2 x Z_3: the walk visits all six points
# before returning, because (1, 1) has order lcm(2, 3) = 6.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

pts = [(k % 3, k % 2) for k in range(7)]          # x = residue mod 3, y = residue mod 2
assert len(set(pts[:6])) == 6 and pts[6] == pts[0]
fig, ax = plt.subplots(figsize=(4.2, 2.8))
for a in range(3):
    for b in range(2):
        ax.plot(a, b, "o", color=GRID, ms=16, zorder=1)
for k in range(6):
    (x0, y0), (x1, y1) = pts[k], pts[k + 1]
    ax.annotate("", xy=(x1, y1), xytext=(x0, y0),
                arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.3, shrinkA=10, shrinkB=10, connectionstyle="arc3,rad=0.12"))
    ax.text(x0, y0, str(k), ha="center", va="center", fontsize=11, color=INK, zorder=3)
ax.set_xticks([0, 1, 2]); ax.set_yticks([0, 1])
ax.set_xlabel(r"$k$ mod $3$", color=INK); ax.set_ylabel(r"$k$ mod $2$", color=INK)
ax.set_xlim(-0.5, 2.5); ax.set_ylim(-0.5, 1.5)
for sp in ax.spines.values():
    sp.set_visible(False)
ax.tick_params(colors=INK, length=0)
fig.tight_layout()
save_matplotlib(fig, "crt_grid")
