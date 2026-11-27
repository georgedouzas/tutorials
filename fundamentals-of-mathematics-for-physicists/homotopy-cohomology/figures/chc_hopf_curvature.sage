# Hopf bundle: the d(phi)-coefficients of the real potentials a_N = (1 - cos theta)/2 and a_S = -(1 + cos theta)/2 against the
# polar angle (they differ by 1, the winding of the transition function), and the part (1 - cos theta_0)/2 of the Chern number
# carried by the cap theta <= theta_0, from c_1(F) = omega_{S^2}/(4 pi). The total, printed, is 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad

th = np.linspace(0, np.pi, 400)
print("Chern number:", round(quad(lambda t: 2 * np.pi * np.sin(t) / (4 * np.pi), 0, np.pi)[0], 10))
fig, (a0, a1) = plt.subplots(1, 2, figsize=(8.4, 3.3))
a0.plot(th, (1 - np.cos(th)) / 2, color=ACCENT, lw=2, label=r"$a_N$")
a0.plot(th, -(1 + np.cos(th)) / 2, color=STATEMENT, lw=2, label=r"$a_S$")
a0.annotate("", xy=(np.pi / 2, -0.5), xytext=(np.pi / 2, 0.5), arrowprops=dict(arrowstyle="<->", color=MUTED, lw=1))
a0.text(np.pi / 2 + 0.08, 0.02, r"$1$", color=MUTED, fontsize=11)
a0.set_xlabel(r"$\theta$"); a0.set_ylabel(r"coefficient of $d\varphi$")
a0.legend(frameon=False, loc="upper left")
a1.plot(th, (1 - np.cos(th)) / 2, color=EXAMPLE, lw=2)
a1.axhline(1, color=GRID, lw=1, ls="--")
a1.set_xlabel(r"$\theta_0$"); a1.set_ylabel("Chern number of the cap")
for a in (a0, a1):
    a.set_xticks([0, np.pi / 2, np.pi]); a.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$"])
    for sp in ("top", "right"):
        a.spines[sp].set_visible(False)
a0.set_ylim(-1.15, 1.15); a1.set_ylim(-0.05, 1.12)
fig.tight_layout()
save_matplotlib(fig, "chc_hopf_curvature")
