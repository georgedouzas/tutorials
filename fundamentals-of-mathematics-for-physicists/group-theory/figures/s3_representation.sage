# The triangle representation of S_3: for each element, where it sends the labelled vertices of a triangle, and its
# 2 x 2 matrix in the orthonormal basis f1 = (e1 - e2)/sqrt 2, f2 = (e1 + e2 - 2 e3)/sqrt 6 of the plane x1 + x2 + x3 = 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon

G = SymmetricGroup(3)
F = matrix(SR, [[1/sqrt(2), 1/sqrt(6)], [-1/sqrt(2), 1/sqrt(6)], [0, -2/sqrt(6)]])
def P(g):
    return matrix(SR, 3, 3, lambda i, j: 1 if g(j + 1) == i + 1 else 0)
def rho(g):
    return (F.transpose() * P(g) * F).apply_map(lambda x: QQbar(x).radical_expression())
pos = [vector(RDF, F.row(i)) for i in range(3)]       # vertex i is the projection of e_i
def tex(x):
    return "$" + latex(x) + "$"
order = [G("()"), G("(1,2,3)"), G("(1,3,2)"), G("(1,2)"), G("(1,3)"), G("(2,3)")]
fig, axes = plt.subplots(2, 3, figsize=(8.4, 6.2))
for ax, g in zip(axes.flat, order):
    M = rho(g)
    assert (M.transpose() * M - 1).simplify_full() == 0
    ax.add_patch(Polygon([tuple(p) for p in pos], closed=True, fc="#e8eef6", ec=ACCENT, lw=1.4))
    for i in range(3):
        q = pos[g(i + 1) - 1]                          # label i sits where e_i is sent
        ax.plot(q[0], q[1], "o", color=ACCENT, ms=5)
        ax.text(1.28 * q[0], 1.28 * q[1], str(i + 1), ha="center", va="center", fontsize=12, color=STATEMENT)
    name = "e" if g == G.one() else "(" + r"\," .join(str(x) for x in g.cycle_tuples()[0]) + ")"
    ax.set_title("$" + name + "$", fontsize=12, color=INK)
    for i in range(2):                                 # the matrix, entry by entry, between drawn brackets
        for j in range(2):
            ax.text(-0.45 + 0.9 * j, -1.42 - 0.38 * i, "$" + latex(M[i, j]) + "$", ha="center", va="center", fontsize=10, color=INK)
    for sgn in [-1, 1]:
        ax.plot([sgn * 0.95, sgn * 1.05, sgn * 1.05, sgn * 0.95], [-1.2, -1.25, -1.75, -1.8], color=INK, lw=0.9)
    ax.set_xlim(-1.3, 1.3); ax.set_ylim(-1.95, 1.15); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "s3_representation")
