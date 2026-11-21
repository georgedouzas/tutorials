# The waves cos x and cos 7x on [0, 2 pi], which agree at the eight sample points x_n = pi n/4.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

assert all(bool(cos(7*pi*n/4) == cos(pi*n/4)) for n in range(8))

X = np.linspace(0, 2*np.pi, 2001); S = np.pi*np.arange(9)/4
fig, ax = plt.subplots(figsize=(6.4, 3.2))
ax.plot(X, np.cos(7*X), color=STATEMENT, lw=1.0, label=r"$\cos 7x$")
ax.plot(X, np.cos(X), color=ACCENT, lw=1.6, label=r"$\cos x$")
ax.plot(S, np.cos(S), "o", color=INK, ms=5, label="samples")
ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(0, 2*np.pi); ax.set_ylim(-1.2, 1.45)
ax.set_xticks([0, np.pi, 2*np.pi]); ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"]); ax.set_xlabel("$x$")
ax.legend(loc="upper center", ncol=3, fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_aliasing")
