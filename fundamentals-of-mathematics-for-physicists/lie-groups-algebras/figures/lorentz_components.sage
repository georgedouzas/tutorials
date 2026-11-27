# One element of each component of O(1, 3), restricted to the (x^1, x^0) plane: Lambda_0 B_x(0.5) with
# Lambda_0 = I, Lambda_P, Lambda_T, -I. Blue: image of the time axis e_0; red: image of the space axis e_1; dashed: light cone.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

w = 0.5
B = matrix(RDF, [[math.cosh(w), math.sinh(w)], [math.sinh(w), math.cosh(w)]])
reps = [(matrix(RDF, [[1, 0], [0, 1]]), "(1, 1)"), (matrix(RDF, [[1, 0], [0, -1]]), "(-1, 1)"),
        (matrix(RDF, [[-1, 0], [0, 1]]), "(-1, -1)"), (matrix(RDF, [[-1, 0], [0, -1]]), "(1, -1)")]
fig, axs = plt.subplots(1, 4, figsize=(9.6, 2.9))
for ax, (L0, lab) in zip(axs, reps):
    L = L0 * B
    # checks: sign of Lambda^0_0 and orientation of (L e0, L e1) in the plane
    assert (L[0, 0] > 0) == (L0[0, 0] > 0)
    t0 = L.column(0); s1 = L.column(1)       # components (x^0, x^1)
    ax.plot([-1.6, 1.6], [-1.6, 1.6], "--", color=MUTED, lw=1); ax.plot([-1.6, 1.6], [1.6, -1.6], "--", color=MUTED, lw=1)
    ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
    ax.annotate("", xy=(t0[1], t0[0]), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=2))
    ax.annotate("", xy=(s1[1], s1[0]), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=STATEMENT, lw=2))
    ax.set_xlim(-1.7, 1.7); ax.set_ylim(-1.7, 1.7); ax.set_aspect("equal"); ax.axis("off")
    ax.text(0, 1.95, lab, ha="center", fontsize=12, color=INK)
    ax.text(1.68, -0.22, r"$x^1$", ha="right", fontsize=10, color=MUTED); ax.text(0.08, 1.55, r"$x^0$", fontsize=10, color=MUTED)
fig.tight_layout()
save_matplotlib(fig, "lorentz_components")
