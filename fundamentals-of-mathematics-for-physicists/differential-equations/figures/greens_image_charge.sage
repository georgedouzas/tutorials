# Equipotentials in the plane x3 = 0 of a unit charge at (0.5, 0) inside a grounded sphere of radius 1 and of its image
# charge -R/|x| = -2 at x* = R^2 x/|x|^2 = (2, 0) (thm-green-representation (3)). Checked: the potential vanishes on the circle.
# Interactive: the potential over the disc as a Plotly surface.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

a, s = 0.5, 2.0
phi = lambda X, Y: 1 / np.hypot(X - a, Y) - s / np.hypot(X - 1 / a, Y)
th = np.linspace(0, 2 * np.pi, 361)
assert np.max(np.abs(phi(np.cos(th), np.sin(th)))) < 1e-12
X, Y = np.meshgrid(np.linspace(-1.6, 2.6, 421), np.linspace(-1.6, 1.6, 321))
P = phi(X, Y)
fig, ax = plt.subplots(figsize=(5.8, 4.2))
levels = [-3, -2, -1.5, -1, -0.5, -0.25, 0, 0.25, 0.5, 1, 2, 4]
cs = ax.contour(X, Y, np.clip(P, -6, 6), levels=levels, colors=[MUTED], linewidths=0.7)
ax.plot(np.cos(th), np.sin(th), color=INK, lw=1.6)
ax.plot([a], [0], "o", color=ACCENT, ms=7, label="charge $+1$")
ax.plot([1 / a], [0], "o", color=STATEMENT, ms=7, label="image $-2$")
ax.legend(frameon=False, loc="upper left", fontsize=10)
ax.set_aspect("equal"); ax.set_xlim(-1.6, 2.6); ax.set_ylim(-1.6, 1.6)
ax.set_xlabel("$x^1$"); ax.set_ylabel("$x^2$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "greens_image_charge")
R, T = np.meshgrid(np.linspace(0, 0.98, 50), np.linspace(0, 2 * np.pi, 91))
Xs, Ys = R * np.cos(T), R * np.sin(T)
Z = np.clip(phi(Xs, Ys), -1, 8)
surf = dict(type="surface", x=[floats(r) for r in Xs], y=[floats(r) for r in Ys], z=[floats(r) for r in Z], colorscale="Blues",
            showscale=False, name="potential inside the sphere")
save_plotly([surf], "greens_image_charge", dict(scene=dict(xaxis=dict(title="x1"), yaxis=dict(title="x2"), zaxis=dict(title="potential")),
                                                 margin=dict(l=0, r=0, t=0, b=0)))
