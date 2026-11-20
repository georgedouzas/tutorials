# Singular values: A = [[3, 0], [4, 5]] maps the unit circle (left) onto an ellipse (right). The right singular
# vectors v1 = (1, 1)/sqrt2, v2 = (1, -1)/sqrt2 go to sigma_i u_i, the semi-axes of the ellipse, with sigma_1 = 3 sqrt5,
# sigma_2 = sqrt5. The eigenvector lines of A, spanned by (0, 1) (eigenvalue 5) and (1, -2) (eigenvalue 3), are
# dashed: each is mapped to itself, but they are not orthogonal and not the axes of the ellipse.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

A = matrix(QQ, [[3, 0], [4, 5]])
S = A.transpose() * A
assert S.charpoly() == (polygen(QQ) - 45) * (polygen(QQ) - 5)
v1, v2 = vector(QQ, [1, 1]), vector(QQ, [1, -1])
assert S * v1 == 45 * v1 and S * v2 == 5 * v2
e5, e3 = vector(QQ, [0, 1]), vector(QQ, [1, -2])
assert A * e5 == 5 * e5 and A * e3 == 3 * e3

Af = [[3.0, 0.0], [4.0, 5.0]]
ts = [2 * math.pi * k / 400 for k in range(401)]
circle = [(math.cos(t), math.sin(t)) for t in ts]
image = [(Af[0][0] * x + Af[0][1] * y, Af[1][0] * x + Af[1][1] * y) for x, y in circle]

fig, axes = plt.subplots(1, 2, figsize=(8.6, 4.6), gridspec_kw={"width_ratios": [1, 1.45]})
r2 = math.sqrt(2.0)
vs = [(1 / r2, 1 / r2), (1 / r2, -1 / r2)]
ims = [(Af[0][0] * a + Af[0][1] * b, Af[1][0] * a + Af[1][1] * b) for a, b in vs]


def arrow(ax, p, col):
    ax.annotate("", xy=p, xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=col, linewidth=2.0, mutation_scale=14))


def eigenlines(ax, R):
    for d in ((0.0, 1.0), (1.0, -2.0)):
        n = math.hypot(*d)
        ax.plot([-R * d[0] / n, R * d[0] / n], [-R * d[1] / n, R * d[1] / n], color=EXAMPLE, linestyle="--",
                linewidth=1.2)


ax = axes[0]
ax.plot(*zip(*circle), color=INK, linewidth=1.4)
eigenlines(ax, 1.5)
arrow(ax, vs[0], ACCENT)
arrow(ax, vs[1], STATEMENT)
ax.text(0.78, 0.8, "$v_1$", color=ACCENT, fontsize=14)
ax.text(0.8, -0.95, "$v_2$", color=STATEMENT, fontsize=14)
ax.set_xlim(-1.6, 1.6)
ax.set_ylim(-1.6, 1.6)

ax = axes[1]
ax.plot(*zip(*image), color=INK, linewidth=1.4)
eigenlines(ax, 7.6)
arrow(ax, ims[0], ACCENT)
arrow(ax, ims[1], STATEMENT)
ax.text(0.45, 6.75, r"$\sigma_1 u_1$", color=ACCENT, fontsize=14)
ax.text(ims[1][0] + 0.25, ims[1][1] - 0.55, r"$\sigma_2 u_2$", color=STATEMENT, fontsize=14)
ax.text(0.25, -7.3, r"$\lambda = 5$", color=EXAMPLE, fontsize=12)
ax.text(-5.0, 4.4, r"$\lambda = 3$", color=EXAMPLE, fontsize=12)
ax.set_xlim(-5.2, 5.2)
ax.set_ylim(-7.6, 7.6)
for ax in axes:
    ax.axhline(0, color=GRID, linewidth=0.8, zorder=0)
    ax.axvline(0, color=GRID, linewidth=0.8, zorder=0)
    ax.set_aspect("equal")
    ax.set_xticks([])
    ax.set_yticks([])
    for s in ax.spines.values():
        s.set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "svd_ellipse")
