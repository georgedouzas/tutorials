# Two plane fields on R^3 drawn as small squares: the saddle planes span(d_x + y d_z, d_y + x d_z), tangent to z = xy + c,
# and the contact planes span(d_x + y d_z, d_y), tangent to no surface.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
def squares(ax, frame, color):
    polys = []
    g = np.linspace(-1.5, 1.5, 5)
    for x in g:
        for y in g:
            for z in [-1.4, 1.4]:
                u, v = frame(x, y)
                u = 0.28*u/np.linalg.norm(u); v = v - np.dot(v, u)*u/np.dot(u, u); v = 0.28*v/np.linalg.norm(v)
                c = np.array([x, y, z])
                polys.append([c - u - v, c + u - v, c + u + v, c - u + v])
    ax.add_collection3d(Poly3DCollection(polys, facecolor=color, edgecolor=INK, linewidths=0.3, alpha=0.55))
fig = plt.figure(figsize=(10, 4.6))
a1 = fig.add_subplot(121, projection="3d"); a2 = fig.add_subplot(122, projection="3d")
squares(a1, lambda x, y: (np.array([1, 0, y]), np.array([0, 1, x])), "#9cc0e4")
X, Y = np.meshgrid(np.linspace(-1.6, 1.6, 30), np.linspace(-1.6, 1.6, 30))
a1.plot_wireframe(X, Y, X*Y, color=STATEMENT, linewidth=0.5, rstride=3, cstride=3)
squares(a2, lambda x, y: (np.array([1, 0, y]), np.array([0, 1, 0])), "#e4b49c")
a1.set_title(r"$\mathrm{span}(\partial_x + y\,\partial_z,\ \partial_y + x\,\partial_z)$ and $z = xy$", fontsize=11)
a2.set_title(r"$\mathrm{span}(\partial_x + y\,\partial_z,\ \partial_y)$", fontsize=11)
for ax in (a1, a2):
    ax.set_xlim(-1.8, 1.8); ax.set_ylim(-1.8, 1.8); ax.set_zlim(-2.4, 2.4); ax.view_init(elev=22, azim=-58)
    ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$"); ax.set_zlabel(r"$z$")
    ax.set_xticks([-1, 0, 1]); ax.set_yticks([-1, 0, 1]); ax.set_zticks([-2, 0, 2])
fig.tight_layout()
save_matplotlib(fig, "frb_plane_fields")
