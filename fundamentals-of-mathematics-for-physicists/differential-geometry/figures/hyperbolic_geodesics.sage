# Left: half-plane, the geodesic d (imaginary axis), and geodesics through A = 2 + i; blue miss d, red meets it. Right: the same geodesics in the Poincare disc.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
J = complex(0, 1)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(10, 4.3))
def semicircle(a, R, n=400):
    t = np.linspace(0, np.pi, n); return a + R*np.cos(t), R*np.sin(t)
cur = []  # (x, y, colour) in the half-plane
cur.append((np.zeros(200), np.linspace(1e-3, 4, 200), INK))
cur.append((2 + 0*np.linspace(0, 1, 200), np.linspace(1e-3, 4, 200), ACCENT))
for a in [1.25, 2, 3]:
    R = np.sqrt((2 - a)**2 + 1); x, y = semicircle(a, R); cur.append((x, y, ACCENT))
x, y = semicircle(0, np.sqrt(5)); cur.append((x, y, STATEMENT))
for x, y, c in cur: a1.plot(x, y, color=c, lw=1.6)
a1.plot([2], [1], "o", color=INK); a1.text(2.25, 1.45, r"$A$", color=INK, bbox=dict(facecolor="white", edgecolor="none", pad=0.6)); a1.text(0.1, 3.6, r"$d$", color=INK)
a1.axhline(0, color=MUTED, lw=1); a1.set_xlim(-3, 5); a1.set_ylim(-0.1, 4); a1.set_aspect("equal"); a1.axis("off")
for x, y, c in cur:
    z = np.asarray(x, dtype=float) + J*np.asarray(y, dtype=float); w = (z - J)/(z + J); a2.plot(w.real, w.imag, color=c, lw=1.6)
wa = complex((2 + J - J)/(2 + J + J)); a2.plot([wa.real], [wa.imag], "o", color=INK); a2.text(wa.real + 0.08, wa.imag + 0.1, r"$A$", color=INK, bbox=dict(facecolor="white", edgecolor="none", pad=0.6))
t = np.linspace(0, 2*np.pi, 300); a2.plot(np.cos(t), np.sin(t), color=MUTED, lw=1)
a2.set_aspect("equal"); a2.axis("off")
fig.tight_layout()
save_matplotlib(fig, "hyperbolic_geodesics")
