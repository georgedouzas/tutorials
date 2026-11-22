# The Legendre polynomials P_0, ..., P_5 on [-1, 1], computed from Rodrigues' formula, with the five zeros of P_5 marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
P = [(diff((x^2 - 1)^n, x, n) / (2^n * factorial(n))).expand() for n in range(6)]
assert all(bool((P[n] - legendre_P(n, x)).expand() == 0) for n in range(6))
z5 = sorted(r for r in P[5].roots(x, ring=RR, multiplicities=False))
assert len(z5) == 5 and all(-1 < r < 1 for r in z5)
tt = np.linspace(-1, 1, 400)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
for n, col in zip(range(6), [MUTED, ACCENT, STATEMENT, EXAMPLE, EXERCISE, ORANGE]):
    f = fast_callable(P[n], vars=[x], domain=RDF)
    ax.plot(tt, [f(t) for t in tt], color=col, lw=1.5, label="$P_%d$" % n)
ax.plot([float(r) for r in z5], [0] * 5, "o", color=ORANGE, ms=5)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(-1, 1); ax.set_ylim(-1.1, 1.1)
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.17), ncol=6, fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "legendre_polynomials")
