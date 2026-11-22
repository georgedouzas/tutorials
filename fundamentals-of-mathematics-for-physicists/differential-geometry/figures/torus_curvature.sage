# The torus R = 2, r = 1 coloured by its Gauss curvature cos(a)/(r(R + r cos a)): red positive, blue negative.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm, colors
R, r = 2.0, 1.0
A, B = np.meshgrid(np.linspace(0, 2*np.pi, 90), np.linspace(0, 2*np.pi, 180))
X, Y, Z = (R + r*np.cos(A))*np.cos(B), (R + r*np.cos(A))*np.sin(B), r*np.sin(A)
K = np.cos(A)/(r*(R + r*np.cos(A)))
norm = colors.TwoSlopeNorm(vmin=K.min(), vcenter=0, vmax=K.max())
fig = plt.figure(figsize=(6, 4)); ax = fig.add_subplot(111, projection="3d"); ax.view_init(elev=35, azim=-60)
ax.plot_surface(X, Y, Z, facecolors=cm.coolwarm(norm(K)), linewidth=0, shade=False)
ax.set_box_aspect((1, 1, 0.35)); ax.set_axis_off()
save_matplotlib(fig, "torus_curvature", raster=True)
a, b = var("a b")
def col(x, y):
    k = float(cos(x)/(r*(R + r*cos(x)))); t = (k - K.min())/(K.max() - K.min()); return t
G = parametric_plot3d(((R + r*cos(a))*cos(b), (R + r*cos(a))*sin(b), r*sin(a)), (a, 0, 2*pi), (b, 0, 2*pi), color=(col, colormaps.coolwarm), plot_points=60)
save_threejs(G, "torus_curvature")
