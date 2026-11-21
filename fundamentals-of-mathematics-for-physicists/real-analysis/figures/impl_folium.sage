# The folium of Descartes x^3 + y^3 = 3xy, its tangent of slope -1 at (3/2, 3/2), the vertical tangent at
# (2^(2/3), 2^(1/3)), the horizontal tangent at (2^(1/3), 2^(2/3)) and the double point at the origin.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(5.2, 5.0))
for lo, hi in ((-0.95, 30.0), (-30.0, -1.05)):
    ts = [lo + (hi - lo) * k / 3000 for k in range(3001)]
    if lo > 0 or hi > 0:
        ts = [t for t in ts if t > -0.95]
    pts = [(3*t/(1 + t^3), 3*t^2/(1 + t^3)) for t in ts]
    pts = [p for p in pts if -2.6 < p[0] < 2.6 and -2.6 < p[1] < 2.6]
    ax.plot([p[0] for p in pts], [p[1] for p in pts], color=ACCENT, lw=1.8)
assert abs((1.5)^3 + (1.5)^3 - 3*1.5*1.5) < 1e-12
ax.plot([0.9, 2.3], [2.1, 0.7], color=EXAMPLE, lw=1.3)
ax.plot([1.5], [1.5], "o", color=EXAMPLE, ms=5)
ax.text(1.7, 1.95, r"$(3/2, 3/2)$", color=EXAMPLE, fontsize=10)
xv, yv = 2^(2/3), 2^(1/3)
ax.plot([xv, xv], [yv - 0.5, yv + 0.5], color=STATEMENT, lw=1.0, ls="--")
ax.plot([xv], [yv], "o", color=STATEMENT, ms=5)
ax.text(xv + 0.08, yv - 0.55, "vertical\ntangent", color=STATEMENT, fontsize=9)
ax.plot([yv - 0.5, yv + 0.5], [xv, xv], color=EXERCISE, lw=1.0, ls="--")
ax.plot([yv], [xv], "o", color=EXERCISE, ms=5)
ax.text(yv - 0.95, xv + 0.15, "horizontal tangent", color=EXERCISE, fontsize=9)
ax.plot([0], [0], "o", color=INK, ms=5)
ax.text(-1.3, -0.35, "double point", color=INK, fontsize=9)
ax.plot([-2.6, 1.6], [1.6, -2.6], color=MUTED, lw=0.8, ls=":")
ax.text(-2.5, -0.6, "$x + y = -1$", color=MUTED, fontsize=9)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
ax.set_xlim(-2.6, 2.6); ax.set_ylim(-2.6, 2.6); ax.set_aspect("equal")
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "impl_folium")
