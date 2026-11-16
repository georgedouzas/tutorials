# Exercise exr-tps-in-hedgehog-winding: for U = exp(f(r) xhat_i 2T_i) = cos f + sin f xhat_i 2T_i, T_i = -(i/2) sigma_i, the
# winding density -(1/24 pi^2) eps_ijk Tr(L_i L_j L_k), L = U^{-1} dU, equals (1/2 pi^2) f' sin^2 f/r^2, so that
# n[U] = (2/pi) int f' sin^2 f dr = (1/pi)[f - sin(2f)/2] from r = 0 to r = oo: n = 1 for f(0) = -pi, f(oo) = 0. Checked at
# points for a sample profile, then integrated for several profiles.
x, y, z = var("x y z", domain="real"); X = [x, y, z]; r = sqrt(x^2 + y^2 + z^2)
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * m for m in s]
eps = lambda a, b, c: (a - b) * (b - c) * (c - a) / 2
fprof = lambda t: -pi * exp(-t^2)                  # f(0) = -pi, f(oo) = 0
f = fprof(r)
U = cos(f) * identity_matrix(SR, 2) + sin(f) * sum(X[i] / r * 2 * T[i] for i in range(3))
Ui = cos(f) * identity_matrix(SR, 2) - sin(f) * sum(X[i] / r * 2 * T[i] for i in range(3))
L = [Ui * diff(U, X[i]) for i in range(3)]
dens = -sum(eps(i, j, k) * (L[i] * L[j] * L[k]).trace() for i in range(3) for j in range(3) for k in range(3) if len({i, j, k}) == 3) / (24 * pi^2)
t = var("t"); fp = diff(fprof(t), t)
pred = (1 / (2 * pi^2)) * fp * sin(fprof(t))^2 / t^2
worst = max(abs((dens - pred.subs(t=r)).subs({x: a, y: b, z: c}).n()) for (a, b, c) in [(0.3, -0.2, 0.5), (1.1, 0.4, -0.7), (-0.6, 0.9, 0.2)])
print("[PASS] density = (1/2 pi^2) f' sin^2 f / r^2 (largest difference %.1e):" % worst, worst < 1e-12)
import numpy as np
from scipy.integrate import quad
for name, F, expect in [("-pi e^{-r^2}", lambda t: -np.pi * np.exp(-t**2), 1), ("-2 pi/(1 + r^2)", lambda t: -2 * np.pi / (1 + t**2), 2),
                        ("pi e^{-r}", lambda t: np.pi * np.exp(-t), -1), ("-(pi/2) e^{-r^2}", lambda t: -np.pi / 2 * np.exp(-t**2), 0.5)]:
    h = 1e-6
    n = quad(lambda t: (2 / np.pi) * (F(t + h) - F(t - h)) / (2 * h) * np.sin(F(t))**2, 1e-8, 50, limit=400)[0]
    print("  f = %-16s: n = %+.6f, (1/pi)[f - sin 2f/2] from 0 to oo gives %+.6f" % (name, n, expect))
    print("  [PASS]", abs(n - expect) < 1e-6)
