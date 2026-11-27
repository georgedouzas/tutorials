load("../../_filters/figstyle.sage")
# The two spin structures of the circle: real parts of the lowest modes e^{ik theta} over two turns,
# periodic (k = 0, 1) and antiperiodic (k = 1/2, 3/2).
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 4*np.pi, 800)
fig, ax = plt.subplots(figsize=(6.4, 3.4))
ax.axhline(0, color=GRID, lw=0.8)
ax.axvline(2*np.pi, color=MUTED, lw=0.8, ls=":")
ax.plot(t, np.cos(0*t), color=ACCENT, lw=2.2, label=r"periodic, $k = 0$")
ax.plot(t, np.cos(1*t), color=ACCENT, lw=1.2, ls="--", label=r"periodic, $k = 1$")
ax.plot(t, np.cos(0.5*t), color=STATEMENT, lw=2.2, label=r"antiperiodic, $k = \frac{1}{2}$")
ax.plot(t, np.cos(1.5*t), color=STATEMENT, lw=1.2, ls="--", label=r"antiperiodic, $k = \frac{3}{2}$")
ax.set_xticks([0, np.pi, 2*np.pi, 3*np.pi, 4*np.pi])
ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$", r"$3\pi$", r"$4\pi$"])
ax.set_xlabel(r"$\theta$"); ax.set_ylabel(r"$\mathrm{Re}\, e^{ik\theta}$")
ax.set_ylim(-1.25, 1.25)
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.22), ncol=2, frameon=False, fontsize=9)
fig.tight_layout()
print("values at 2 pi:", [round(float(np.cos(k*2*np.pi)), 6) for k in (0, 1, 0.5, 1.5)])
save_matplotlib(fig, "sd-circle-spin-structures")
