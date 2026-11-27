# Orbits of the one-parameter subgroups exp(t L_3) and exp(t L_1) of SO(3) on the unit sphere.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt

def view(p, az=np.radians(35), el=np.radians(20)):
    """Orthographic projection: rotate about Z by az, tilt by el; return screen (x, y) and depth."""
    x, y, z = p
    x1, y1 = np.cos(az) * x - np.sin(az) * y, np.sin(az) * x + np.cos(az) * y
    return x1, np.cos(el) * z - np.sin(el) * y1, np.sin(el) * z + np.cos(el) * y1

t = np.linspace(0, 2 * np.pi, 400)
fig, ax = plt.subplots(figsize=(4.6, 4.6))
ax.add_patch(plt.Circle((0, 0), 1, fill=False, color=GRID, lw=1.2))
def curve(P, col):
    X, Y, D = view(P)
    front = D <= 0
    for mask, ls, a in ((front, "-", 1.0), (~front, ":", 0.5)):
        Xm, Ym = np.where(mask, X, np.nan), np.where(mask, Y, np.nan)
        ax.plot(Xm, Ym, ls, color=col, lw=1.6, alpha=a)
for z0 in (-0.6, 0.0, 0.6, 0.9):                       # orbits of exp(t L_3): parallels
    r = np.sqrt(1 - z0**2)
    curve(np.array([r * np.cos(t), r * np.sin(t), z0 + 0 * t]), ACCENT)
for x0 in (-0.5, 0.0, 0.5):                            # orbits of exp(t L_1): circles about the X-axis
    r = np.sqrt(1 - x0**2)
    curve(np.array([x0 + 0 * t, r * np.cos(t), r * np.sin(t)]), STATEMENT)
px, py, _ = view(np.array([0, 0, 1]))
ax.plot([px], [py], "o", color=INK, ms=5)
ax.text(px - 0.3, py + 0.07, r"$\mathbf{e}_3$", color=INK)
ax.text(-1.05, -1.12, r"$e^{tL_3}$", color=ACCENT); ax.text(0.65, -1.12, r"$e^{tL_1}$", color=STATEMENT)
ax.set_aspect("equal"); ax.set_xlim(-1.15, 1.15); ax.set_ylim(-1.2, 1.15); ax.axis("off")
save_matplotlib(fig, "so3_orbits")

# interactive version
G = sphere(opacity=0.25, color="lightgray")
for z0 in (-0.6, 0.0, 0.6, 0.9):
    r = sqrt(1 - z0^2)
    G += parametric_plot3d((r * cos(x), r * sin(x), z0), (x, 0, 2 * pi), color=ACCENT, thickness=3)
for x0 in (-0.5, 0.0, 0.5):
    r = sqrt(1 - x0^2)
    G += parametric_plot3d((x0, r * cos(x), r * sin(x)), (x, 0, 2 * pi), color=STATEMENT, thickness=3)
G += point3d((0, 0, 1), size=12, color="black")
save_threejs(G, "so3_orbits")
