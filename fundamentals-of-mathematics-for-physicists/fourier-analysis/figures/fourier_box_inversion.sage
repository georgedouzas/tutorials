# The partial inverse integrals (1/2 pi) int_{-L}^{L} 2 sin(k)/k e^{ikx} dk = (Si(L(1 + x)) + Si(L(1 - x)))/pi
# for L = 5, 20, 80, with the box 1_[-1, 1].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.special import sici

def I_L(L, X):
    return (sici(L*(1 + X))[0] + sici(L*(1 - X))[0])/np.pi

# check against direct numerical integration at one point
xv, L = 0.3, 5
num = numerical_integral(lambda kk: 2*sin(kk)/kk*cos(kk*xv) if kk != 0 else 2.0, -L, L)[0]/(2*pi)
assert abs(num - I_L(L, xv)) < 1e-8

X = np.linspace(-2, 2, 4001)
fig, ax = plt.subplots(figsize=(6.4, 3.6))
ax.plot([-2, -1, -1, 1, 1, 2], [0, 0, 1, 1, 0, 0], color=INK, lw=1.8, label="box")
for L, c in [(5, ACCENT), (20, EXAMPLE), (80, STATEMENT)]:
    ax.plot(X, I_L(L, X), color=c, lw=1.0, label=r"$L = %d$" % L)
ax.axhline(0, color=GRID, lw=0.6); ax.set_xlim(-2, 2); ax.set_ylim(-0.2, 1.25); ax.set_xlabel("$x$")
ax.legend(loc="upper right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fourier_box_inversion")
