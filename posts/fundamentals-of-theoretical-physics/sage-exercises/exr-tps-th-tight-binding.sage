# Exercise exr-tps-th-tight-binding: H = p^2/2 + V0 (1 - cos x) (hbar = m = 1) is invariant under the translation x -> x + 2 pi
# between its wells. The states sum_n e^{i n theta} psi_0(x - 2 pi n) built from a state psi_0 in one well satisfy
# psi(x + 2 pi) = e^{i theta} psi(x); they are written as psi = sum_k c_k e^{i (k + theta/2 pi) x}, which turns H into a
# tridiagonal matrix in k. The lowest band E(theta) is close to
# E_bar - 2 t cos theta, with a cos 2 theta correction from hops over two wells that is much smaller.
import numpy as np
def band(theta, V0, K=40):
    k = np.arange(-K, K + 1); q = k + theta / (2 * np.pi)
    H = np.diag(q**2 / 2 + V0) + np.diag(-V0 / 2 * np.ones(2 * K), 1) + np.diag(-V0 / 2 * np.ones(2 * K), -1)
    return np.linalg.eigvalsh(H)[0]
for V0 in (2.0, 5.0, 10.0):
    ths = np.linspace(-np.pi, np.pi, 41)
    E = np.array([band(t, V0) for t in ths])
    M = np.vstack([np.ones_like(ths), np.cos(ths), np.cos(2 * ths)]).T
    c, res, *_ = np.linalg.lstsq(M, E, rcond=None)
    fit = np.max(np.abs(M @ c - E))
    print("V0 = %4.1f: E(theta) = %.6f %+.3e cos(theta) %+.3e cos(2 theta), fit residual %.1e, |c2/c1| = %.1e, harmonic estimate sqrt(V0) / 2 = %.4f"
          % (V0, c[0], c[1], c[2], fit, abs(c[2] / c[1]), np.sqrt(V0) / 2))
    print("  [PASS] lowest at theta = 0, cos-shaped:", c[1] < 0 and abs(c[2] / c[1]) < 0.05 and np.argmin(E) == 20)
