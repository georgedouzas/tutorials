# Left: phi(a) = sum 2^-n a_n on c_0 evaluated at s^(N) = (1, ..., 1, 0, ...): 1 - 2^-N, approaching |phi| = 1.
# Right: the same coefficients y = (2^-n) on l^2, evaluated at the truncations a^(N) of a = y / |y|_2:
# sum_{n <= N} 4^-n / |y|_2, reaching |y|_2 = 1 / sqrt(3).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

N = np.arange(1, 16)
left = 1 - 2.0**(-N)
ny = 1 / np.sqrt(3)
right = np.array([sum(4.0**(-n) for n in range(1, k + 1)) for k in N]) / ny
assert abs(sum(4.0**(-n) for n in range(1, 60)) - 1 / 3) < 1e-15
assert abs(right[-1] - ny) < 1e-8

fig, (a, b) = plt.subplots(1, 2, figsize=(9.5, 3.6))
a.plot(N, left, "o", color=ACCENT, ms=4, label=r"$\varphi(s^{(N)})$ on $c_0$")
a.axhline(1, color=MUTED, ls="--", lw=1, label=r"$\|\varphi\| = 1$")
b.plot(N, right, "s", color=STATEMENT, ms=4, label=r"$\varphi_y(a^{(N)})$ on $\ell^2$")
b.axhline(ny, color=MUTED, ls="--", lw=1, label=r"$\|y\|_2 = 1/\sqrt{3}$")
for ax in (a, b):
    ax.set_xlabel(r"$N$")
    ax.legend(loc="lower right", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-norm-attaining")
