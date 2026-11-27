load("../../_filters/figstyle.sage")
# The real Clifford algebras Cl(p, q) for 0 <= p, q <= 7, computed by the reduction of thm-clf-classification:
# Cl(p+1, q+1) = M_2(Cl(p, q)), Cl(p, q) = Cl(p-4, q+4) (p >= 4), and the base cases of dimension <= 4.
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

BASE = {(0, 0): ("R", 1, 1), (1, 0): ("R", 1, 2), (0, 1): ("C", 1, 1), (2, 0): ("R", 2, 1), (1, 1): ("R", 2, 1),
        (0, 2): ("H", 1, 1), (3, 0): ("C", 2, 1), (0, 3): ("H", 1, 2), (4, 0): ("H", 2, 1)}


def algebra(p, q):
    """(field, n, copies) with Cl(p, q) = M_n(field)^copies."""
    if (p, q) in BASE:
        return BASE[(p, q)]
    if p >= 1 and q >= 1:
        K, n, c = algebra(p - 1, q - 1)
        return K, 2 * n, c
    if p >= 5:                      # Cl(p, 0) = Cl(p - 4, 4)
        return algebra(p - 4, 4)
    return algebra(4, q - 4)        # Cl(0, q) = Cl(4, q - 4), q >= 4


# cross-check: dimension, and the centre (R + R or C for odd d, R for even d) against Sage for d <= 6
DIM = {"R": 1, "C": 2, "H": 4}
for p in range(8):
    for q in range(8):
        K, n, c = algebra(p, q)
        assert c * n^2 * DIM[K] == 2^(p + q), (p, q)
for p in range(7):
    for q in range(7 - p):
        K, n, c = algebra(p, q)
        Cl = CliffordAlgebra(DiagonalQuadraticForm(QQ, [1] * p + [-1] * q))
        centre = len(Cl.center_basis())
        expected = 1 if (c == 1 and K != "C") else 2
        if (p + q) % 2 == 1:
            assert centre == 2 and expected == 2, (p, q)
        else:
            assert centre == 1 and expected == 1, (p, q)

COLOURS = {("R", 1): "#cfe0f1", ("R", 2): "#8fb5dc", ("C", 1): "#cfe6d7", ("H", 1): "#f0d3cf", ("H", 2): "#dc9f96"}
SYMB = {"R": r"\mathbb{R}", "C": r"\mathbb{C}", "H": r"\mathbb{H}"}

fig, ax = plt.subplots(figsize=(7.2, 6.4))
for p in range(8):
    for q in range(8):
        K, n, c = algebra(p, q)
        ax.add_patch(Rectangle((p, q), 1, 1, facecolor=COLOURS[(K, c)], edgecolor="white", lw=1.5))
        lab = (r"$M_{%d}(%s)$" % (n, SYMB[K])) if n > 1 else r"$%s$" % SYMB[K]
        if c == 2:
            lab = lab[:-1] + r"^{\oplus 2}$"
        ax.text(p + 0.5, q + 0.5, lab, ha="center", va="center", fontsize=7.5, color=INK)
for r0 in range(-7, 8):            # dotted diagonals p - q = const: the same algebra type
    ax.plot([max(0, r0), min(8, 8 + r0)], [max(0, -r0), min(8, 8 - r0)], ls=":", lw=0.6, color=MUTED, zorder=0)
ax.set_xlim(0, 8); ax.set_ylim(0, 8)
ax.set_xticks([k + 0.5 for k in range(8)]); ax.set_xticklabels(range(8))
ax.set_yticks([k + 0.5 for k in range(8)]); ax.set_yticklabels(range(8))
ax.set_xlabel(r"$p$ (generators of square $+1$)"); ax.set_ylabel(r"$q$ (generators of square $-1$)")
ax.set_aspect("equal")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
handles = [Rectangle((0, 0), 1, 1, facecolor=COLOURS[k]) for k in COLOURS]
names = [r"$M_n(\mathbb{R})$", r"$M_n(\mathbb{R})^{\oplus 2}$", r"$M_n(\mathbb{C})$", r"$M_n(\mathbb{H})$",
         r"$M_n(\mathbb{H})^{\oplus 2}$"]
ax.legend(handles, names, loc="upper left", bbox_to_anchor=(1.01, 1.0), frameon=False, fontsize=9)
save_matplotlib(fig, "clf-classification")
