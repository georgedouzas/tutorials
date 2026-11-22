# The torus as a product: the coordinate square with opposite edges identified and three curves.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(4.2, 4.2))
L = 2*np.pi
ax.plot([0, L, L, 0, 0], [0, 0, L, L, 0], color=INK, lw=1.2)
for y in (0, L):   # single arrows on the horizontal edges
    ax.annotate("", xy=(0.75*L + 0.3, y), xytext=(0.75*L - 0.3, y), arrowprops=dict(arrowstyle="->", color=INK, lw=1.4))
for x in (0, L):   # double arrows on the vertical edges
    for d in (-0.25, 0.25):
        ax.annotate("", xy=(x, L/2 + d + 0.3), xytext=(x, L/2 + d - 0.3), arrowprops=dict(arrowstyle="->", color=INK, lw=1.4))
ax.plot([1, 1], [0, L], color=STATEMENT, lw=2)
ax.plot([0, L], [2, 2], color=ACCENT, lw=2)
t = np.linspace(0, L, 400); b = (2*t) % L
b[np.abs(np.diff(b, prepend=b[0])) > 1] = np.nan
ax.plot(t, b, color=EXAMPLE, lw=2)
ax.text(1.1, 5.6, r"$a = 1$", color=STATEMENT); ax.text(4.6, 2.15, r"$b = 2$", color=ACCENT)
ax.set_xlabel(r"$a$"); ax.set_ylabel(r"$b$")
ax.set_xticks([0, np.pi, L]); ax.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_yticks([0, np.pi, L]); ax.set_yticklabels([r"$0$", r"$\pi$", r"$2\pi$"])
ax.set_aspect("equal"); ax.set_xlim(-0.4, L + 0.4); ax.set_ylim(-0.4, L + 0.4)
for s in ("top", "right"): ax.spines[s].set_visible(False)
save_matplotlib(fig, "product_chart")
