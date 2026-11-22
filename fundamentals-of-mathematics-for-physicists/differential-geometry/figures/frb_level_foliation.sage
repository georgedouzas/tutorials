# Leaves of the foliation of R^3 minus the origin by the level sets of F = z^2 - x^2 - y^2: F = 1, 0, -1, cut at |z| = 2.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure(figsize=(6, 5.2)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False)
ph = np.linspace(-np.pi/18, 25*np.pi/18, 60)   # the wedge facing the viewer cut away to show the inner leaves
def surf(c, color, zs):
    Z, P = np.meshgrid(zs, ph); R = np.sqrt(np.maximum(Z**2 - c, 0))
    ax.plot_surface(R*np.cos(P), R*np.sin(P), Z, color=color, alpha=0.45, linewidth=0, shade=False)
    for z0 in zs[::6]:
        r0 = np.sqrt(max(z0**2 - c, 0)); ax.plot(r0*np.cos(ph), r0*np.sin(ph), 0*ph + z0, color=color, lw=0.7)
surf(-1.0, STATEMENT, np.linspace(-2, 2, 37))
for sgn in (1, -1):
    surf(0.0, MUTED, sgn*np.linspace(0.02, 2, 25))
for sgn in (1, -1):
    surf(1.0, ACCENT, sgn*np.linspace(1, 2, 25))
ax.set_box_aspect((1, 1, 1)); ax.view_init(elev=14, azim=-60)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$"); ax.set_zlabel(r"$z$")
ax.set_xticks([-2, 0, 2]); ax.set_yticks([-2, 0, 2]); ax.set_zticks([-2, 0, 2])
save_matplotlib(fig, "frb_level_foliation")
z, f = var("z f")
G = Graphics()
for c, col, rng in [(1, ACCENT, (1, 2)), (1, ACCENT, (-2, -1)), (0, "gray", (0.02, 2)), (0, "gray", (-2, -0.02)), (-1, STATEMENT, (-2, 2))]:
    G += parametric_plot3d((sqrt(z^2 - c)*cos(f), sqrt(z^2 - c)*sin(f), z), (z, rng[0], rng[1]), (f, -pi/18, 25*pi/18), color=col, opacity=0.55, plot_points=[30, 40])
save_threejs(G, "frb_level_foliation")
