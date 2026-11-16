# Exercise exr-abm-ab-winding: outside a thin flux tube on the z axis, A = (Phi/2pi)(-y, x)/(x^2 + y^2); the circulation
# around the curve (2 + cos 3t)(cos nt, sin nt), t in [0, 2pi], is n Phi for n = 1, 2, -1, and around a circle that does
# not enclose the tube it is 0, so the holonomy e^{i q oint A . dl} is e^{i n q Phi}.
import numpy as np
from scipy.integrate import quad
Phi = 1.0
A = lambda x, y: (Phi / (2 * np.pi)) * np.array([-y, x]) / (x**2 + y**2)
def circ(path, dpath):
    return quad(lambda t: np.dot(A(*path(t)), dpath(t)), 0, 2 * np.pi, limit=400)[0]
res = {}
for n in (1, 2, -1):
    p = lambda t, n=n: ((2 + np.cos(3 * t)) * np.cos(n * t), (2 + np.cos(3 * t)) * np.sin(n * t))
    dp = lambda t, n=n: np.array([-3 * np.sin(3 * t) * np.cos(n * t) - n * (2 + np.cos(3 * t)) * np.sin(n * t),
                                  -3 * np.sin(3 * t) * np.sin(n * t) + n * (2 + np.cos(3 * t)) * np.cos(n * t)])
    res[n] = circ(p, dp); print("n = %2d: circulation / Phi = %.8f" % (n, res[n] / Phi))
c0 = circ(lambda t: (5 + np.cos(t), np.sin(t)), lambda t: np.array([-np.sin(t), np.cos(t)]))
print("circle about (5, 0): circulation = %.1e" % c0)
print("[PASS] circulations are n Phi:", all(abs(res[n] - n * Phi) < 1e-8 for n in res))
print("[PASS] the loop that does not wind gives 0:", abs(c0) < 1e-10)
