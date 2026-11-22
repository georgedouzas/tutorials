# Values u^dagger A u for 5000 random unit vectors u in C^3 and A = [[2, 1, 0], [1, 2, 1], [0, 1, 2]], as a histogram,
# with the eigenvalues 2 - sqrt 2, 2, 2 + sqrt 2 marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

rng = np.random.default_rng(int(4))
A = np.array([[2, 1, 0], [1, 2, 1], [0, 1, 2]], dtype=float)
U = rng.normal(size=(int(5000), int(3))) + 1j*rng.normal(size=(int(5000), int(3)))
U /= np.linalg.norm(U, axis=1)[:, None]
q = np.real(np.einsum("ij,jk,ik->i", U.conj(), A, U))
ev = np.linalg.eigvalsh(A)
assert q.min() >= ev[0] - 1e-12 and q.max() <= ev[-1] + 1e-12
fig, ax = plt.subplots(figsize=(6.4, 3.6))
ax.hist(q, bins=60, color=ACCENT, alpha=0.6)
for e, lab in zip(ev, [r"$2 - \sqrt{2}$", r"$2$", r"$2 + \sqrt{2}$"]):
    ax.axvline(e, color=STATEMENT, lw=1.4)
    ax.text(e, ax.get_ylim()[1]*1.01, lab, color=STATEMENT, ha="center", va="bottom", fontsize=10)
ax.set_xlabel(r"$\mathbf{u}^\dagger\mathbf{A}\mathbf{u}$"); ax.set_ylabel("count")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-rayleigh-quotients")
