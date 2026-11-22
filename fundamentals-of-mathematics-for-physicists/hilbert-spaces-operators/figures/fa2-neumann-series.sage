# Error of the partial sums of the Neumann series sum_{k<N} A^k of (I - A)^{-1}, in the operator norm, for
# A1 = sigma_1/2 (norm 1/2) and A2 = [[1/2, 4], [0, 1/2]] (norm above 4, spectral radius 1/2), N = 1..40.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A1 = np.array([[0.0, 0.5], [0.5, 0.0]]); A2 = np.array([[0.5, 4.0], [0.0, 0.5]])
Ns = np.arange(1, 41)
def errors(A):
    inv = np.linalg.inv(np.eye(2) - A)
    out, S, P = [], np.zeros((2, 2)), np.eye(2)
    for N in Ns:
        S = S + P; P = P @ A
        out.append(np.linalg.norm(inv - S, 2))
    return np.array(out)
e1, e2 = errors(A1), errors(A2)
assert np.allclose(e1, 2.0 ** (1 - Ns))
assert e2[6] > 1 > e2[7]            # error first below 1 at N = 8
fig, ax = plt.subplots(figsize=(6.0, 3.8))
ax.semilogy(Ns, e1, "o", ms=3.5, color=ACCENT, label=r"$\mathbf{A}_1 = \frac{1}{2}\sigma_1$")
ax.semilogy(Ns, e2, "s", ms=3.0, color=STATEMENT, label=r"$\mathbf{A}_2$")
ax.semilogy(Ns, 8 * (Ns + 1) * 2.0 ** (1 - Ns), color=STATEMENT, lw=0.8, ls="--", label=r"$8(N+1)\,2^{1-N}$")
ax.axhline(1.0, color=MUTED, lw=0.6, ls=":")
ax.set_xlabel(r"$N$"); ax.set_ylabel("error")
ax.set_xlim(0, 41)
ax.legend(frameon=False, loc="upper right")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-neumann-series")
