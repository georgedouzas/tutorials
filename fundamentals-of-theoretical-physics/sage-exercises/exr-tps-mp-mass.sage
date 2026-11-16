# Exercise exr-tps-mp-mass: the energy of the Prasad-Sommerfield monopole, E = int (B^a_i B^a_i/2 + D_i Phi^a D_i Phi^a/2) d^3x
# with B = D Phi, equals 4 pi v/g, computed from the radial density for several (g, v); half of it is magnetic. The
# radial density is 4 pi r^2 B^a_i B^a_i, evaluated on the z axis (it is rotation invariant), with xi = g v r:
# B^a_i B^a_i = g^2 v^4 [2 K'^2/xi^2 + (1 - K^2)^2/xi^4] (the transverse and radial components).
import numpy as np
from scipy.integrate import quad
x, y, z, g, v = var("x y z g v", domain="real")
X = [x, y, z]; r = sqrt(x^2 + y^2 + z^2); s = g * v * r
K = s / sinh(s)
eps = lambda a, b, c: (a - b) * (b - c) * (c - a) / 2
A = [[sum(eps(a, i, j) * X[j] for j in range(3)) * (1 - K) / (g * r^2) for i in range(3)] for a in range(3)]
F = lambda a, i, j: diff(A[a][j], X[i]) - diff(A[a][i], X[j]) + g * sum(eps(a, b, c) * A[b][i] * A[c][j] for b in range(3) for c in range(3))
B2 = sum((-sum(eps(l, i, j) * F(a, i, j) for i in range(3) for j in range(3)) / 2)^2 for a in range(3) for l in range(3))
xi = var("xi", domain="positive"); Kx = xi / sinh(xi)
pred = 2 * diff(Kx, xi)^2 / xi^2 + (1 - Kx^2)^2 / xi^4
for (gg, vv) in [(1, 1), (0.65, 2.0), (2.0, 0.5)]:
    b2 = B2.subs({x: 0, y: 0, g: gg, v: vv})
    test = abs((b2 - gg^2 * vv^4 * pred.subs(xi=gg * vv * z)).subs(z=0.83).n())
    f = fast_callable(pred, vars=[xi], domain=RDF)
    # E = int 4 pi r^2 B^2 dr = (4 pi v/g) int xi^2 pred(xi) dxi; the tail beyond xi = 60 is int 1/xi^2 = 1/60
    I = quad(lambda t: t^2 * f(t), 1e-6, 60, limit=400)[0] + 1 / 60
    E = 4 * pi.n() * vv / gg * I
    print("g = %.2f, v = %.2f: density formula off by %.1e; E = %.6f, 4 pi v/g = %.6f" % (gg, vv, test, E, 4 * pi.n() * vv / gg))
    print("  [PASS] E = 4 pi v/g:", abs(E - 4 * pi.n() * vv / gg) < 1e-6 and test < 1e-10)
print("[PASS] the radial integral int_0^oo xi^2 (2 K'^2/xi^2 + (1 - K^2)^2/xi^4) dxi = 1:", abs(quad(lambda t: t^2 * fast_callable(pred, vars=[xi], domain=RDF)(t), 1e-6, 60, limit=400)[0] + 1 / 60 - 1) < 1e-8)
