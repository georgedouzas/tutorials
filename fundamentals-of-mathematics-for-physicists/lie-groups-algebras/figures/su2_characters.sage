# Characters chi_j(alpha) = sin((2j+1)alpha/2)/sin(alpha/2) of SU(2) for j = 0, 1/2, 1, 3/2, 2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
a = np.linspace(1e-4, 2 * np.pi - 1e-4, 600)
fig, ax = plt.subplots(figsize=(5.2, 3.6))
labels = ["0", r"\frac{1}{2}", "1", r"\frac{3}{2}", "2"]
for k in range(5):
    n = k + 1
    ax.plot(a, np.sin(n * a / 2) / np.sin(a / 2), color=SERIES[k], lw=1.8, label=r"$j = %s$" % labels[k])
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(0, 2 * np.pi); ax.set_ylim(-5.5, 5.5)
ax.set_xticks([0, np.pi / 2, np.pi, 3 * np.pi / 2, 2 * np.pi])
ax.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$", r"$3\pi/2$", r"$2\pi$"])
ax.set_xlabel(r"class angle $\alpha$"); ax.set_ylabel(r"$\chi_j$")
ax.legend(frameon=False, ncol=5, loc="upper center", bbox_to_anchor=(0.5, 1.16), fontsize=9, handlelength=1.4)
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "su2_characters")
