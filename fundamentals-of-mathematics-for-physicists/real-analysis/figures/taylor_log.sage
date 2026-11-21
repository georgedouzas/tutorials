# log(1 + x) and its Taylor polynomials T_n at 0 for n = 2, 5, 10, 25 on (-1, 1.6): for 0 <= x <= 1 they converge
# to log(1 + x), for x > 1 they move away.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

x = var("x")
xs = [-0.9 + k * 2.5 / 500 for k in range(501)]
fig, ax = plt.subplots(figsize=(6.4, 4.0))
ax.axhline(0, color=GRID, lw=0.8); ax.axvline(1, color=GRID, lw=0.8, ls=(0, (4, 3)))
ax.plot(xs, [float(log(1 + t)) for t in xs], color=INK, lw=2.0)
labels = {2: (1.52, -0.05), 5: (1.52, 1.62), 10: (1.36, -1.25), 25: (1.08, 1.65)}
for n, col in ((2, ACCENT), (5, EXAMPLE), (10, ORANGE), (25, STATEMENT)):
    f = fast_callable(taylor(log(1 + x), x, 0, n), vars=[x], domain=RDF)
    ax.plot(xs, [f(t) for t in xs], color=col, lw=1.1)
    ax.text(*labels[n], "$T_{%d}$" % n, color=col, fontsize=11)
assert abs(taylor(log(1 + x), x, 0, 25).subs(x=1.5)) > 10
ax.text(-0.85, 0.55, r"$\log(1 + x)$", color=INK, fontsize=11)
ax.set_xlim(-0.9, 1.6); ax.set_ylim(-2.4, 2.0); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "taylor_log")
