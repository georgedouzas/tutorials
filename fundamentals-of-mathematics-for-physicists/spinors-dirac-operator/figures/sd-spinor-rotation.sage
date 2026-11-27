load("../../_filters/figstyle.sage")
# A rotation by phi about the x^3 axis on a vector (entry cos phi of the rotation matrix) and on a spinor
# (entry exp(-i phi/2) of S(phi) = cos(phi/2) - sin(phi/2) e1e2 under e_a -> sigma_a).
import matplotlib.pyplot as plt
import numpy as np

phi = np.linspace(0, 4*np.pi, 801)
fig, ax = plt.subplots(figsize=(6.6, 3.6))
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(phi, np.cos(phi), color=ACCENT, lw=2, label=r"vector: $\cos\varphi$")
ax.plot(phi, np.cos(phi/2), color=STATEMENT, lw=2, label=r"spinor: $\mathrm{Re}\,e^{-i\varphi/2}$")
ax.plot(phi, -np.sin(phi/2), color=STATEMENT, lw=1.2, ls="--", label=r"spinor: $\mathrm{Im}\,e^{-i\varphi/2}$")
ax.plot([2*np.pi], [-1], "o", color=STATEMENT)
ax.annotate(r"$S(2\pi) = -1$", (2*np.pi, -1), xytext=(2*np.pi + 0.2, -1.22), color=STATEMENT, fontsize=10)
ax.set_xticks([k*np.pi for k in range(5)])
ax.set_xticklabels(["0", r"$\pi$", r"$2\pi$", r"$3\pi$", r"$4\pi$"])
ax.set_xlabel(r"$\varphi$"); ax.set_ylim(-1.35, 1.15); ax.set_xlim(0, 4*np.pi)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
ax.legend(loc="lower left", frameon=False, fontsize=9, bbox_to_anchor=(0.0, 1.0), ncol=3)
print("S(2 pi) entry:", np.cos(np.pi), "; S(4 pi) entry:", np.cos(2*np.pi))
save_matplotlib(fig, "sd-spinor-rotation")
