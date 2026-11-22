# Left: Gram-Schmidt in the plane on v_1 = (2, 1), v_2 = (1, 2): e_1 = v_1/sqrt5, the component <e_1, v_2> e_1 = (8/5, 4/5),
# the residual (-3/5, 6/5) and e_2 = (-1, 2)/sqrt5. Right: e^x on [-1, 1] with its Taylor polynomial T_2 and its projection
# P_2 e^x onto the polynomials of degree <= 2 in L^2[-1, 1], and the two errors magnified ten times.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

v1, v2 = np.array([2.0, 1.0]), np.array([1.0, 2.0])
e1 = v1 / np.linalg.norm(v1); comp = np.dot(e1, v2) * e1; w2 = v2 - comp; e2 = w2 / np.linalg.norm(w2)
assert np.allclose(comp, [1.6, 0.8]) and np.allclose(e2, np.array([-1, 2]) / np.sqrt(5))

# Legendre projection: coefficients <P_k, e^x>/<P_k, P_k> with exact integrals
s1 = np.sinh(1.0); em = np.exp(-1.0); E = np.e
c0, c1, c2 = s1, 3 * em, 2.5 * (E - 7 * em)
P = lambda x: c0 + c1 * x + c2 * (1.5 * x**2 - 0.5)
T = lambda x: 1 + x + x**2 / 2
xs = np.linspace(-1, 1, 4001)
errP = np.trapezoid((np.exp(xs) - P(xs))**2, xs); errT = np.trapezoid((np.exp(xs) - T(xs))**2, xs)
assert abs(errP - 0.00144) < 2e-5 and abs(errT - 0.00899) < 2e-4 and errP < errT

fig, (a, b) = plt.subplots(1, 2, figsize=(11, 4.3))
for vec, col, lab, off in ((v1, ACCENT, r"$\mathbf{v}_1$", (0.08, -0.05)), (v2, EXAMPLE, r"$\mathbf{v}_2$", (0.0, 0.1)),
                           (e1, STATEMENT, r"$\mathbf{e}_1$", (0.0, -0.3)), (e2, STATEMENT, r"$\mathbf{e}_2$", (-0.3, 0.0))):
    a.annotate("", xy=vec, xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.8))
    a.text(vec[0] + off[0], vec[1] + off[1], lab, color=col, fontsize=13)
a.plot([0, comp[0]], [0, comp[1]], color=ORANGE, lw=3, alpha=0.7)
a.text(1.55, 0.35, r"$\langle\mathbf{e}_1, \mathbf{v}_2\rangle\mathbf{e}_1$", color=ORANGE, fontsize=12)
a.plot([comp[0], v2[0]], [comp[1], v2[1]], color=MUTED, lw=1, ls="--")
a.text(1.45, 1.55, r"$\mathbf{v}_2 - \langle\mathbf{e}_1, \mathbf{v}_2\rangle\mathbf{e}_1$", color=MUTED, fontsize=11)
a.axhline(0, color=GRID, lw=0.8); a.axvline(0, color=GRID, lw=0.8)
a.set_xlim(-0.8, 2.7); a.set_ylim(-0.3, 2.3); a.set_aspect("equal")

b.plot(xs, np.exp(xs), color=INK, lw=2, label=r"$e^x$")
b.plot(xs, T(xs), color=ACCENT, lw=1.3, label=r"Taylor $T_2$")
b.plot(xs, P(xs), color=STATEMENT, lw=1.3, label=r"projection $P_2e^x$")
b.plot(xs, 10 * (np.exp(xs) - T(xs)), color=ACCENT, lw=1, ls="--", label=r"$10(e^x - T_2)$")
b.plot(xs, 10 * (np.exp(xs) - P(xs)), color=STATEMENT, lw=1, ls="--", label=r"$10(e^x - P_2e^x)$")
b.axhline(0, color=GRID, lw=0.8)
b.legend(loc="upper left", fontsize=9, frameon=False)
b.set_xlim(-1, 1); b.set_ylim(-1.4, 2.9)
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "gram_schmidt_projection")
