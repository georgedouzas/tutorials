"""Steady prevalence of the heterogeneous mean-field SIS model against the spreading rate for two largest degrees."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.biology.epidemiology import HeterogeneousMeanFieldSISSystem  # noqa: E402

lams = np.linspace(0.005, 0.3, 30)
fig, ax = plt.subplots(figsize=(6.2, 3.6))
for kmax, color in ((30, ACCENT), (300, STATEMENT)):
    prev, thr = [], None
    for lam in lams:
        tr = simulate(HeterogeneousMeanFieldSISSystem(k_max=kmax, lam=float(lam)), until=2000, dt=50.0)
        rho, P, k = (np.asarray(tr.get_values(n))[-1] for n in ("network.rho", "network.P", "network.k"))
        prev.append(max(float((rho * P).sum()), 0.0))
        thr = (k * P).sum() / (k ** 2 * P).sum()
    ax.plot(lams, prev, "o-", ms=3.5, color=color, label=rf"$k_{{\max}} = {kmax}$")
    ax.axvline(thr, color=color, lw=0.8, ls="--")
ax.set_xlabel(r"spreading rate $\lambda$")
ax.set_ylabel("steady prevalence")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "hmf_threshold")
