# Parallel transport around the octant triangle of the unit sphere: the vector (red) starts at the north pole along the first meridian and returns turned by a right angle.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
s = np.linspace(0, np.pi/2, 60)
arcs = [E(s, 0*s), E(np.pi/2 + 0*s, s), E(np.pi/2 - s, np.pi/2 + 0*s)]
# transported unit vector: velocity on arc 1, (0,0,-1) on arc 2, minus velocity on arc 3
vecs = []
for k in np.linspace(0, 1, 6):
    th = k*np.pi/2; vecs.append((E(th, 0), np.array([np.cos(th), 0, -np.sin(th)])))
for k in np.linspace(0, 1, 6):
    vecs.append((E(np.pi/2, k*np.pi/2), np.array([0, 0, -1.0])))
for k in np.linspace(0, 1, 6):
    th = np.pi/2 - k*np.pi/2; vecs.append((E(th, np.pi/2), np.array([0, np.cos(th), -np.sin(th)]) * 1.0))
fig = plt.figure(figsize=(5, 5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=25, azim=35)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.25, linewidth=0, shade=False, zorder=1)
for c in arcs: ax.plot(*c, color=ACCENT, lw=2, zorder=4)
for p, v in vecs: ax.quiver(*p, *(0.3*v), color=STATEMENT, lw=1.6, arrow_length_ratio=0.3, zorder=6)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.8, 1.0)
save_matplotlib(fig, "parallel_transport_octant")
u, w = var("u w")
G = parametric_plot3d((sin(u)*cos(w), sin(u)*sin(w), cos(u)), (u, 0, pi), (w, 0, 2*pi), color="lightblue", opacity=0.4)
for c in arcs: G += line3d(list(zip(*[map(float, row) for row in c])), color=ACCENT, thickness=3)
for p, v in vecs: G += arrow3d(tuple(map(float, p)), tuple(map(float, p + 0.3*v)), color=STATEMENT, width=2)
save_threejs(G, "parallel_transport_octant")
