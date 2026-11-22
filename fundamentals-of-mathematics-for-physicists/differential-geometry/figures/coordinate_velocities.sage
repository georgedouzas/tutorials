# Coordinate velocities of the spherical parametrisation at three points of the meridian phi = 7 pi/4.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
def Eth(th, ph): return np.array([np.cos(th)*np.cos(ph), np.cos(th)*np.sin(ph), -np.sin(th)])
def Eph(th, ph): return np.array([-np.sin(th)*np.sin(ph), np.sin(th)*np.cos(ph), 0*th])
ph0 = 7*np.pi/4
fig = plt.figure(figsize=(5, 5))
ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=20, azim=-30)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.3, linewidth=0, shade=False, zorder=1)
s = np.linspace(0, np.pi, 200)
ax.plot(*E(s, ph0 + 0*s), color=MUTED, lw=1.2, zorder=4)
for th in (np.pi/2, np.pi/4, np.pi/10):
    p = E(th, ph0)
    ax.plot(*E(th + 0*s*2, s*2), color=GRID, lw=1, zorder=3)
    ax.quiver(*p, *(0.6*Eth(th, ph0)), color=STATEMENT, lw=2, arrow_length_ratio=0.2, zorder=6)
    ax.quiver(*p, *(0.6*Eph(th, ph0)), color=EXAMPLE, lw=2, arrow_length_ratio=0.2, zorder=6)
    ax.scatter(*p, color=INK, s=15, zorder=7)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.9, 0.9)
save_matplotlib(fig, "coordinate_velocities", raster=True)
