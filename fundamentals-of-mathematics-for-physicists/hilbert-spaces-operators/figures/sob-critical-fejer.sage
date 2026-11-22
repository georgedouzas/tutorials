# Fejer means sigma_N f(0) = sum_{2 <= k <= N} (1 - k/(N + 1))/(k log k) of f = sum_{k >= 2} cos(kx)/(k log k), an
# element of H^{1/2}(T^1), against N on a logarithmic axis, with log log N for comparison.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

K = np.arange(2, 10**6 + 1, dtype=float)
a = 1 / (K * np.log(K))
A0 = np.concatenate([[0.0], np.cumsum(a)]); A1 = np.concatenate([[0.0], np.cumsum(a * K)])
Ns = np.unique(np.logspace(0.5, 6, 60).astype(int))
sig = np.array([A0[N - 1] - A1[N - 1] / (N + 1) for N in Ns])     # sum over 2 <= k <= N
assert np.all(np.diff(sig) > 0)
fig, ax = plt.subplots(figsize=(6.4, 3.8))
ax.semilogx(Ns, sig, "o-", color=ACCENT, ms=3, lw=1.2, label=r"$\sigma_Nf(0)$")
ax.semilogx(Ns, np.log(np.log(Ns)), color=MUTED, lw=1, ls="--", label=r"$\log\log N$")
ax.set_xlabel("$N$"); ax.legend(loc="upper left", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
print("sigma_N f(0) at N = 10^6: %.3f" % sig[-1])
save_matplotlib(fig, "sob-critical-fejer")
