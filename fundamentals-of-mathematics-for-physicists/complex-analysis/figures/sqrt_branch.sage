# One loop z = e^(i theta), 0 <= theta <= 2 pi, around the branch point 0 (left), and the continuous square root
# e^(i theta/2) along it (right), which runs from 1 to -1 over the upper half circle.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

th = np.linspace(0, 2 * np.pi, 400)
end = CDF(exp(I * pi))                     # e^(i 2 pi / 2)
assert abs(end + 1) < 1e-12
fig, (ax, bx) = plt.subplots(1, 2, figsize=(8.0, 3.6))
for a in (ax, bx):
    a.axhline(0, color=GRID, lw=0.7); a.axvline(0, color=GRID, lw=0.7)
    a.set_aspect("equal"); a.set_xlim(-1.6, 1.6); a.set_ylim(-1.4, 1.4); a.axis("off")
ax.plot(np.cos(th), np.sin(th), color=ACCENT, lw=1.6)
ax.annotate("", xy=(np.cos(1.7), np.sin(1.7)), xytext=(np.cos(1.5), np.sin(1.5)),
            arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.6))
ax.plot([0], [0], "o", color=STATEMENT, ms=5); ax.text(0.08, -0.22, r"$0$", color=STATEMENT, fontsize=11)
ax.plot([1], [0], "o", color=INK, ms=5); ax.text(1.08, 0.08, r"$z = 1$", fontsize=11)
ax.set_title(r"$z = e^{i\theta}$", fontsize=11)
bx.plot(np.cos(th / 2), np.sin(th / 2), color=EXAMPLE, lw=1.6)
bx.plot(np.cos(th / 2 + np.pi), np.sin(th / 2 + np.pi), color=EXAMPLE, lw=1.0, ls=(0, (4, 3)))
bx.annotate("", xy=(np.cos(0.95), np.sin(0.95)), xytext=(np.cos(0.8), np.sin(0.8)),
            arrowprops=dict(arrowstyle="-|>", color=EXAMPLE, lw=1.6))
bx.plot([1, -1], [0, 0], "o", color=INK, ms=5)
bx.text(1.08, 0.08, r"$1$", fontsize=11); bx.text(-1.45, 0.08, r"$-1$", fontsize=11)
bx.text(-0.95, -1.25, "second loop", color=EXAMPLE, fontsize=10)
bx.set_title(r"$e^{i\theta/2}$", fontsize=11)
fig.tight_layout()
save_matplotlib(fig, "sqrt_branch")
