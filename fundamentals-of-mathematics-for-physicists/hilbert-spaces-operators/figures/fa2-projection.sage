# Projection theorem in the plane. Left: the nearest point c_0 = u/|u| of the closed unit disc C to u = (2.2, 1.4),
# with a point c of C and the obtuse angle at c_0 between u - c_0 and c - c_0. Right: u = (1, 2) = proj_M u + (u - proj_M u)
# for the line M spanned by (2, 1); proj_M u = (8/5, 4/5) and the residual (-3/5, 6/5) spans M^perp.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Circle

u = np.array([2.2, 1.4]); c0 = u / np.linalg.norm(u); c = np.array([-0.2, -0.7])
assert np.dot(u - c0, c - c0) < 0                       # obtuse angle at c_0
v = np.array([2.0, 1.0]); w = np.array([1.0, 2.0])
p = np.dot(v, w) / np.dot(v, v) * v
assert np.allclose(p, [1.6, 0.8]) and abs(np.dot(w - p, v)) < 1e-14

fig, (a, b) = plt.subplots(1, 2, figsize=(10, 4.2))
a.add_patch(Circle((0, 0), 1, facecolor=MUTED, alpha=0.18, edgecolor=INK, lw=1))
a.text(-0.35, 0.2, "$C$", fontsize=13, color=INK)
a.plot(*u, "o", color=ACCENT, ms=5); a.text(u[0] + 0.07, u[1] + 0.05, "$u$", color=ACCENT, fontsize=13)
a.plot(*c0, "o", color=STATEMENT, ms=5); a.text(c0[0] + 0.05, c0[1] - 0.25, "$c_0$", color=STATEMENT, fontsize=13)
a.plot(*c, "o", color=EXAMPLE, ms=5); a.text(c[0] - 0.25, c[1] - 0.1, "$c$", color=EXAMPLE, fontsize=13)
a.annotate("", xy=u, xytext=c0, arrowprops=dict(arrowstyle="->", color=ACCENT, lw=1.2))
a.annotate("", xy=c, xytext=c0, arrowprops=dict(arrowstyle="->", color=EXAMPLE, lw=1.2))
a.set_xlim(-1.4, 2.8); a.set_ylim(-1.3, 1.9); a.set_aspect("equal")

s = np.linspace(-0.6, 2.6, 10)
b.plot(s, s / 2, color=INK, lw=1); b.text(2.25, 1.25, "$M$", fontsize=13, color=INK)
b.plot(-s / 2.6, s / 1.3, color=MUTED, lw=1, ls="--"); b.text(-0.95, 1.85, r"$M^\perp$", fontsize=13, color=MUTED)
for vec, col in ((w, ACCENT), (p, STATEMENT), (w - p, EXAMPLE)):
    b.annotate("", xy=vec, xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=col, lw=1.4))
b.plot([p[0], w[0]], [p[1], w[1]], color=EXAMPLE, lw=1, ls=":")
b.text(w[0] + 0.06, w[1] + 0.02, "$u$", color=ACCENT, fontsize=13)
b.text(p[0] + 0.05, p[1] - 0.3, r"$\mathrm{proj}_M u$", color=STATEMENT, fontsize=12)
b.text(-1.38, 0.62, r"$u - \mathrm{proj}_M u$", color=EXAMPLE, fontsize=12)
b.set_xlim(-1.4, 2.8); b.set_ylim(-0.6, 2.3); b.set_aspect("equal")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-projection")
