# Normal modes of a ring of n = 12 equal masses m joined by equal springs c (periodic chain). The matrix
# (c/m)(2 - S - S^{-1}), S the cyclic shift, has the eigenvalues omega_k^2 = (4c/m) sin^2(pi k/n), k = 0, ..., n - 1;
# the dots are the frequencies omega_k for c/m = 1 and the curve is 2 sin(pi kappa/n) for real kappa.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import math

n = 12
S = matrix(QQ, n, n, lambda i, j: 1 if j == (i + 1) % n else 0)
K = 2 * identity_matrix(QQ, n) - S - S.transpose()
ev = sorted(K.change_ring(AA).eigenvalues())
expected = sorted(AA(4 * sin(pi * k / n)^2) for k in range(n))
assert all(abs(a - b) < 1e-12 for a, b in zip(ev, expected))

fig, ax = plt.subplots(figsize=(6.2, 3.4))
ks = [n * j / 400 for j in range(401)]
ax.plot(ks, [2 * math.sin(math.pi * k / n) for k in ks], color=MUTED, linewidth=1.2)
ax.plot(range(n), [2 * math.sin(math.pi * k / n) for k in range(n)], "o", color=ACCENT, markersize=6)
ax.set_xlabel("$k$")
ax.set_ylabel(r"$\omega_k \,/\, \sqrt{c/m}$")
ax.set_xticks(range(0, n + 1, 2))
ax.set_yticks([0, 1, 2])
ax.set_xlim(-0.4, n + 0.4)
ax.set_ylim(-0.1, 2.25)
for s in ("top", "right"):
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "chain_spectrum")
