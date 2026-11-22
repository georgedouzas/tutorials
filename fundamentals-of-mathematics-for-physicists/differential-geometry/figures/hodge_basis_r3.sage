# The basis one-forms dx, dy, dz of Euclidean R^3, drawn as the vectors e_1, e_2, e_3, and their Hodge duals dy^dz, dz^dx, dx^dy, drawn as oriented unit squares.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
fig = plt.figure(figsize=(10, 4))
names = [(r"$dx$", r"$\star dx = dy \wedge dz$"), (r"$dy$", r"$\star dy = dz \wedge dx$"), (r"$dz$", r"$\star dz = dx \wedge dy$")]
E = np.eye(3)
for i in range(3):
    ax = fig.add_subplot(1, 3, i + 1, projection="3d")
    j, k = (i + 1) % 3, (i + 2) % 3
    sq = [np.zeros(3), E[j], E[j] + E[k], E[k]]
    ax.add_collection3d(Poly3DCollection([sq], facecolor=STATEMENT, alpha=0.25, edgecolor=STATEMENT))
    # orientation of the square: first e_j, then e_k
    ax.quiver(0, 0, 0, *E[j], color=STATEMENT, arrow_length_ratio=0.15, lw=1.4)
    ax.quiver(*E[j], *E[k], color=STATEMENT, arrow_length_ratio=0.15, lw=1.4)
    ax.quiver(0, 0, 0, *(1.3*E[i]), color=ACCENT, arrow_length_ratio=0.12, lw=2)
    for v, lab in zip(E, [r"$x$", r"$y$", r"$z$"]):
        ax.plot(*zip(np.zeros(3), 1.5*v), color=MUTED, lw=0.6)
        ax.text(*(1.6*v), lab, color=MUTED)
    ax.text(*(0.75*E[i] - 0.25*E[j] + 0.05*E[k]), names[i][0], color=ACCENT)
    ax.set_title(names[i][1], fontsize=11, color=INK)
    ax.set_xlim(0, 1.5); ax.set_ylim(0, 1.5); ax.set_zlim(0, 1.5)
    ax.view_init(elev=22, azim=35); ax.set_axis_off()
fig.tight_layout()
save_matplotlib(fig, "hodge_basis_r3")
