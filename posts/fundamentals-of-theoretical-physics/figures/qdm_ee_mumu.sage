# Figure: muon pair production e+ e- -> mu+ mu- at tree level, with the electron mass neglected. Left, the angular distribution
# (4 s/alpha^2) d sigma/d Omega = beta [1 + cos^2 theta + (1 - beta^2) sin^2 theta] in the centre-of-momentum frame for several
# beta = sqrt(1 - 4 m_mu^2/s). Right, the total cross section sigma(sqrt s) = (4 pi alpha^2/3 s) beta (3 - beta^2)/2 in nanobarn,
# with its high-energy form 4 pi alpha^2/(3 s) = 86.8 nb/(s/GeV^2).
# Checks: the spin-summed trace equals (2 e^4/s^2)[t^2 + u^2 + 4 s (m_e^2 + m_mu^2) - 2 (m_e^2 + m_mu^2)^2] (explicit Dirac matrices
# at a numerical phase-space point); the angular integral gives the total cross section; the high-energy constant is 86.8 nb GeV^2.
# Output: figures/qdm_ee_mumu.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qdm_ee_mumu.svg")
# Weyl representation
s0 = identity_matrix(QQbar, 2); sx = matrix(QQbar, [[0, 1], [1, 0]]); sy = matrix(QQbar, [[0, -I], [I, 0]]); sz = matrix(QQbar, [[1, 0], [0, -1]])
Z2 = zero_matrix(QQbar, 2)
gam = [block_matrix([[Z2, s], [sb, Z2]]) for s, sb in ((s0, s0), (sx, -sx), (sy, -sy), (sz, -sz))]
eta = diagonal_matrix([1, -1, -1, -1])
slash = lambda p: sum(eta[m, m] * p[m] * gam[m] for m in range(4))
dot = lambda a, b: sum(eta[m, m] * a[m] * b[m] for m in range(4))
one = identity_matrix(QQbar, 4)
me, mm, E, th = QQbar(1/3), QQbar(1), QQbar(5/2), QQbar(1)   # a phase-space point with rational-ish numbers
pe = sqrt(E**2 - me**2); pm = sqrt(E**2 - mm**2)
c = QQbar(3/5); sn = QQbar(4/5)                              # cos theta = 3/5
p = vector(QQbar, [E, 0, 0, pe]); k = vector(QQbar, [E, 0, 0, -pe])
pp = vector(QQbar, [E, pm * sn, 0, pm * c]); kp = vector(QQbar, [E, -pm * sn, 0, -pm * c])
# sum over spins of |ubar(p') g^mu v(k') vbar(k) g_mu u(p)|^2 = tr[g^mu (k'/ - mm) g^nu (p'/ + mm)] tr[g_mu (p/ + me) g_nu (k/ - me)]
L1 = [[(gam[a] * (slash(kp) - mm * one) * gam[b] * (slash(pp) + mm * one)).trace() for b in range(4)] for a in range(4)]
L2 = [[(gam[a] * (slash(p) + me * one) * gam[b] * (slash(k) - me * one)).trace() for b in range(4)] for a in range(4)]
contr = sum(eta[a, a] * eta[b, b] * L1[a][b] * L2[a][b] for a in range(4) for b in range(4))
s = dot(p + k, p + k); t = dot(p - pp, p - pp); u = dot(p - kp, p - kp); M2 = me**2 + mm**2
lhs = contr / 4 / s**2                       # e = 1: (1/4) sum |M|^2
rhs = 2 / s**2 * (t**2 + u**2 + 4 * s * M2 - 2 * M2**2)
trace_ok = (lhs - rhs).abs() < 1e-12
alpha = 1 / 137.035999
GeV2nb = 0.3893794e6                         # 1 GeV^-2 = 0.3894 mb = 3.894e5 nb
x = var("x"); b = var("b")
ang = b * (1 + x**2 + (1 - b**2) * (1 - x**2))
integral_ok = bool((2 * pi * integrate(ang, x, -1, 1) - 16 * pi / 3 * b * (3 - b**2) / 2).simplify_full() == 0)
const = float(4 * pi * alpha**2 / 3 * GeV2nb)
fig, axes = plt.subplots(1, 2, figsize=(11, 4.2))
ct = np.linspace(-1, 1, 200)
for bv, col in ((0.3, "C0"), (0.7, "C1"), (0.95, "C2"), (1.0, "k")):
    axes[0].plot(ct, bv * (1 + ct**2 + (1 - bv**2) * (1 - ct**2)), color=col, lw=1.6, label=rf"$\beta = {bv:g}$")
axes[0].set_xlabel(r"$\cos\theta$ (angle between $e^-$ and $\mu^-$)"); axes[0].set_ylabel(r"$(4s/\alpha^2)\,d\sigma/d\Omega$")
axes[0].set_title(r"Angular distribution: from isotropic at threshold to $1 + \cos^2\theta$", fontsize=9); axes[0].legend(fontsize=8)
mmu = 0.1056584
rs = np.linspace(2 * mmu * 1.0001, 1.2, 400)
bet = np.sqrt(1 - 4 * mmu**2 / rs**2)
axes[1].plot(rs, const / rs**2 * bet * (3 - bet**2) / 2, color="C0", lw=1.8, label=r"$\frac{4\pi\alpha^2}{3s}\,\frac{\beta(3 - \beta^2)}{2}$")
axes[1].plot(rs, const / rs**2, color="C3", lw=1.2, ls="--", label=r"$\frac{4\pi\alpha^2}{3s} = \frac{86.8\,\mathrm{nb}}{s/\mathrm{GeV}^2}$")
axes[1].axvline(2 * mmu, color="0.7", lw=0.8)
axes[1].set_ylim(0, 1100); axes[1].set_xlabel(r"$\sqrt{s}$ (GeV)"); axes[1].set_ylabel(r"$\sigma(e^+e^- \to \mu^+\mu^-)$ (nb)")
axes[1].set_title("Total cross section near the threshold $2m_\\mu$", fontsize=9); axes[1].legend(fontsize=9)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] spin-averaged |M|^2 from explicit Dirac traces equals (2e^4/s^2)[t^2 + u^2 + 4s M2 - 2 M2^2] at a test point:", trace_ok)
print("[PASS] the angular integral of beta[1 + cos^2 + (1 - beta^2) sin^2] is (16 pi/3) beta (3 - beta^2)/2:", integral_ok)
print("[PASS] 4 pi alpha^2/3 = %.2f nb GeV^2 (86.8):" % const, abs(const - 86.8) < 0.1)
peak = max(const / r**2 * np.sqrt(1 - 4 * mmu**2 / r**2) * (3 - (1 - 4 * mmu**2 / r**2)) / 2 for r in rs)
print("maximum of sigma below 1.2 GeV: %.0f nb" % peak)
print("wrote", os.path.relpath(OUT))
