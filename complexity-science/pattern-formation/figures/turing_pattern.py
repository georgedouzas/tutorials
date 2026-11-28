"""Dispersion relation and Turing pattern of the Schnakenberg system (Datseris Fig. 11.2)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import LinearSegmentedColormap  # noqa: E402

A = np.array([[0.8, 1.0], [-1.8, -1.0]])
q = np.linspace(0, 1.2, 600)
fig, (left, right) = plt.subplots(1, 2, figsize=(9, 3.6))
for d, colour in ((5.0, MUTED), (8.57, EXERCISE), (20.0, EXAMPLE), (40.0, ACCENT)):
    rate = [np.linalg.eigvals(A - s * s * np.diag([1.0, d])).real.max() for s in q]
    left.plot(q, rate, color=colour, lw=1.5, label=rf"$D_v = {d:g}$")
left.axhline(0, color=INK, lw=0.6)
left.set_xlabel(r"$q$")
left.set_ylabel(r"$\sigma(q)$")
left.set_ylim(-0.6, 0.5)
left.legend(frameon=False, fontsize=9)
a, b, N, dt = 0.1, 0.9, 64, 0.005
rng = np.random.default_rng(1)
u = a + b + 0.01 * rng.standard_normal((N, N))
v = b / (a + b) ** 2 + 0.01 * rng.standard_normal((N, N))
lap = lambda f: np.roll(f, 1, 0) + np.roll(f, -1, 0) + np.roll(f, 1, 1) + np.roll(f, -1, 1) - 4 * f
for _ in range(int(200 / dt)):
    uuv = u * u * v
    u, v = u + dt * (a - u + uuv + lap(u)), v + dt * (b - uuv + 40.0 * lap(v))
right.imshow(u, cmap=LinearSegmentedColormap.from_list("pf", ["#ffffff", ACCENT]), interpolation="nearest")
right.set_xticks([])
right.set_yticks([])
fig.tight_layout()
save_figure(fig, "turing_pattern")
