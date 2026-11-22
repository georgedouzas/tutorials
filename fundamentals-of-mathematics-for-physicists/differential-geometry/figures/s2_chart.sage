# The spherical chart on S^2: parallels, meridians, the poles, and the point (pi/3, pi/4) with its two coordinate curves.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def E(th, ph):
    return np.sin(th)*np.cos(ph), np.sin(th)*np.sin(ph), np.cos(th)

th0, ph0 = np.pi/3, np.pi/4
elev, azim = 20, 35
view = np.array([np.cos(np.radians(elev))*np.cos(np.radians(azim)),
                 np.cos(np.radians(elev))*np.sin(np.radians(azim)), np.sin(np.radians(elev))])

def draw(ax, xs, ys, zs, **kw):
    # front half solid, back half faint
    front = (np.array(xs)*view[0] + np.array(ys)*view[1] + np.array(zs)*view[2]) >= 0
    for mask, alpha in ((front, 1.0), (~front, 0.25)):
        x = np.where(mask, xs, np.nan); y = np.where(mask, ys, np.nan); z = np.where(mask, zs, np.nan)
        ax.plot(x, y, z, alpha=alpha, **kw)

fig = plt.figure(figsize=(5, 5))
ax = fig.add_subplot(111, projection="3d")
ax.view_init(elev=elev, azim=azim)
t = np.linspace(0, 2*np.pi, 300)
for th in np.linspace(np.pi/8, 7*np.pi/8, 7):
    draw(ax, *E(th, t), color=INK, lw=0.8)
s = np.linspace(0, np.pi, 200)
for ph in np.linspace(0, 2*np.pi, 12, endpoint=False):
    draw(ax, *E(s, ph + 0*s), color=MUTED, lw=0.8)
ax.scatter([0, 0], [0, 0], [1, -1], color=STATEMENT, s=30, depthshade=False)
ax.text(0, 0, 1.12, r"$N$", color=STATEMENT); ax.text(0, 0, -1.25, r"$S$", color=STATEMENT)
s1 = np.linspace(0, th0, 80)
ax.plot(*E(s1, ph0 + 0*s1), color=EXAMPLE, lw=2.2)
p1 = np.linspace(0, ph0, 80)
ax.plot(*E(th0 + 0*p1, p1), color=EXAMPLE, lw=2.2)
ax.scatter(*[[c] for c in E(th0, ph0)], color=EXAMPLE, s=35, depthshade=False)
x0, y0, z0 = E(th0, ph0)
ax.set_box_aspect((1, 1, 1)); ax.set_axis_off()
lim = 0.9
ax.set_xlim(-lim, lim); ax.set_ylim(-lim, lim); ax.set_zlim(-lim, lim)
save_matplotlib(fig, "s2_chart", raster=True)

# interactive version
th, ph = var("th ph")
G = parametric_plot3d((sin(th)*cos(ph), sin(th)*sin(ph), cos(th)), (th, 0, pi), (ph, 0, 2*pi), color="lightblue", opacity=0.5)
for t0 in [k*pi/8 for k in range(1, 8)]:
    G += parametric_plot3d((sin(t0)*cos(ph), sin(t0)*sin(ph), cos(t0)), (ph, 0, 2*pi), color=INK, thickness=1.5)
for p0 in [k*pi/6 for k in range(12)]:
    G += parametric_plot3d((sin(th)*cos(p0), sin(th)*sin(p0), cos(th)), (th, 0, pi), color=MUTED, thickness=1.5)
G += point3d([(0, 0, 1), (0, 0, -1)], color=STATEMENT, size=12)
G += parametric_plot3d((sin(th)*cos(pi/4), sin(th)*sin(pi/4), cos(th)), (th, 0, pi/3), color=EXAMPLE, thickness=4)
G += parametric_plot3d((sin(pi/3)*cos(ph), sin(pi/3)*sin(ph), cos(pi/3)), (ph, 0, pi/4), color=EXAMPLE, thickness=4)
save_threejs(G, "s2_chart")
