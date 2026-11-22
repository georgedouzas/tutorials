# The embedded torus (R = 2, r = 1) with the circle a = 1 around the axis, the tube circle b = 2 and the curve (t, 2t).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
R0, r0 = 2.0, 1.0
def E(a, b):
    return (R0 + r0*np.cos(a))*np.cos(b), (R0 + r0*np.cos(a))*np.sin(b), r0*np.sin(a)
fig = plt.figure(figsize=(5.5, 4))
ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=35, azim=-60)
A, B = np.meshgrid(np.linspace(0, 2*np.pi, 60), np.linspace(0, 2*np.pi, 90))
ax.plot_surface(*E(A, B), color="#c9d6e6", alpha=0.35, linewidth=0, shade=False, zorder=1)
s = np.linspace(0, 2*np.pi, 400)
ax.plot(*E(1 + 0*s, s), color=STATEMENT, lw=2, zorder=5)      # a = 1, b varies: a circle around the axis
ax.plot(*E(s, 2 + 0*s), color=ACCENT, lw=2, zorder=5)         # b = 2, a varies: a circle around the tube
ax.plot(*E(s, 2*s), color=EXAMPLE, lw=2, zorder=5)            # the closed curve (t, 2t)
ax.set_box_aspect((3, 3, 1)); ax.set_axis_off()
ax.set_xlim(-3, 3); ax.set_ylim(-3, 3); ax.set_zlim(-1, 1)
save_matplotlib(fig, "product_square", raster=True)

a, b, t = var("a b t")
F = lambda a, b: ((2 + cos(a))*cos(b), (2 + cos(a))*sin(b), sin(a))
G = parametric_plot3d(F(a, b), (a, 0, 2*pi), (b, 0, 2*pi), color="lightblue", opacity=0.5)
G += parametric_plot3d(F(1, t), (t, 0, 2*pi), color=STATEMENT, thickness=4)
G += parametric_plot3d(F(t, 2), (t, 0, 2*pi), color=ACCENT, thickness=4)
G += parametric_plot3d(F(t, 2*t), (t, 0, 2*pi), color=EXAMPLE, thickness=4, plot_points=400)
save_threejs(G, "product_square")
