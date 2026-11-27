# Fibres of the Hopf map over three parallels of S^2, after stereographic projection of S^3 to R^3.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def fibre(th, ph, n=300):
    t = np.linspace(0, 2 * np.pi, n)
    a = np.cos(th / 2) * np.exp(1j * t); b = np.sin(th / 2) * np.exp(1j * (t - ph))
    x1, x2, x3, x4 = a.real, a.imag, b.real, b.imag
    return np.array([x1, x2, x3]) / (1 - x4)

def view(p, az=np.radians(-50), el=np.radians(35)):
    x, y, z = p
    x1, y1 = np.cos(az) * x - np.sin(az) * y, np.sin(az) * x + np.cos(az) * y
    return x1, np.cos(el) * z - np.sin(el) * y1

parallels = [(np.pi / 6, ACCENT), (np.pi / 3, EXAMPLE), (np.pi / 2, STATEMENT)]
fig, ax = plt.subplots(figsize=(4.8, 4.8))
for th, col in parallels:
    for ph in np.linspace(0, 2 * np.pi, 7)[:-1]:
        P = fibre(th, ph)
        P[:, np.linalg.norm(P, axis=0) > 6] = np.nan
        X, Y = view(P); ax.plot(X, Y, color=col, lw=1.3)
u = np.linspace(0, 2 * np.pi, 200)
X, Y = view(np.array([np.cos(u), np.sin(u), 0 * u])); ax.plot(X, Y, color=INK, lw=1.6)
X, Y = view(np.array([0 * u, 0 * u, np.linspace(-2.5, 2.5, 200)])); ax.plot(X, Y, color=MUTED, lw=1.6)
ax.set_aspect("equal"); ax.set_xlim(-2.6, 2.6); ax.set_ylim(-2.6, 2.6); ax.axis("off")
save_matplotlib(fig, "hopf")

# interactive version, with the fibres over the poles
G = Graphics()
for th, col in parallels:
    for ph in np.linspace(0, 2 * np.pi, 9)[:-1]:
        P = fibre(th, ph, 200).T
        pts = [tuple(map(float, q)) for q in P if np.linalg.norm(q) < 8]
        G += line3d(pts, color=col, thickness=2)
G += line3d([(float(np.cos(s)), float(np.sin(s)), 0.0) for s in np.linspace(0, 2 * np.pi, 120)], color="black", thickness=3)
G += line3d([(0, 0, -6), (0, 0, 6)], color="gray", thickness=3)
save_threejs(G, "hopf")
