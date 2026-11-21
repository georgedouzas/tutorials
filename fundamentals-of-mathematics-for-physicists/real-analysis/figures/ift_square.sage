# The parabola y = x^2 with the arcs over U_0 = (1/2, 3/2) and -U_0, both mapped onto V_0 = (1/4, 9/4) (left), and the
# two local inverses sqrt(y) and -sqrt(y) on V_0 (right).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8.4, 3.8))
xs = [-2 + k / 100 for k in range(401)]
ax1.plot(xs, [t^2 for t in xs], color=MUTED, lw=1.2)
u = [0.5 + k / 200 for k in range(201)]
ax1.plot(u, [t^2 for t in u], color=ACCENT, lw=2.6)
ax1.plot([-t for t in u], [t^2 for t in u], color=STATEMENT, lw=2.6)
ax1.axhspan(0.25, 2.25, color=EXAMPLE, alpha=0.12, lw=0)
ax1.plot([0.5, 1.5], [0, 0], color=ACCENT, lw=5, solid_capstyle="butt")
ax1.plot([-1.5, -0.5], [0, 0], color=STATEMENT, lw=5, solid_capstyle="butt")
ax1.plot([1, -1], [1, 1], "o", color=INK, ms=4)
ax1.text(1.0, -0.42, "$U_0$", color=ACCENT, ha="center")
ax1.text(-1.0, -0.42, "$-U_0$", color=STATEMENT, ha="center")
ax1.text(-1.95, 1.25, "$V_0$", color=EXAMPLE)
ax1.text(1.25, 3.4, "$y = x^2$", color=INK)
ax1.set_xlim(-2, 2); ax1.set_ylim(-0.7, 4.2); ax1.set_xlabel("$x$")
ys = [0.25 + k / 100 for k in range(201)]
ax2.plot(ys, [sqrt(t) for t in ys], color=ACCENT, lw=2.4)
ax2.plot(ys, [-sqrt(t) for t in ys], color=STATEMENT, lw=2.4)
ax2.axhline(0, color=GRID, lw=0.8)
ax2.text(1.5, 1.42, r"$\sqrt{y}$", color=ACCENT)
ax2.text(1.5, -1.62, r"$-\sqrt{y}$", color=STATEMENT)
ax2.set_xlim(0, 2.5); ax2.set_ylim(-1.8, 1.8); ax2.set_xlabel("$y$")
for ax in (ax1, ax2):
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ift_square")
