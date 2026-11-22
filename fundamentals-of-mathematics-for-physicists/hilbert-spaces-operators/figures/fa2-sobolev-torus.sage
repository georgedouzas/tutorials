# |c_k| against k on log-log axes for the square wave sgn x (2/(pi k), odd k), the triangle wave |x| (2/(pi k^2), odd k)
# and e^{cos x} (I_k(1)), with the reference slopes -1 and -2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.special import iv
from scipy.integrate import quad

k_odd = np.arange(1, 200, 2)
k_all = np.arange(1, 16)
for k in (1, 3, 5):         # check the closed forms against quadrature
    assert abs(quad(lambda x: np.sign(x) * np.sin(k * x), -np.pi, np.pi)[0] / (2 * np.pi) - 2 / (np.pi * k)) < 1e-8
    assert abs(quad(lambda x: abs(x) * np.cos(k * x), -np.pi, np.pi)[0] / (2 * np.pi) + 2 / (np.pi * k**2)) < 1e-8
    assert abs(quad(lambda x: np.exp(np.cos(x)) * np.cos(k * x), -np.pi, np.pi)[0] / (2 * np.pi) - iv(k, 1)) < 1e-10
fig, ax = plt.subplots(figsize=(6.4, 4.0))
ax.loglog(k_odd, 2 / (np.pi * k_odd), "o", color=ACCENT, ms=3, label=r"$\mathrm{sgn}\,x$")
ax.loglog(k_odd, 2 / (np.pi * k_odd**2), "s", color=EXAMPLE, ms=3, label=r"$|x|$")
ax.loglog(k_all, iv(k_all, 1), "^-", color=STATEMENT, ms=3.5, lw=1, label=r"$e^{\cos x}$")
ax.loglog(k_odd, 1.5 / k_odd, color=MUTED, lw=0.9, ls="--", label=r"$k^{-1}$")
ax.loglog(k_odd, 1.5 / k_odd**2, color=MUTED, lw=0.9, ls=":", label=r"$k^{-2}$")
ax.set_xlabel("$k$"); ax.set_ylabel(r"$|c_k|$"); ax.set_ylim(1e-12, 3)
ax.legend(loc="lower left", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-sobolev-torus")
