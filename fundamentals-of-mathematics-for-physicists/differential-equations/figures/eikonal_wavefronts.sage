# Rays and wavefronts of the eikonal equation |grad u| = 1 with u = 0 on the curve y = cos(x)/2: the rays are the upward normals
# X = gamma(sigma) + s n(sigma), and u = s on them; the wavefronts are the curves s = 0.5, 1, ..., 3. At the troughs (x = +-pi)
# the radius of curvature is 2, so the rays from there meet at distance 2 and the fronts fold beyond it (thm-charpit,
# exm-cha-wavefronts).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
g = cos(x) / 2
kappa = abs(diff(g, x, 2)) / (1 + diff(g, x)^2)^(3 / 2)
assert abs(1 / kappa.subs(x=pi) - 2) < 1e-12           # radius of curvature 2 at the trough
sig = np.linspace(-2 * np.pi, 2 * np.pi, 2001)
gam = np.array([sig, np.cos(sig) / 2])
d = np.array([np.ones_like(sig), -np.sin(sig) / 2])      # tangent
nrm = np.array([-d[1], d[0]]) / np.hypot(d[0], d[1])     # upward unit normal
fig, ax = plt.subplots(figsize=(6.4, 4.2))
for s0 in np.arange(-2 * np.pi, 2 * np.pi + 1e-9, np.pi / 8):
    i = np.argmin(abs(sig - s0))
    ax.plot([gam[0, i], gam[0, i] + 3.4 * nrm[0, i]], [gam[1, i], gam[1, i] + 3.4 * nrm[1, i]], color=ACCENT, lw=0.7)
ax.plot(gam[0], gam[1], color=INK, lw=2.0)
for s in np.arange(0.5, 3.01, 0.5):
    ax.plot(gam[0] + s * nrm[0], gam[1] + s * nrm[1], color=STATEMENT, lw=1.3)
ax.set_xlim(-0.4, 2 * np.pi + 0.4); ax.set_ylim(-0.7, 3.6); ax.set_aspect("equal")
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "eikonal_wavefronts")
