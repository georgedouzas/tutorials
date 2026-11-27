# Straight-line path homotopy H(s, t) = (s, (2t - 1) sin(pi s)) from gamma(s) = (s, -sin pi s) to
# delta(s) = (s, sin pi s), both from (0, 0) to (1, 0); intermediate paths H_t for t = 0, 0.2, ..., 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

s = np.linspace(0, 1, 300)
fig, ax = plt.subplots(figsize=(5.4, 3.6))
for k, t in enumerate(np.linspace(0, 1, 6)):
    y = (2 * t - 1) * np.sin(np.pi * s)
    if k == 0:
        ax.plot(s, y, color=ACCENT, lw=2.2)
    elif k == 5:
        ax.plot(s, y, color=STATEMENT, lw=2.2)
    else:
        ax.plot(s, y, color=MUTED, lw=1.0, ls=(0, (3, 2)))
        ax.text(0.5, (2 * t - 1) + 0.05, r"$H_{%.1f}$" % t, color=MUTED, fontsize=9, ha="center", va="bottom")
ax.text(0.5, -1.17, r"$\gamma = H_0$", color=ACCENT, ha="center")
ax.text(0.5, 1.07, r"$\delta = H_1$", color=STATEMENT, ha="center")
ax.plot([0, 1], [0, 0], "o", color=INK, ms=5)
ax.text(-0.04, 0.0, r"$(0, 0)$", ha="right", va="center")
ax.text(1.04, 0.0, r"$(1, 0)$", ha="left", va="center")
ax.set_xlim(-0.3, 1.3); ax.set_ylim(-1.3, 1.3)
ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "path_homotopy")
