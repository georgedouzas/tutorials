# Exercise exr-gcn-wl-solenoid-circles: for a solenoid of radius R with field B inside (potential A_phi = B s/2 inside,
# B R^2/(2s) outside), the circulation around a centred circle of radius s is B pi s^2 inside and B pi R^2 outside, and
# around off-centre circles it is the flux enclosed; the Wilson loop of charge q is e^{i q circulation}.
import numpy as np
from scipy.integrate import quad
B, R, s = var("B R s", domain="positive")
print("[PASS] centred circles: 2 pi s A_phi = B pi s^2 (s < R) and B pi R^2 (s > R):",
      bool(2 * pi * s * B * s / 2 == pi * B * s^2), bool((2 * pi * s * B * R^2 / (2 * s) - pi * B * R^2).simplify_full() == 0))
Bn, Rn = 1.0, 1.0
def Avec(x, y):
    r = np.hypot(x, y); Aphi = Bn * r / 2 if r < Rn else Bn * Rn**2 / (2 * r)
    return -Aphi * y / r, Aphi * x / r
def circ(cx, cy, rho):
    f = lambda t: np.dot(Avec(cx + rho * np.cos(t), cy + rho * np.sin(t)), (-rho * np.sin(t), rho * np.cos(t)))
    return quad(f, 0, 2 * np.pi, limit=400, points=None)[0]
c1, c2, c3 = circ(1, 0, 3), circ(3, 0, 0.5), circ(0.5, 0, 0.3)
print("circle of radius 3 about (1, 0): %.6f;  pi B R^2 = %.6f" % (c1, np.pi))
print("circle of radius 0.5 about (3, 0): %.2e" % c2)
print("circle of radius 0.3 about (0.5, 0), inside: %.6f;  B pi 0.3^2 = %.6f" % (c3, np.pi * 0.09))
print("[PASS] enclosing, outside and inside loops give pi B R^2, 0 and B times their area:",
      abs(c1 - np.pi) < 1e-6, abs(c2) < 1e-8, abs(c3 - 0.09 * np.pi) < 1e-8)
