# Tangent plane of the sphere at (theta, phi) = (pi/3, pi/4) with d_theta (red), d_phi (green) and X = 0.4 d_theta + 0.5 d_phi (blue).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
th0, ph0 = np.pi/3, np.pi/4
p = E(th0, ph0)
Eth = np.array([np.cos(th0)*np.cos(ph0), np.cos(th0)*np.sin(ph0), -np.sin(th0)])
Eph = np.array([-np.sin(th0)*np.sin(ph0), np.sin(th0)*np.cos(ph0), 0])
fig = plt.figure(figsize=(5, 5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=25, azim=30)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.3, linewidth=0, shade=False, zorder=1)
s, t = np.meshgrid(np.linspace(-0.6, 0.6, 2), np.linspace(-0.6, 0.6, 2))
Q = p[:, None, None] + s*Eth[:, None, None] + t*Eph[:, None, None]/np.linalg.norm(Eph)
ax.plot_surface(*Q, color=MUTED, alpha=0.35, linewidth=0, shade=False, zorder=2)
for v, c in [(Eth, STATEMENT), (Eph, EXAMPLE), (0.4*Eth + 0.5*Eph, ACCENT)]:
    ax.quiver(*p, *(0.6*v/ max(1, 1)), color=c, lw=2.2, arrow_length_ratio=0.2, zorder=6)
ax.scatter(*p, color=INK, s=15, zorder=7)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.9, 0.9)
save_matplotlib(fig, "tangent_vectors", raster=True)
