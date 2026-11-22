# Left: partial sums W_N(x) = sum_{n <= N} 2^(-n) cos(3^n pi x) of the Weierstrass function for N = 1, 3, 8 on [-1, 1].
# Right: the difference quotients |W(h) - W(0)|/h at h = 3^(-m), m = 1..8, against the lower bound (4 - pi^2/7)(3/2)^m.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-1, 1, 20001)


def WN(xx, N):
    return sum(2.0**(-n) * np.cos(3.0**n * np.pi * xx) for n in range(N + 1))


R = RealField(200)


def W(t, terms=60):
    return sum(R(2)**(-n) * cos(R(3)**n * R(pi) * t) for n in range(terms))


ms = list(range(1, 9))
quot = [float(abs(W(R(3)**(-m)) - W(0)) * R(3)**m) for m in ms]
bound = [float((4 - R(pi)**2 / 7) * R(1.5)**m) for m in ms]
assert all(q >= b for q, b in zip(quot, bound))

fig, (a, b) = plt.subplots(1, 2, figsize=(9, 3.4))
for N, col, lw in zip((8, 3, 1), (ACCENT, EXAMPLE, STATEMENT), (0.6, 1.1, 1.3)):
    a.plot(x, WN(x, N), color=col, lw=lw, label=f"$N = {N}$")
a.set_xlabel("$x$"); a.set_ylabel("$W_N(x)$")
a.legend(fontsize=9, frameon=False, loc="upper center", ncol=3)
a.set_ylim(-2.2, 3.0)
b.semilogy(ms, quot, "o-", color=ACCENT, lw=1.2, ms=4, label=r"$|W(h) - W(0)|/h$")
b.semilogy(ms, bound, "s--", color=STATEMENT, lw=1.0, ms=3.5, label=r"$(4 - \pi^2/7)(3/2)^m$")
b.set_xlabel(r"$m$, with $h = 3^{-m}$")
b.legend(fontsize=9, frameon=False, loc="upper left")
for ax in (a, b):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-weierstrass-function")
