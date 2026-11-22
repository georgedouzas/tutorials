# Left: the constant field d_x on the plane with the circle r = 1. Right: its polar components X^r = cos(phi) and r X^phi = -sin(phi) along r = 1.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4))
xs = np.linspace(-1.5, 1.5, 7)
X, Y = np.meshgrid(xs, xs)
a1.quiver(X, Y, np.ones_like(X), np.zeros_like(Y), color=ACCENT, scale=12, width=0.006)
t = np.linspace(0, 2*np.pi, 200)
a1.plot(np.cos(t), np.sin(t), color=STATEMENT, lw=1.5)
a1.set_aspect("equal"); a1.set_xlim(-2, 2); a1.set_ylim(-2, 2); a1.set_xticks([]); a1.set_yticks([])
a1.set_title(r"$X = \partial_x$", color=INK)
a2.plot(t, np.cos(t), color=ACCENT, lw=1.8, label=r"$X^r = \cos\varphi$")
a2.plot(t, -np.sin(t), color=STATEMENT, lw=1.8, label=r"$rX^\varphi = -\sin\varphi$")
a2.axhline(0, color=GRID, lw=0.8)
a2.set_xticks([0, np.pi, 2*np.pi]); a2.set_xticklabels(["0", r"$\pi$", r"$2\pi$"]); a2.set_xlabel(r"$\varphi$ on $r = 1$")
a2.legend(frameon=False, loc="lower center", bbox_to_anchor=(0.5, 1.0), ncol=2)
fig.tight_layout()
save_matplotlib(fig, "covariant_polar")
