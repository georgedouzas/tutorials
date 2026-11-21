# The box 1_[-1, 1] and its convolution with itself, the triangle (2 - |x|)_+ (left), and their transforms
# 2 sin(k)/k and 4 sin^2(k)/k^2 (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

y = var("y")
for xv in [0, 1/2, 3/2, 5/2]:   # the convolution integral is the length of the overlap
    conv = integrate(1, y, max(-1, xv - 1), min(1, xv + 1)) if xv < 2 else 0
    assert conv == max(2 - xv, 0)

X = np.linspace(-3, 3, 1201); K = np.linspace(-12, 12, 2401)
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.6))
a1.plot(X, np.where(np.abs(X) <= 1, 1.0, 0.0), color=ACCENT, lw=1.4, label=r"$\mathbb{1}_{[-1, 1]}$")
a1.plot(X, np.maximum(2 - np.abs(X), 0), color=STATEMENT, lw=1.4, label=r"$\mathbb{1}_{[-1, 1]} * \mathbb{1}_{[-1, 1]}$")
a2.plot(K, 2*np.sinc(K/np.pi), color=ACCENT, lw=1.3, label=r"$2\sin k/k$")
a2.plot(K, 4*np.sinc(K/np.pi)**2, color=STATEMENT, lw=1.3, label=r"$4\sin^2k/k^2$")
a1.set_xlabel("$x$"); a2.set_xlabel("$k$"); a1.set_ylim(-0.15, 2.4)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.6)
    ax.legend(loc="upper right", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_convolution")
