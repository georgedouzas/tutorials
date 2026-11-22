# Non-zero eigenvalues of three compact self-adjoint operators, repeated by multiplicity, against their index k:
# the string's Green's operator 1/(n pi)^2, the ring's Green's operator 1/(1 + n^2) (n = 0 once, then twice each),
# and the inverse oscillator energies 1/(2n + 1).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

K = 30
string = [1 / (n * np.pi) ** 2 for n in range(1, K + 1)]
ring = [1.0] + [1 / (1 + n ** 2) for n in range(1, K) for _ in range(2)]
ring = ring[:K]
osc = [1 / (2 * n + 1) for n in range(K)]
k = np.arange(1, K + 1)
fig, ax = plt.subplots(figsize=(6.0, 4.0))
ax.loglog(k, osc, "o", color=EXAMPLE, ms=4, label=r"oscillator, $1/(2n+1)$")
ax.loglog(k, ring, "s", color=ACCENT, ms=4, label=r"ring, $1/(1+n^2)$")
ax.loglog(k, string, "^", color=STATEMENT, ms=4, label=r"string, $1/(n\pi)^2$")
ax.set_xlabel(r"$k$"); ax.set_ylabel(r"$\lambda_k$")
ax.legend(loc="lower left", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-compact-eigenvalues")
