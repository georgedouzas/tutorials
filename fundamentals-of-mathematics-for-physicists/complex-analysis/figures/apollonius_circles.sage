# The Apollonius circles |z - 1| = lambda |z + 1|: centre (1 + l^2)/(1 - l^2), radius 2 l/|1 - l^2|, for lambda = 1/4, 1/2,
# 3/4 (around 1) and 4/3, 2, 4 (around -1), and the imaginary axis for lambda = 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(5.2, 4.4))
t = np.linspace(0, 2 * np.pi, 400)
lams = [QQ(1) / 4, QQ(1) / 2, QQ(3) / 4, QQ(4) / 3, 2, 4]
for lam, col in zip(lams, [ACCENT, ACCENT, ACCENT, STATEMENT, STATEMENT, STATEMENT]):
    c = (1 + lam ^ 2) / (1 - lam ^ 2)
    r = 2 * lam / abs(1 - lam ^ 2)
    assert c ^ 2 - 1 == r ^ 2                          # the circle passes the check of the text
    ax.plot(float(c) + float(r) * np.cos(t), float(r) * np.sin(t), color=col, lw=1.2)
ax.axvline(0, color=EXAMPLE, lw=1.2)
ax.axhline(0, color=GRID, lw=0.7)
ax.plot([1, -1], [0, 0], "o", color=INK, ms=4)
ax.text(1.08, 0.12, r"$1$", fontsize=11); ax.text(-1.25, 0.12, r"$-1$", fontsize=11)
ax.text(0.08, 2.15, r"$\lambda = 1$", color=EXAMPLE, fontsize=10)
ax.text(1.95, 1.6, r"$\lambda < 1$", color=ACCENT, fontsize=10)
ax.text(-2.9, 1.6, r"$\lambda > 1$", color=STATEMENT, fontsize=10)
ax.set_xlim(-3.3, 3.3); ax.set_ylim(-2.5, 2.5); ax.set_aspect("equal")
ax.set_xlabel(r"$\operatorname{Re} z$"); ax.set_ylabel(r"$\operatorname{Im} z$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "apollonius_circles")
