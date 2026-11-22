# The rotation field d_phi (blue) and the meridian field -sin(theta) d_theta (red) on the sphere, drawn as ambient vectors; both vanish at the poles.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
def rot(th, ph): return np.array([-np.sin(th)*np.sin(ph), np.sin(th)*np.cos(ph), 0*th])
def mer(th, ph): return -np.sin(th)*np.array([np.cos(th)*np.cos(ph), np.cos(th)*np.sin(ph), -np.sin(th)])
fig = plt.figure(figsize=(5, 5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=20, azim=30)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.3, linewidth=0, shade=False, zorder=1)
view = np.array([np.cos(np.radians(20))*np.cos(np.radians(30)), np.cos(np.radians(20))*np.sin(np.radians(30)), np.sin(np.radians(20))])
pts = []
for th in np.linspace(np.pi/8, 7*np.pi/8, 6):
    for ph in np.linspace(0, 2*np.pi, 10, endpoint=False):
        if E(th, ph) @ view > 0: pts.append((th, ph))
for th, ph in pts:
    p = E(th, ph)
    ax.quiver(*p, *(0.25*rot(th, ph)), color=ACCENT, lw=1.5, arrow_length_ratio=0.3, zorder=5)
    ax.quiver(*p, *(0.25*mer(th, ph)), color=STATEMENT, lw=1.5, arrow_length_ratio=0.3, zorder=5)
ax.scatter([0, 0], [0, 0], [1, -1], color=INK, s=20, zorder=7)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.9, 0.9)
save_matplotlib(fig, "sphere_vector_fields", raster=True)
# interactive version
th, ph = var("th ph")
G = parametric_plot3d((sin(th)*cos(ph), sin(th)*sin(ph), cos(th)), (th, 0, pi), (ph, 0, 2*pi), color="lightblue", opacity=0.5)
for t0 in [k*pi/8 for k in range(1, 8)]:
    for p0 in [k*pi/5 for k in range(10)]:
        a = vector(RDF, [sin(t0)*cos(p0), sin(t0)*sin(p0), cos(t0)])
        r = vector(RDF, [-sin(t0)*sin(p0), sin(t0)*cos(p0), 0]); m = -sin(t0)*vector(RDF, [cos(t0)*cos(p0), cos(t0)*sin(p0), -sin(t0)])
        G += arrow3d(a, a + 0.25*r, color=ACCENT, width=1.5)
        G += arrow3d(a, a + 0.25*m, color=STATEMENT, width=1.5)
G += point3d([(0, 0, 1), (0, 0, -1)], color=INK, size=12)
save_threejs(G, "sphere_vector_fields")
