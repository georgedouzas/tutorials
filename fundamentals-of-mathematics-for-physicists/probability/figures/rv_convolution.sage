# Densities of U1, U1 + U2 and U1 + U2 + U3 for independent uniform variables on [0, 1].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

def box(s):
    return np.where((s >= 0) & (s <= 1), 1.0, 0.0)
def tri(s):
    return np.where((s >= 0) & (s <= 1), s, np.where((s > 1) & (s <= 2), 2 - s, 0.0))
def quad(s):
    return np.where((s >= 0) & (s <= 1), s**2 / 2,
           np.where((s > 1) & (s <= 2), (-2 * s**2 + 6 * s - 3) / 2,
           np.where((s > 2) & (s <= 3), (3 - s)**2 / 2, 0.0)))

s = np.linspace(-0.5, 3.5, 2001)
fig, ax = plt.subplots(figsize=(6.4, 3.6))
ax.plot(s, box(s), color=ACCENT, lw=2, label=r"$U_1$")
ax.plot(s, tri(s), color=STATEMENT, lw=2, label=r"$U_1 + U_2$")
ax.plot(s, quad(s), color=EXAMPLE, lw=2, label=r"$U_1 + U_2 + U_3$")
ax.set_xlim(-0.5, 3.5); ax.set_ylim(-0.03, 1.15)
ax.set_xlabel(r"$s$"); ax.set_ylabel("density")
ax.legend(frameon=False, loc="upper right")
ax.grid(color=GRID, lw=0.5)
fig.tight_layout()
save_matplotlib(fig, "rv_convolution")
