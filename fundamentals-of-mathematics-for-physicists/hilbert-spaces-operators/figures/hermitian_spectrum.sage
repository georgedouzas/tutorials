# The symmetric matrix A = [[2, 1], [1, 2]] maps the unit circle to an ellipse whose axes are the orthonormal
# eigenvectors (1, 1)/sqrt 2 and (1, -1)/sqrt 2, with semi-axes the eigenvalues 3 and 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[2.0, 1.0], [1.0, 2.0]])
w, V = np.linalg.eigh(A)
assert np.allclose(sorted(w), [1, 3])
s = np.linspace(0, 2*np.pi, 400)
circle = np.vstack([np.cos(s), np.sin(s)])
ell = A @ circle
fig, ax = plt.subplots(figsize=(5.2, 4.6))
ax.plot(circle[0], circle[1], "--", color=MUTED, lw=1.0)
ax.plot(ell[0], ell[1], color=ACCENT, lw=1.8)
r2 = np.sqrt(2)
for lam, v, col, lab, off in [(3, np.array([1, 1])/r2, STATEMENT, r"$3\,\mathbf{e}_1$", (0.12, -0.05)),
                              (1, np.array([1, -1])/r2, EXAMPLE, r"$1\,\mathbf{e}_2$", (0.35, -0.35))]:
    ax.annotate("", xy=lam*v, xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=col, lw=1.6))
    ax.text(lam*v[0] + off[0], lam*v[1] + off[1], lab, color=col, fontsize=12)
ax.text(-1.25, 0.75, "unit circle", color=MUTED, fontsize=10)
ax.text(-2.9, -2.55, r"$\mathbf{A}(\mathrm{circle})$", color=ACCENT, fontsize=11)
ax.set_aspect("equal"); ax.set_xlim(-3.3, 3.3); ax.set_ylim(-3.1, 3.1)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "hermitian_spectrum")
