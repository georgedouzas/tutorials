# The cylinder and the Moebius band over the circle, each with a section; the section of the band crosses the zero section.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def view(p, az=np.radians(25), el=np.radians(28)):
    x, y, z = p
    x1, y1 = np.cos(az) * x - np.sin(az) * y, np.sin(az) * x + np.cos(az) * y
    return x1, np.cos(el) * z - np.sin(el) * y1, np.sin(el) * z + np.cos(el) * y1

ph = np.linspace(0, 2 * np.pi, 400)
cyl = lambda f, t: np.array([np.cos(f), np.sin(f), 0.45 * t])
mob = lambda f, t: np.array([(1 + 0.45 * t * np.cos(f / 2)) * np.cos(f), (1 + 0.45 * t * np.cos(f / 2)) * np.sin(f), 0.45 * t * np.sin(f / 2)])
fig, axs = plt.subplots(1, 2, figsize=(7.6, 3.4))
for ax, emb, sec, title in [(axs[0], cyl, 0.5 + 0 * ph, "cylinder"), (axs[1], mob, 0.8 * np.cos(ph / 2), "Möbius band")]:
    for f in np.linspace(0, 2 * np.pi, 25)[:-1]:          # fibres
        X, Y, _ = view(emb(f + 0 * np.linspace(-1, 1, 2), np.linspace(-1, 1, 2)))
        ax.plot(X, Y, color=GRID, lw=0.8)
    for t in (-1, 1):                                     # edges
        X, Y, _ = view(emb(ph, t + 0 * ph)); ax.plot(X, Y, color=INK, lw=1.1)
    X, Y, _ = view(emb(ph, 0 * ph)); ax.plot(X, Y, color=MUTED, lw=1.3, ls="--")
    X, Y, _ = view(emb(ph, sec)); ax.plot(X, Y, color=STATEMENT, lw=2.0)
    ax.text(0, -1.25, title, color=INK, ha="center")
    ax.set_aspect("equal"); ax.set_xlim(-1.6, 1.6); ax.set_ylim(-1.35, 1.1); ax.axis("off")
X, Y, _ = view(mob(np.array([np.pi]), np.array([0.0])))
axs[1].plot(X, Y, "o", color=STATEMENT, ms=5)
save_matplotlib(fig, "mobius_cylinder")
