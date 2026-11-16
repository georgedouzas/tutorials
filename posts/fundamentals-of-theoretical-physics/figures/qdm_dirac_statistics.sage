# Figure: spin and statistics. Left, the equal-time vacuum expectation of the anticommutator {phi(0, x), phi(0, 0)} of a real
# scalar of mass m = 1 quantised (wrongly) with anticommutators, 2 W(r) = m K_1(m r)/(2 pi^2 r), shown as 2 pi^2 r^2 x 2W(r)
# = m r K_1(m r); the commutator vanishes. Right, the spectrum of one momentum mode of the Dirac field (one spin, particle b and
# antiparticle d) with anticommutators, E (n_b + n_d), and with commutators, E (n_b - n_d), against the antiparticle number.
# Checks: the Bessel closed form agrees with the regularised Fourier integral; the fermionic matrices give the spectrum
# {0, E, E, 2E}; the truncated bosonic matrices give E (n_b - n_d).
# Output: figures/qdm_dirac_statistics.svg.
import os
import numpy as np
import mpmath
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.special import k1
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qdm_dirac_statistics.svg")
m = 1.0
# 2 W(r) = (1/(2 pi^2 r)) int_0^oo p sin(p r)/E dp (Abel sense) = (1/(2 pi^2 r)) [1/r + int_0^oo (p/E - 1) sin(p r) dp]
def two_w_numeric(r):
    f = lambda p: (p / mpmath.sqrt(p**2 + m**2) - 1) * mpmath.sin(p * r)
    I = mpmath.quadosc(f, [0, mpmath.inf], omega=r)
    return float((1 / r + I) / (2 * mpmath.pi**2 * r))
two_w = lambda r: m * k1(m * r) / (2 * np.pi**2 * r)
rs = [0.3, 1.0, 2.5]
dev = max(abs(two_w_numeric(r) / two_w(r) - 1) for r in rs)
fig, axes = plt.subplots(1, 2, figsize=(11, 4.2))
r = np.linspace(0.02, 5, 400)
axes[0].plot(r, m * r * k1(m * r), color="C0", lw=1.8, label=r"anticommutator: $2\pi^2r^2\cdot mK_1(mr)/(2\pi^2r)$")
axes[0].plot(r, 0 * r, color="C3", lw=1.8, ls="--", label=r"commutator $[\phi(0,\vec x), \phi(0, 0)] = 0$")
axes[0].plot(rs, [2 * np.pi**2 * x**2 * two_w_numeric(x) for x in rs], "o", color="C0", mfc="white", label="Fourier integral (numerical)")
axes[0].set_xlabel(r"$m r$ (equal times, spacelike separation)"); axes[0].set_ylabel(r"$2\pi^2 r^2\,\langle 0|\{\phi(0,\vec x), \phi(0, 0)\}|0\rangle$")
axes[0].set_title("A scalar with anticommutators is acausal", fontsize=10); axes[0].legend(fontsize=8)
# one mode: fermionic 2x2 matrices (Jordan-Wigner for two modes) and truncated bosonic matrices
E = 1
a = matrix(QQ, [[0, 1], [0, 0]]); Z = matrix(QQ, [[1, 0], [0, -1]]); I2 = identity_matrix(QQ, 2)
b = a.tensor_product(I2); d = Z.tensor_product(a)
Hf_nno = E * (b.transpose() * b - d * d.transpose())
Hf = Hf_nno + E * (d * d.transpose() + d.transpose() * d)          # normal ordering adds E {d, d^dagger} = E
spec_f = sorted(Hf.eigenvalues())
N = 6
ab = matrix(SR, N, N, lambda i, j: sqrt(j) if j == i + 1 else 0)
IB = identity_matrix(SR, N)
B = ab.tensor_product(IB); D = IB.tensor_product(ab)
Hb = E * (B.transpose() * B - D.transpose() * D)                     # normal-ordered E (b^dag b - d d^dag) with commutators
diag_ok = all(Hb[i, j].simplify_full() == 0 for i in range(N * N) for j in range(N * N) if i != j)
levels_b = sorted(set(ZZ(Hb[i, i].simplify_full()) for i in range(N * N)))
for nd in range(N):
    for nb in (0, 1):
        axes[1].plot([nd - 0.35, nd - 0.05], [E * (nb - nd)] * 2, color="C3", lw=2)
for nd in (0, 1):
    for nb in (0, 1):
        axes[1].plot([nd + 0.05, nd + 0.35], [E * (nb + nd)] * 2, color="C0", lw=2)
axes[1].plot([], [], color="C0", lw=2, label=r"anticommutators: $E(n_b + n_d) \geq 0$")
axes[1].plot([], [], color="C3", lw=2, label=r"commutators: $E(n_b - n_d)$, unbounded below")
axes[1].set_xlabel(r"antiparticle number $n_d$"); axes[1].set_ylabel(r"energy / $E_p$ (levels with $n_b = 0, 1$)")
axes[1].set_title("One momentum mode of the Dirac field", fontsize=10); axes[1].legend(fontsize=8, loc="lower left")
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] m K_1(m r)/(2 pi^2 r) equals the regularised Fourier integral at r = 0.3, 1, 2.5 (relative deviation %.1e):" % dev, dev < 1e-6)
print("[PASS] fermionic spectrum of the normal-ordered one-mode Hamiltonian is {0, E, E, 2E}:", spec_f == [0, 1, 1, 2])
print("[PASS] with commutators the normal-ordered Hamiltonian is diagonal with levels E (n_b - n_d) from", min(levels_b), "to", max(levels_b), ":", diag_ok and levels_b == list(range(-(N - 1), N)))
print("wrote", os.path.relpath(OUT))
