# The harmonic function u = x + x y = r cos(theta) + (1/2) r^2 sin(2 theta) on the unit disc, the solution of the Dirichlet
# problem with boundary values cos(theta) + (1/2) sin(2 theta). Filled contours, with dots at the maximum and the minimum,
# which lie on the circle at theta = pi/6 and 5 pi/6 (values +-3 sqrt(3)/4).
# Interactive: the graph of u over the disc as a Plotly surface.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, y, th = var("x y theta")
u = x + x * y
assert diff(u, x, 2) + diff(u, y, 2) == 0
g = u.subs(x=cos(th), y=sin(th))
assert bool((g - (cos(th) + sin(2 * th) / 2)).simplify_full() == 0)
assert bool((g.subs({th: pi / 6}) - 3 * sqrt(3) / 4).simplify_full() == 0) and bool((g.subs({th: 5 * pi / 6}) + 3 * sqrt(3) / 4).simplify_full() == 0)

R, T = np.meshgrid(np.linspace(0, 1, 120), np.linspace(0, 2 * np.pi, 241))
X, Y = R * np.cos(T), R * np.sin(T)
U = X + X * Y
fig, ax = plt.subplots(figsize=(4.6, 4.2))
cf = ax.contourf(X, Y, U, levels=np.linspace(-1.3, 1.3, 27), cmap="RdBu_r")
ax.contour(X, Y, U, levels=np.linspace(-1.2, 1.2, 13), colors=[INK], linewidths=0.4)
ax.plot(np.cos(T[:, 0]), np.sin(T[:, 0]), color=INK, lw=1.0)
pmax = (np.cos(np.pi / 6), np.sin(np.pi / 6)); pmin = (np.cos(5 * np.pi / 6), np.sin(5 * np.pi / 6))
ax.plot(*pmax, "o", color=INK, ms=6); ax.plot(*pmin, "o", color=INK, ms=6)
ax.annotate("max", pmax, xytext=(pmax[0] + 0.12, pmax[1] + 0.12), fontsize=10)
ax.annotate("min", pmin, xytext=(pmin[0] - 0.4, pmin[1] + 0.12), fontsize=10)
ax.set_aspect("equal"); ax.set_xlim(-1.25, 1.25); ax.set_ylim(-1.15, 1.25)
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
cb = fig.colorbar(cf, ax=ax, shrink=0.8, ticks=[-1, 0, 1]); cb.set_label("$u$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplace_disk")

Rs, Ts = np.meshgrid(np.linspace(0, 1, 40), np.linspace(0, 2 * np.pi, 81))
Xs, Ys = Rs * np.cos(Ts), Rs * np.sin(Ts)
surf = dict(type="surface", x=[floats(r) for r in Xs], y=[floats(r) for r in Ys], z=[floats(r) for r in Xs + Xs * Ys],
            colorscale="RdBu", reversescale=True, showscale=False, name="u = x + xy")
rim = dict(type="scatter3d", mode="lines", x=floats(np.cos(Ts[:, 0])), y=floats(np.sin(Ts[:, 0])),
           z=floats(np.cos(Ts[:, 0]) + np.cos(Ts[:, 0]) * np.sin(Ts[:, 0])), line=dict(color=INK, width=4), name="boundary values")
save_plotly([surf, rim], "laplace_disk", dict(scene=dict(xaxis=dict(title="x"), yaxis=dict(title="y"), zaxis=dict(title="u")), margin=dict(l=0, r=0, t=0, b=0)))
