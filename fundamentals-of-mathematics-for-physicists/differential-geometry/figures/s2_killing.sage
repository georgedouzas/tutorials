# The three Killing fields K_1, K_2, K_3 of the round sphere, the restrictions of e_a x x, drawn as ambient arrows; each vanishes where its axis meets the sphere.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def E(th, ph): return np.array([np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)])
axes = [np.array([1.0, 0, 0]), np.array([0, 1.0, 0]), np.array([0, 0, 1.0])]
cols = [STATEMENT, EXAMPLE, ACCENT]
elev, azim = 22, 35
fig = plt.figure(figsize=(5, 5)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=elev, azim=azim)
T, P = np.meshgrid(np.linspace(0, np.pi, 40), np.linspace(0, 2*np.pi, 80))
ax.plot_surface(*E(T, P), color="#c9d6e6", alpha=0.3, linewidth=0, shade=False, zorder=1)
view = np.array([np.cos(np.radians(elev))*np.cos(np.radians(azim)), np.cos(np.radians(elev))*np.sin(np.radians(azim)), np.sin(np.radians(elev))])
for th in np.linspace(np.pi/7, 6*np.pi/7, 5):
    for ph in np.linspace(0, 2*np.pi, 9, endpoint=False):
        p = E(th, ph)
        if p @ view <= 0.15: continue
        for e, c in zip(axes, cols):
            ax.quiver(*p, *(0.22*np.cross(e, p)), color=c, lw=1.4, arrow_length_ratio=0.3, zorder=5)
for e, c in zip(axes, cols):                                   # the zeros: where each axis meets the sphere
    for s in (1, -1):
        if s*e @ view > 0: ax.scatter(*(s*e), color=c, s=30, edgecolor=INK, zorder=7)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
for f in (ax.set_xlim, ax.set_ylim, ax.set_zlim): f(-0.9, 0.9)
save_matplotlib(fig, "s2_killing", raster=True)
# interactive version: the arrows and, in the colour of each field, five integral curves (circles about its axis)
th, ph = var("th ph")
G = parametric_plot3d((sin(th)*cos(ph), sin(th)*sin(ph), cos(th)), (th, 0, pi), (ph, 0, 2*pi), color="lightblue", opacity=0.4)
for k, (e, c) in enumerate(zip(axes, cols)):
    ev = vector(RDF, e); u = vector(RDF, axes[(k + 1) % 3]); w = ev.cross_product(u)
    for h in [-0.8, -0.4, 0, 0.4, 0.8]:
        rho = sqrt(1 - h**2); s = var("s")
        G += parametric_plot3d(tuple(h*ev + rho*(cos(s)*u + sin(s)*w)), (s, 0, 2*pi), color=c, thickness=2)
    G += point3d([tuple(ev), tuple(-ev)], color=c, size=14)
for t0 in [k*pi/7 for k in range(1, 7)]:
    for p0 in [k*pi/4 for k in range(8)]:
        a = vector(RDF, [sin(t0)*cos(p0), sin(t0)*sin(p0), cos(t0)])
        for e, c in zip(axes, cols):
            G += arrow3d(a, a + 0.2*vector(RDF, e).cross_product(a), color=c, width=1.2)
save_threejs(G, "s2_killing")
