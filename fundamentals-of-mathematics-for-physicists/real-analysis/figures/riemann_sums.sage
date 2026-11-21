# Lower (blue) and upper (red) sums of x^2 on [0, 1] with n = 4 and n = 16 equal pieces; the exact sums are
# (n-1)n(2n-1)/(6n^3) and n(n+1)(2n+1)/(6n^3), their gap is 1/n, and both tend to 1/3.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

def sums(n):
    h = QQ(1) / n
    return sum((k * h)^2 * h for k in range(n)), sum(((k + 1) * h)^2 * h for k in range(n))

for n in (4, 16):
    L, U = sums(n)
    assert L == (n - 1) * n * (2 * n - 1) / (6 * n^3) and U == n * (n + 1) * (2 * n + 1) / (6 * n^3) and U - L == 1 / QQ(n)

xs = [k / 400.0 for k in range(401)]
fig, axes = plt.subplots(1, 2, figsize=(8.4, 3.7), sharey=True)
for ax, n in zip(axes, (4, 16)):
    L, U = sums(n)
    h = 1.0 / n
    for k in range(n):
        ax.add_patch(Rectangle((k * h, 0), h, ((k + 1) * h)**2, facecolor=STATEMENT, alpha=0.22, edgecolor=STATEMENT, lw=0.7))
        ax.add_patch(Rectangle((k * h, 0), h, (k * h)**2, facecolor=ACCENT, alpha=0.35, edgecolor=ACCENT, lw=0.7))
    ax.plot(xs, [t * t for t in xs], color=INK, lw=1.8)
    ax.set_title(r"$n = %d$:  $L = \frac{%d}{%d}$,  $U = \frac{%d}{%d}$" % (n, L.numerator(), L.denominator(), U.numerator(), U.denominator()),
                 fontsize=11, color=INK)
    ax.text(0.06, 0.82, "$x^2$", color=INK, fontsize=12)
    ax.set_xlim(0, 1.02); ax.set_ylim(0, 1.05)
    ax.set_xticks([0, 0.5, 1]); ax.set_xlabel("$x$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "riemann_sums")

traces = [{"x": xs, "y": [t * t for t in xs], "mode": "lines", "name": "x^2", "line": {"color": INK, "width": 2}}]
for n, dash in ((4, "solid"), (16, "dot")):
    h = 1.0 / n
    lx = [k * h for k in range(n + 1)]
    traces.append({"x": lx, "y": [(k * h)**2 for k in range(n)] + [(n - 1) * h * (n - 1) * h], "mode": "lines", "line": {"shape": "hv", "color": ACCENT, "dash": dash},
                   "name": "lower, n = %d" % n})
    traces.append({"x": lx, "y": [((k + 1) * h)**2 for k in range(n)] + [1.0], "mode": "lines", "line": {"shape": "hv", "color": STATEMENT, "dash": dash},
                   "name": "upper, n = %d" % n})
save_plotly(traces, "riemann_sums", {"xaxis": {"title": "x"}, "yaxis": {"range": [0, 1.05]}})
