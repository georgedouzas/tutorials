# Partial sums of the series 2F1(1/2, 1/2; 1; x) with 2, 5, 10 and 40 terms against its sum (2/pi) K, for 0 <= x < 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
A = lambda k: (rising_factorial(QQ(1)/2, k))^2 / (factorial(k))^2
def S(N, t):
    return sum(float(A(k)) * t**k for k in range(N))
def F(t):
    return 2 / float(pi) * float(elliptic_kc(float(t)))
assert abs(F(0.5) - float(hypergeometric([1/2, 1/2], [1], 1/2).n())) < 1e-12
tt = np.linspace(0, 0.995, 400)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.plot(tt, [F(t) for t in tt], color=INK, lw=2.0, label="sum")
for N, col in zip([2, 5, 10, 40], [STATEMENT, ORANGE, EXAMPLE, ACCENT]):
    ax.plot(tt, [S(N, t) for t in tt], color=col, lw=1.3, ls="--", label="$%d$ terms" % N)
ax.set_xlim(0, 1); ax.set_ylim(0.9, 3.0)
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper left", fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "hypergeometric_partial_sums")
