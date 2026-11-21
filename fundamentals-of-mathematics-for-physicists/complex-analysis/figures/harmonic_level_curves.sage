# Level curves of u (blue) and v (red) for f = u + iv. Left: f = z^2 on [-2, 2]^2, levels -3, -2.5, ..., 3.
# Right: f = z + 1/z on |z| > 1 in [-3, 3] x [-2, 2], levels of u (equipotentials) and of v (streamlines) in steps
# of 0.5; the unit circle (the cylinder) lies on the streamline v = 0.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

# checks: u, v harmonic and conjugate for both functions
x, y = var("x y", domain="real")
for F in ((x + I*y)^2, (x + I*y) + 1/(x + I*y)):
    g = F.expand()
    u, v = g.real_part().simplify_full(), g.imag_part().simplify_full()
    assert (diff(u, x, 2) + diff(u, y, 2)).simplify_full() == 0
    assert (diff(u, x) - diff(v, y)).simplify_full() == 0 and (diff(u, y) + diff(v, x)).simplify_full() == 0

fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.6, 4.0), gridspec_kw={"width_ratios": [1, 1.5]})
xs = np.linspace(-2, 2, 401)
X, Y = np.meshgrid(xs, xs)
Z = X + 1j * Y
W = Z**2
lev = np.arange(-3, 3.01, 0.5)
ax.contour(X, Y, W.real, levels=lev, colors=ACCENT, linewidths=0.9, linestyles="solid")
ax.contour(X, Y, W.imag, levels=lev, colors=STATEMENT, linewidths=0.9, linestyles="solid")
ax.set_aspect("equal"); ax.set_title(r"$f = z^2$", fontsize=11)
ax.set_xticks([-2, 0, 2]); ax.set_yticks([-2, 0, 2])
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")

xs = np.linspace(-3, 3, 601); ys = np.linspace(-2, 2, 401)
X, Y = np.meshgrid(xs, ys)
Z = X + 1j * Y
with np.errstate(divide="ignore", invalid="ignore"):
    W = Z + 1 / Z
W[np.abs(Z) < 1] = np.nan
lev = np.arange(-5, 5.01, 0.5)
bx.contour(X, Y, W.real, levels=lev, colors=ACCENT, linewidths=0.9, linestyles="solid")
bx.contour(X, Y, W.imag, levels=lev, colors=STATEMENT, linewidths=0.9, linestyles="solid")
t = np.linspace(0, 2 * np.pi, 300)
bx.fill(np.cos(t), np.sin(t), color=GRID, alpha=0.6, lw=0)
bx.plot(np.cos(t), np.sin(t), color=INK, lw=1.2)
bx.set_aspect("equal"); bx.set_title(r"$f = z + 1/z$, $|z| > 1$", fontsize=11)
bx.set_xticks([-3, 0, 3]); bx.set_yticks([-2, 0, 2])
bx.set_xlabel(r"$x$")
fig.tight_layout()
save_matplotlib(fig, "harmonic_level_curves")
