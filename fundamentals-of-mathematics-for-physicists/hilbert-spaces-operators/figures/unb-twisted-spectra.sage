# The spectrum n + alpha/(2 pi) of the twisted momentum T_alpha on [0, 2 pi] as alpha runs over [0, 2 pi], n = -2..2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

al = np.linspace(0, 2 * np.pi, 200)
fig, ax = plt.subplots(figsize=(6.2, 3.8))
for n in range(-2, 3):
    ax.plot(al, n + al / (2 * np.pi), color=SERIES[(n + 2) % 5], lw=1.8)
    ax.text(2 * np.pi + 0.12, n + 1, r"$n = %d$" % n, fontsize=9, va="center", color=SERIES[(n + 2) % 5])
ax.set_xlabel(r"twist $\alpha$"); ax.set_ylabel(r"eigenvalues of $T_\alpha$")
ax.set_xticks([0, np.pi, 2 * np.pi]); ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_xlim(0, 2 * np.pi + 0.9)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-twisted-spectra")
