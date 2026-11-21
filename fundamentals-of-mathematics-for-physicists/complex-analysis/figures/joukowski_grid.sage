# The polar grid outside the unit circle (circles r = 1.1, 1.3, ..., 2.5 in blue, rays theta = k pi/8 in red) and its
# image under the Joukowski map J(z) = (z + 1/z)/2: confocal ellipses and hyperbolas with foci +-1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

J = lambda z: (z + 1 / z) / 2
# check: the image of r = 2 is the ellipse with semi-axes 5/4, 3/4, which has foci +-1
w = J(2 * CDF(cos(0.7), sin(0.7)))
assert abs((w.real() / 1.25)**2 + (w.imag() / 0.75)**2 - 1) < 1e-12 and abs(1.25**2 - 0.75**2 - 1) < 1e-12

rs = [1.1 + 0.2 * k for k in range(8)]
ths = [k * np.pi / 8 for k in range(16)]
fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.6, 4.2))
t = np.linspace(0, 2 * np.pi, 400)
rr = np.linspace(1.0, 2.5, 200)
for r in rs:
    z = r * np.exp(1j * t)
    ax.plot(z.real, z.imag, color=ACCENT, lw=0.9)
    w = (z + 1 / z) / 2
    bx.plot(w.real, w.imag, color=ACCENT, lw=0.9)
for th in ths:
    z = rr * np.exp(1j * th)
    ax.plot(z.real, z.imag, color=STATEMENT, lw=0.9)
    w = (z + 1 / z) / 2
    bx.plot(w.real, w.imag, color=STATEMENT, lw=0.9)
ax.plot(np.cos(t), np.sin(t), color=INK, lw=1.3)
bx.plot([-1, 1], [0, 0], color=INK, lw=2.0)
bx.plot([-1, 1], [0, 0], "o", color=INK, ms=4)
for a, lim, title in ((ax, 2.7, r"$z$-plane, $|z| > 1$"), (bx, 1.6, r"$w = J(z)$")):
    a.set_aspect("equal"); a.set_xlim(-lim, lim); a.set_ylim(-lim, lim)
    a.set_title(title, fontsize=11)
    for side in ("top", "right"):
        a.spines[side].set_visible(False)
ax.set_xlabel(r"$\operatorname{Re} z$"); ax.set_ylabel(r"$\operatorname{Im} z$")
bx.set_xlabel(r"$\operatorname{Re} w$"); bx.set_ylabel(r"$\operatorname{Im} w$")
fig.tight_layout()
save_matplotlib(fig, "joukowski_grid")
