# Venn diagram of three events on a deck of 52 cards: A = ace, B = spade, C = even number (2, 4, 6, 8, 10).
# Each region carries its number of cards; inclusion-exclusion gives 31 cards in the union.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle, Rectangle

ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suits = ["S", "H", "D", "C"]
deck = [(r, s) for r in ranks for s in suits]
inA = lambda c: c[0] == "A"
inB = lambda c: c[1] == "S"
inC = lambda c: c[0] in ["2", "4", "6", "8", "10"]
def region(a, b, c):
    return len([x for x in deck if inA(x) == a and inB(x) == b and inC(x) == c])

fig, ax = plt.subplots(figsize=(5.2, 4.4))
ax.add_patch(Rectangle((-2.6, -2.7), 5.2, 5.3, fill=False, edgecolor=MUTED, lw=1))
centres = {"A": (-0.75, 0.45), "B": (0.75, 0.45), "C": (0.0, -0.85)}
colours = {"A": ACCENT, "B": STATEMENT, "C": EXAMPLE}
for k, (x, y) in centres.items():
    ax.add_patch(Circle((x, y), 1.25, facecolor=colours[k], alpha=0.16, edgecolor=colours[k], lw=1.8))
ax.text(-2.05, 1.75, r"$A$: ace", color=ACCENT, fontsize=11)
ax.text(1.05, 1.75, r"$B$: spade", color=STATEMENT, fontsize=11)
ax.text(-0.75, -2.5, r"$C$: even number", color=EXAMPLE, fontsize=11)
pos = {(1, 0, 0): (-1.25, 0.75), (0, 1, 0): (1.25, 0.75), (0, 0, 1): (0.0, -1.45),
       (1, 1, 0): (0.0, 0.95), (1, 0, 1): (-0.75, -0.45), (0, 1, 1): (0.75, -0.45), (1, 1, 1): (0.0, 0.05)}
for key, (x, y) in pos.items():
    ax.text(x, y, str(region(*[bool(t) for t in key])), ha="center", va="center", fontsize=12, color=INK)
ax.text(2.1, -2.3, str(region(False, False, False)), ha="center", va="center", fontsize=12, color=MUTED)
ax.set_xlim(-2.7, 2.7); ax.set_ylim(-2.8, 2.7)
ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "inclusion_exclusion")
print("union:", len([x for x in deck if inA(x) or inB(x) or inC(x)]))
