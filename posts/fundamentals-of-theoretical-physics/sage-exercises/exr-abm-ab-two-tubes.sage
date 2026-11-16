# Exercise exr-abm-ab-two-tubes: two thin tubes with fluxes Phi1 at (-1, 0) and Phi2 at (1, 0). Small circles around each
# give Phi1 and Phi2, a large circle gives Phi1 + Phi2, and the figure eight (2 cos t, 0.8 sin 2t) gives Phi2 - Phi1;
# the holonomy is a homomorphism from loops to U(1) determined by the two winding numbers.
import numpy as np
from scipy.integrate import quad
P1, P2 = 0.7, 1.9
def A(x, y):
    out = np.zeros(2)
    for (cx, F) in ((-1.0, P1), (1.0, P2)):
        dx, dy = x - cx, y
        out += F / (2 * np.pi) * np.array([-dy, dx]) / (dx**2 + dy**2)
    return out
def circ(p, dp):
    return quad(lambda t: np.dot(A(*p(t)), dp(t)), 0, 2 * np.pi, limit=500)[0]
ring = lambda cx, r: (lambda t: (cx + r * np.cos(t), r * np.sin(t)), lambda t: np.array([-r * np.sin(t), r * np.cos(t)]))
c1, c2, c3 = circ(*ring(-1, 0.5)), circ(*ring(1, 0.5)), circ(*ring(0, 3))
c8 = circ(lambda t: (2 * np.cos(t), 0.8 * np.sin(2 * t)), lambda t: np.array([-2 * np.sin(t), 1.6 * np.cos(2 * t)]))
print("around tube 1: %.6f, tube 2: %.6f, both: %.6f, figure eight: %.6f" % (c1, c2, c3, c8))
print("[PASS] Phi1, Phi2, Phi1 + Phi2, Phi2 - Phi1:", abs(c1 - P1) < 1e-8, abs(c2 - P2) < 1e-8, abs(c3 - P1 - P2) < 1e-8, abs(c8 - (P2 - P1)) < 1e-8)
