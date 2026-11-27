load("../../_filters/figstyle.sage")
# Holonomy around the latitude theta_0 of the unit sphere, enclosing the area A = 2 pi (1 - cos theta_0):
# vectors are rotated by A (cos A), spinors are multiplied by exp(-i A sigma_3 / 2) (half its trace, cos(A/2)).
import matplotlib.pyplot as plt
import numpy as np

th = np.linspace(0, np.pi, 600)
A = 2*np.pi*(1 - np.cos(th))
fig, ax = plt.subplots(figsize=(6.4, 3.6))
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(th, np.cos(A), color=ACCENT, lw=2, label=r"vectors: $\cos A$")
ax.plot(th, np.cos(A/2), color=STATEMENT, lw=2, label=r"spinors: $\frac{1}{2}\mathrm{tr}\,H = \cos\frac{A}{2}$")
ax.plot([np.pi/2], [-1], "o", color=STATEMENT)
ax.annotate(r"equator: $H = -\mathbf{I}$", (np.pi/2, -1), xytext=(np.pi/2 + 0.1, -1.22), color=STATEMENT, fontsize=10)
ax.set_xticks([0, np.pi/4, np.pi/2, 3*np.pi/4, np.pi])
ax.set_xticklabels([r"$0$", r"$\pi/4$", r"$\pi/2$", r"$3\pi/4$", r"$\pi$"])
ax.set_xlabel(r"$\theta_0$"); ax.set_ylim(-1.35, 1.2)
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.2), ncol=2, frameon=False, fontsize=9)
fig.tight_layout()
print("at the equator: cos A =", round(float(np.cos(2*np.pi)), 6), ", cos(A/2) =", round(float(np.cos(np.pi)), 6))
save_matplotlib(fig, "sd-spinor-holonomy")
