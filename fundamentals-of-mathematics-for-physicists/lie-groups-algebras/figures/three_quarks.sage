# The decomposition 3 x 3 x 3 = 10 + 8 + 8 + 1 by Young diagrams: first 3 x 3 = 6 + 3bar, then one box added to each,
# in all ways that leave a diagram with at most three rows. The dimensions are checked with Sage's Weyl character ring.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
A2 = WeylCharacterRing("A2", style="coroots")
assert A2(1, 0)^3 == A2(3, 0) + 2*A2(1, 1) + A2(0, 0)
assert A2(1, 0)^2 == A2(2, 0) + A2(0, 1)
fig, ax = plt.subplots(figsize=(7.8, 3.6))
s = 0.36
def diagram(x, y, lam, col=ACCENT, new=None):
    for i, row in enumerate(lam):
        for j in range(row):
            fc = "none"
            ax.add_patch(plt.Rectangle((x + j*s, y - (i + 1)*s), s, s, facecolor=fc, edgecolor=col, lw=1.4))
            if new is not None and (i, j) == new:
                ax.text(x + j*s + s/2, y - (i + 1)*s + s/2, r"$3$", ha="center", va="center", fontsize=10, color=STATEMENT)
def txt(x, y, t, size=13, col=INK):
    ax.text(x, y, t, ha="center", va="center", fontsize=size, color=col)
# top line: box x box x box = (row 2 + column 2) x box
y = 0.0
diagram(0.0, y + s/2, [1]); txt(0.6, y, r"$\otimes$"); diagram(0.85, y + s/2, [1]); txt(1.45, y, r"$\otimes$")
diagram(1.7, y + s/2, [1]); txt(2.3, y, r"$=$")
txt(2.65, y, r"$($", 16); diagram(2.85, y + s/2, [2]); txt(3.8, y, r"$\oplus$"); diagram(4.15, y + s, [1, 1]); txt(4.75, y, r"$)$", 16)
txt(5.05, y, r"$\otimes$"); diagram(5.3, y + s/2, [1])
txt(1.0, y - 0.65, r"$\mathbf{3} \otimes \mathbf{3} \otimes \mathbf{3}$", 11, MUTED); txt(3.95, y - 0.65, r"$(\mathbf{6} \oplus \bar{\mathbf{3}}) \otimes \mathbf{3}$", 11, MUTED)
# bottom line: the four diagrams with the added box marked
y = -1.7
txt(0.1, y, r"$=$")
items = [([3], (0, 2), r"$\mathbf{10}$"), ([2, 1], (1, 0), r"$\mathbf{8}$"), ([2, 1], (0, 1), r"$\mathbf{8}$"), ([1, 1, 1], (2, 0), r"$\mathbf{1}$")]
x = 0.45
for k, (lam, new, name) in enumerate(items):
    diagram(x, y + s, lam, new=new)
    w = max(lam)*s
    txt(x + w/2, y - 0.95, name, 12, STATEMENT)
    x += w + 0.35
    if k < 3:
        txt(x, y, r"$\oplus$"); x += 0.4
ax.set_xlim(-0.2, 6.0); ax.set_ylim(-2.95, 0.6); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "three_quarks")
