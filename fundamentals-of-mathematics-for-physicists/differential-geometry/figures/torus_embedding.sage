# The torus R = 2, r = 4/5 in R^3 with its tube circles b = const (red) and axis circles a = const (blue).
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
R, r = 2.0, 0.8
def E(a, b): return np.array([(R + r*np.cos(a))*np.cos(b), (R + r*np.cos(a))*np.sin(b), r*np.sin(a)])
fig = plt.figure(figsize=(6, 4)); ax = fig.add_subplot(111, projection="3d", computed_zorder=False); ax.view_init(elev=35, azim=-60)
A, B = np.meshgrid(np.linspace(0, 2*np.pi, 60), np.linspace(0, 2*np.pi, 120))
ax.plot_surface(*E(A, B), color="#c9d6e6", alpha=0.35, linewidth=0, shade=False, zorder=1)
t = np.linspace(0, 2*np.pi, 200)
for b0 in np.linspace(0, 2*np.pi, 12, endpoint=False):
    ax.plot(*E(t, 0*t + b0), color=STATEMENT, lw=1.2, zorder=3)
for a0 in [0, np.pi/2, np.pi, 3*np.pi/2]:
    ax.plot(*E(0*t + a0, t), color=ACCENT, lw=1.5, zorder=4)
ax.set_box_aspect((1, 1, 0.35)); ax.set_axis_off()
save_matplotlib(fig, "torus_embedding", raster=True)
a, b = var("a b")
G = parametric_plot3d(((R + r*cos(a))*cos(b), (R + r*cos(a))*sin(b), r*sin(a)), (a, 0, 2*pi), (b, 0, 2*pi), color="lightblue", opacity=0.6)
for b0 in [k*pi/6 for k in range(12)]:
    G += parametric_plot3d(((R + r*cos(a))*cos(b0), (R + r*cos(a))*sin(b0), r*sin(a)), (a, 0, 2*pi), color=STATEMENT, thickness=2)
for a0 in [0, pi/2, pi, 3*pi/2]:
    G += parametric_plot3d(((R + r*cos(a0))*cos(b), (R + r*cos(a0))*sin(b), r*sin(a0)), (b, 0, 2*pi), color=ACCENT, thickness=2)
save_threejs(G, "torus_embedding")
