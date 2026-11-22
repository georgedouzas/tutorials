# Unit balls {x in R^2 : |x|_p <= 1} for p = 1, 3/2, 2, 4 and the sup norm; they are nested and grow with p.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np


def sphere(p, t):
    c, s = np.cos(t), np.sin(t)
    if p == np.inf:
        r = 1/np.maximum(abs(c), abs(s))
    else:
        r = (abs(c)**p + abs(s)**p)**(-1/p)
    return r*c, r*s


# check: the point (2^(-1/p), 2^(-1/p)) has p-norm 1
for p in [1, 1.5, 2, 4]:
    assert abs((2*2**(-1)) - 1) < 1e-12 and abs((2*(2**(-1/p))**p)**(1/p) - 1) < 1e-12

t = np.linspace(0, 2*np.pi, 2001)
fig, ax = plt.subplots(figsize=(4.6, 4.6))
labels = {1: r"$p = 1$", 1.5: r"$p = \frac{3}{2}$", 2: r"$p = 2$", 4: r"$p = 4$", np.inf: r"$p = \infty$"}
for (p, lab), col in zip(labels.items(), SERIES):
    x, y = sphere(p, t)
    ax.plot(x, y, color=col, lw=1.4, label=lab)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
ax.set_aspect("equal"); ax.set_xlim(-1.25, 1.25); ax.set_ylim(-1.25, 1.25)
ax.set_xlabel("$x_1$"); ax.set_ylabel("$x_2$")
ax.legend(loc="upper left", bbox_to_anchor=(1.02, 1), fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-unit-balls")
