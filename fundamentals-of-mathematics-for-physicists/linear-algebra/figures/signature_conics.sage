# Level sets Q = 1 and Q = -1 of three quadratic forms on the plane, one for each kind of signature in two
# dimensions with a positive direction: x^2 + y^2 (signature (2, 0, 0)), x^2 - y^2 (signature (1, 1, 0)) and
# x^2 (signature (1, 0, 1)). The set Q = 0 is drawn in black: a point, two lines, one line.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

forms = [  # (matrix, signature, title)
    (diagonal_matrix(QQ, [1, 1]), (2, 0, 0), r"$x^2 + y^2$"),
    (diagonal_matrix(QQ, [1, -1]), (1, 1, 0), r"$x^2 - y^2$"),
    (diagonal_matrix(QQ, [1, 0]), (1, 0, 1), r"$x^2$"),
]
for S, sig, _ in forms:
    assert QuadraticForm(QQ, 2 * S).signature_vector() == sig

R = 2.0
xs = np.linspace(-R, R, 401)
X, Y = np.meshgrid(xs, xs)
fig, axes = plt.subplots(1, 3, figsize=(9, 3.3))
for ax, (S, sig, title) in zip(axes, forms):
    a, c = float(S[0, 0]), float(S[1, 1])
    Q = a * X**2 + c * Y**2
    ax.contour(X, Y, Q, levels=[1], colors=[ACCENT], linewidths=2)
    if Q.min() < -1:
        ax.contour(X, Y, Q, levels=[-1], colors=[STATEMENT], linewidths=2, linestyles="solid")
    if sig == (2, 0, 0):
        ax.plot([0], [0], "o", color=INK, markersize=4)
    else:
        ax.contour(X, Y, Q, levels=[0], colors=[INK], linewidths=1.2, linestyles="solid")
    ax.axhline(0, color=GRID, linewidth=0.8, zorder=0)
    ax.axvline(0, color=GRID, linewidth=0.8, zorder=0)
    ax.set_xlim(-R, R)
    ax.set_ylim(-R, R)
    ax.set_aspect("equal")
    ax.set_xticks([])
    ax.set_yticks([])
    for s in ax.spines.values():
        s.set_visible(False)
    ax.set_title(title + "\nsignature $(%d, %d, %d)$" % sig, fontsize=12, color=INK)
axes[1].text(0.08, 1.55, "$Q = -1$", color=STATEMENT, fontsize=11)
axes[1].text(1.15, 0.2, "$Q = 1$", color=ACCENT, fontsize=11)
axes[0].text(0.75, 0.85, "$Q = 1$", color=ACCENT, fontsize=11)
axes[2].text(1.1, 1.55, "$Q = 1$", color=ACCENT, fontsize=11)
axes[2].text(0.12, -1.75, "$Q = 0$", color=INK, fontsize=11)
fig.tight_layout()
save_matplotlib(fig, "signature_conics")
