# The ratio of the error |sin x - T_7(x)| of the degree-7 Taylor polynomial of sin x to the Lagrange bound x^9/9!
# on (0, 6]: it equals |cos c| for the point c of the remainder, so it never exceeds 1. The points x = 1, 2, 3 of
# the proposition are marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

T7 = lambda t: t - t^3 / 6 + t^5 / 120 - t^7 / 5040
ratio = lambda t: float(abs(sin(RealField(200)(t)) - T7(RealField(200)(t))) / (RealField(200)(t)^9 / 362880))
xs = [0.05 + k * 5.95 / 400 for k in range(401)]
rs = [ratio(t) for t in xs]
assert all(0 <= r <= 1 for r in rs)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.axhline(1, color=STATEMENT, lw=1.0, ls=(0, (4, 3)))
ax.plot(xs, rs, color=ACCENT, lw=1.6)
for t in (1, 2, 3):
    ax.plot([t], [ratio(t)], "o", color=ACCENT, ms=5)
    ax.text(t, ratio(t) - 0.09, "$x = %d$" % t, color=ACCENT, fontsize=10, ha="center", va="top")
ax.text(4.3, 1.04, "bound", color=STATEMENT, fontsize=10)
ax.text(4.0, 0.45, r"$\frac{|\sin x - T_7(x)|}{x^9/9!}$", color=ACCENT, fontsize=13)
ax.set_xlim(0, 6); ax.set_ylim(0, 1.15); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "taylor_remainder")
