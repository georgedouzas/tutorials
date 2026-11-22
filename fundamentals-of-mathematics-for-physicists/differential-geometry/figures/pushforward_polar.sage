# The polar map pushes the constant fields d_r (red) and d_phi (green) on the (r, phi) rectangle to radial and angular fields of the plane.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.2))
rs = np.array([0.8, 1.4]); ps = np.array([0, np.pi/4, np.pi/2, 3*np.pi/4])
dr, dp = 0.3, 0.3
for r in np.linspace(0.5, 2, 6):
    a1.plot([r, r], [0, np.pi], color=GRID, lw=0.8)
    t = np.linspace(0, np.pi, 100); a2.plot(r*np.cos(t), r*np.sin(t), color=GRID, lw=0.8)
for p in np.linspace(0, np.pi, 9):
    a1.plot([0.5, 2], [p, p], color=GRID, lw=0.8)
    a2.plot([0.5*np.cos(p), 2*np.cos(p)], [0.5*np.sin(p), 2*np.sin(p)], color=GRID, lw=0.8)
R, P = np.meshgrid(rs, ps)
a1.quiver(R, P, dr + 0*R, 0*P, color=STATEMENT, angles="xy", scale_units="xy", scale=1, width=0.007)
a1.quiver(R, P, 0*R, dp + 0*P, color=EXAMPLE, angles="xy", scale_units="xy", scale=1, width=0.007)
a1.set_xlim(0.4, 2.1); a1.set_ylim(-0.1, np.pi + 0.1)
a1.set_xlabel(r"$r$"); a1.set_ylabel(r"$\varphi$"); a1.set_title(r"$\partial_r$ and $\partial_\varphi$ on the rectangle", fontsize=11)
X, Y = R*np.cos(P), R*np.sin(P)
a2.quiver(X, Y, dr*np.cos(P), dr*np.sin(P), color=STATEMENT, angles="xy", scale_units="xy", scale=1, width=0.007)
a2.quiver(X, Y, -dp*R*np.sin(P), dp*R*np.cos(P), color=EXAMPLE, angles="xy", scale_units="xy", scale=1, width=0.007)
a2.set_aspect("equal"); a2.set_xlim(-2.2, 2.2); a2.set_ylim(-0.2, 2.3)
a2.set_xlabel(r"$x$"); a2.set_ylabel(r"$y$"); a2.set_title("their pushforwards to the plane", fontsize=11)
fig.tight_layout()
save_matplotlib(fig, "pushforward_polar")
