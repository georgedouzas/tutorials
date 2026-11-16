# Exercise exr-gqn-fp-copies: on the circle of radius r, the slice x_2 = c is met twice for |c| < r and never for |c| > r; the
# Faddeev-Popov-weighted integral counts the intersections, the unweighted one gives 2/sqrt(r^2 - c^2), which depends on the orbit.
# The delta function is a Gaussian of width 1e-4; the integrand vanishes except within 40 widths of an intersection angle,
# so the integral over the circle is the sum of the integrals over those windows.
from scipy.integrate import quad
import math
eps = 1e-4
delta = lambda u: math.exp(-u**2 / (2 * eps**2)) / math.sqrt(2 * math.pi * eps**2)
for r, c in ((1.0, 0.0), (1.0, 0.3), (2.0, 0.3), (1.0, 0.99), (1.0, 1.5)):
    roots = [math.asin(c / r), math.pi - math.asin(c / r)] if abs(c) < r else []
    F = lambda t: r * math.sin(t)
    w1 = w0 = 0.0
    for t0 in roots:
        h = 40 * eps / abs(r * math.cos(t0))
        w1 += quad(lambda t: abs(r * math.cos(t)) * delta(F(t) - c), t0 - h, t0 + h, limit=200)[0]
        w0 += quad(lambda t: delta(F(t) - c), t0 - h, t0 + h, limit=200)[0]
    pred = 2 / math.sqrt(r**2 - c**2) if abs(c) < r else 0.0
    print("r = %.1f, c = %.2f: intersections %d, with |det| %.6f, without %.6f, 2/sqrt(r^2 - c^2) = %.6f" % (r, c, len(roots), w1, w0, pred))
