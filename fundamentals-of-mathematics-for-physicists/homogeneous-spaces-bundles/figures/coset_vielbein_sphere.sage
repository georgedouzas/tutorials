# The orthonormal frame E_1 = d/dtheta, E_2 = (1/sin theta) d/dphi dual to the coset vielbein of S^2.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def view(p, az=np.radians(30), el=np.radians(20)):
    x, y, z = p
    x1, y1 = np.cos(az) * x - np.sin(az) * y, np.sin(az) * x + np.cos(az) * y
    return x1, np.cos(el) * z - np.sin(el) * y1, np.sin(el) * z + np.cos(el) * y1

t = np.linspace(0, 2 * np.pi, 400)
fig, ax = plt.subplots(figsize=(4.6, 4.6))
ax.add_patch(plt.Circle((0, 0), 1, fill=False, color=GRID, lw=1.2))
for th0 in (np.pi / 4, np.pi / 2, 3 * np.pi / 4):
    X, Y, D = view(np.array([np.sin(th0) * np.cos(t), np.sin(th0) * np.sin(t), np.cos(th0) + 0 * t]))
    ax.plot(np.where(D <= 0, X, np.nan), np.where(D <= 0, Y, np.nan), color=GRID, lw=1)
L = 0.28
for th in (np.pi / 4, np.pi / 2, 3 * np.pi / 4):
    for ph in np.linspace(-np.pi / 2, np.pi / 2, 4):
        p = np.array([np.sin(th) * np.cos(ph), np.sin(th) * np.sin(ph), np.cos(th)])
        if view(p)[2] > 0:
            continue
        E1 = np.array([np.cos(th) * np.cos(ph), np.cos(th) * np.sin(ph), -np.sin(th)])
        E2 = np.array([-np.sin(ph), np.cos(ph), 0.0])
        a0, b0, _ = view(p)
        for E, col in ((E1, STATEMENT), (E2, EXAMPLE)):
            a1, b1, _ = view(p + L * E)
            ax.annotate("", xy=(a1, b1), xytext=(a0, b0), arrowprops=dict(arrowstyle="-|>", color=col, lw=1.5))
        ax.plot([a0], [b0], "o", color=INK, ms=2.5)
ax.text(-1.1, -1.15, r"$E_1 = \partial_\theta$", color=STATEMENT)
ax.text(0.35, -1.15, r"$E_2 = \partial_\varphi/\sin\theta$", color=EXAMPLE)
ax.set_aspect("equal"); ax.set_xlim(-1.2, 1.2); ax.set_ylim(-1.25, 1.15); ax.axis("off")
save_matplotlib(fig, "coset_vielbein_sphere")
