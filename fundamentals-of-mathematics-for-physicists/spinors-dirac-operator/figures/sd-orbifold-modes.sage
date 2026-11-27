load("../../_filters/figstyle.sage")
# Even modes cos(ny) and odd modes sin(ny) on the fundamental domain [0, pi] of S^1/Z_2, n = 0, 1, 2.
import matplotlib.pyplot as plt
import numpy as np
y = np.linspace(0, np.pi, 300)
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for n, col in ((0, ACCENT), (1, STATEMENT), (2, EXAMPLE)):
    ax.plot(y, np.cos(n*y), color=col, lw=1.8, label=r"$\cos %dy$" % n)
    if n > 0: ax.plot(y, np.sin(n*y), color=col, lw=1.4, ls="--", label=r"$\sin %dy$" % n)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xticks([0, np.pi/2, np.pi]); ax.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$"]); ax.set_xlabel(r"$y$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, ncol=3, loc="upper center", bbox_to_anchor=(0.5, -0.22), fontsize=9)
fig.tight_layout()
print("odd modes vanish at the fixed points:", [round(float(np.sin(n*np.pi)), 12) for n in (1, 2)])
save_matplotlib(fig, "sd-orbifold-modes")
