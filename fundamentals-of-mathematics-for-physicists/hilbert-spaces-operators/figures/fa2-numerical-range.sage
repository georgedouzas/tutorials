# Values q(u) = u^dagger B u of the quadratic form of a matrix on unit vectors u = (cos t, e^{i phi} sin t) of C^2.
# Left: B = [[1, 2], [0, 1]], whose values fill the disc of centre 1 and radius 1 (complex, so the form is not hermitian).
# Right: H = sigma_1 + sigma_3, whose values fill the real segment [-sqrt 2, sqrt 2] (real, so the form is hermitian).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t, ph = np.meshgrid(np.linspace(0, np.pi/2, 61), np.linspace(0, 2*np.pi, 121))
u1 = np.cos(t); u2 = np.exp(1j*ph)*np.sin(t)
B = np.array([[1, 2], [0, 1]]); H = np.array([[1, 1], [1, -1]])
def q(M):
    return np.conj(u1)*(M[0, 0]*u1 + M[0, 1]*u2) + np.conj(u2)*(M[1, 0]*u1 + M[1, 1]*u2)
qB, qH = q(B), q(H)
assert np.max(np.abs(qB - 1)) <= 1 + 1e-12 and abs(np.max(np.abs(qB - 1)) - 1) < 1e-3
assert np.max(np.abs(qH.imag)) < 1e-12 and abs(np.max(qH.real) - np.sqrt(2)) < 1e-3

fig, (a, b) = plt.subplots(1, 2, figsize=(10, 3.8))
a.scatter(qB.real.ravel(), qB.imag.ravel(), s=2, color=ACCENT, alpha=0.35, lw=0)
s = np.linspace(0, 2*np.pi, 400)
a.plot(1 + np.cos(s), np.sin(s), color=STATEMENT, lw=1.2)
a.plot([1], [0], "o", color=STATEMENT, ms=4)
a.set_title(r"$q(\mathbf{u}) = \mathbf{u}^\dagger\mathbf{B}\mathbf{u}$", fontsize=11)
a.set_xlabel(r"$\mathrm{Re}\,q$"); a.set_ylabel(r"$\mathrm{Im}\,q$")
a.set_aspect("equal"); a.set_xlim(-0.4, 2.4); a.set_ylim(-1.3, 1.3)
b.scatter(qH.real.ravel(), qH.imag.ravel(), s=2, color=ACCENT, alpha=0.35, lw=0)
r2 = np.sqrt(2)
b.plot([-r2, r2], [0, 0], color=STATEMENT, lw=1.6)
b.text(-r2 - 0.25, 0.15, r"$-\sqrt{2}$", color=STATEMENT, fontsize=11); b.text(r2 - 0.15, 0.15, r"$\sqrt{2}$", color=STATEMENT, fontsize=11)
b.set_title(r"$q(\mathbf{u}) = \mathbf{u}^\dagger\mathbf{H}\mathbf{u}$", fontsize=11)
b.set_xlabel(r"$\mathrm{Re}\,q$")
b.set_aspect("equal"); b.set_xlim(-1.9, 1.9); b.set_ylim(-1.3, 1.3)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-numerical-range")
