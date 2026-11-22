# The rotation form -y dx + x dy (d = 2 dx^dy) and the radial form x dx + y dy = d(r^2/2) (d = 0), drawn through fields with the same components.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.4))
g = np.linspace(-1.8, 1.8, 10); X, Y = np.meshgrid(g, g)
a1.add_patch(plt.Rectangle((-2, -2), 4, 4, color=STATEMENT, alpha=0.12, lw=0))
a1.quiver(X, Y, -Y, X, color=STATEMENT, angles="xy", scale_units="xy", scale=4, width=0.006)
a1.set_title(r"$\omega = -y\,dx + x\,dy$,  $d\omega = 2\,dx \wedge dy$", fontsize=11)
t = np.linspace(0, 2*np.pi, 200)
for R in [0.5, 1.0, 1.5, 2.0]:
    a2.plot(R*np.cos(t), R*np.sin(t), color=GRID, lw=1)
a2.quiver(X, Y, X, Y, color=ACCENT, angles="xy", scale_units="xy", scale=4, width=0.006)
a2.set_title(r"$\eta = x\,dx + y\,dy = d(r^2/2)$,  $d\eta = 0$", fontsize=11)
for a in (a1, a2):
    a.set_aspect("equal"); a.set_xlim(-2.1, 2.1); a.set_ylim(-2.1, 2.1); a.set_xlabel(r"$x$"); a.set_ylabel(r"$y$")
fig.tight_layout()
save_matplotlib(fig, "exterior_derivative_plane")
