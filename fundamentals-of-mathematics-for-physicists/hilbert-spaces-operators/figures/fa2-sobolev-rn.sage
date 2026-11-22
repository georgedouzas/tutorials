# |fhat(k)| on log-log axes for e^{-x^2/2} (sqrt(2 pi) e^{-k^2/2}), e^{-|x|} (2/(1 + k^2)) and the indicator of [-1, 1]
# (2 |sin k|/k), with reference slopes k^{-2} and k^{-1}.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad

for k in (0.5, 2.0, 7.0):    # check the transforms against quadrature
    assert abs(2 * quad(lambda x: np.exp(-x) * np.cos(k * x), 0, 60)[0] - 2 / (1 + k**2)) < 1e-8
    assert abs(2 * quad(lambda x: np.cos(k * x), 0, 1)[0] - 2 * np.sin(k) / k) < 1e-10
ks = np.logspace(-1, 2.5, 3000)
fig, ax = plt.subplots(figsize=(6.4, 4.0))
ax.loglog(ks, np.sqrt(2 * np.pi) * np.exp(-ks**2 / 2), color=STATEMENT, lw=1.4, label=r"$e^{-x^2/2}$")
ax.loglog(ks, 2 / (1 + ks**2), color=EXAMPLE, lw=1.4, label=r"$e^{-|x|}$")
ax.loglog(ks, 2 * np.abs(np.sin(ks)) / ks, color=ACCENT, lw=0.7, label=r"$\chi_{[-1, 1]}$")
ax.loglog(ks[ks > 1], 2 / ks[ks > 1]**2, color=MUTED, lw=0.9, ls=":", label=r"$k^{-2}$")
ax.loglog(ks[ks > 1], 2 / ks[ks > 1], color=MUTED, lw=0.9, ls="--", label=r"$k^{-1}$")
ax.set_xlabel("$k$"); ax.set_ylabel(r"$|\hat f(k)|$"); ax.set_ylim(1e-5, 5)
ax.legend(loc="lower left", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-sobolev-rn")
