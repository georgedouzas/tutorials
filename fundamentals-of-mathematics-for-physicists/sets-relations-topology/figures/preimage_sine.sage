# The preimage of the interval (1/2, 1] under sin on [-2 pi, 4 pi]: the band 1/2 < y <= 1 and, on the x-axis, the
# open intervals (pi/6 + 2 k pi, 5 pi/6 + 2 k pi) that sin sends into it.
load("../../_filters/figstyle.sage")

x = var("x")
roots = sorted(r for r in [pi / 6 + 2 * k * pi for k in range(-1, 2)] + [5 * pi / 6 + 2 * k * pi for k in range(-1, 2)])
assert all(sin(r) == 1 / 2 for r in roots)
a, b = -2 * pi, 4 * pi
g = polygon([(a, 1 / 2), (b, 1 / 2), (b, 1), (a, 1)], color=STATEMENT, alpha=0.15)
g += line([(a, 1 / 2), (b, 1 / 2)], color=STATEMENT, linestyle="--", thickness=0.8)
g += plot(sin(x), (x, a, b), color=ACCENT, thickness=2)
for k in range(-1, 2):
    lo, hi = pi / 6 + 2 * k * pi, 5 * pi / 6 + 2 * k * pi
    g += line([(lo, 0), (hi, 0)], color=EXAMPLE, thickness=5)
    g += plot(sin(x), (x, lo, hi), color=STATEMENT, thickness=2.6)
g += text(r"$(\frac{1}{2}, 1]$", (b + 0.5, 0.75), color=STATEMENT, fontsize=12, horizontal_alignment="left")
g += text(r"preimage of $(\frac{1}{2}, 1]$", (a + 0.1, -1.6), color=EXAMPLE, fontsize=11, horizontal_alignment="left")
g += text(r"$y = \sin x$", (3 * pi / 2, -1.55), color=ACCENT, fontsize=11)
save_figure(g, "preimage_sine", figsize=(7, 3.2), ticks=[[-2 * pi, 0, 2 * pi, 4 * pi], [-1, 1]],
            tick_formatter=[pi, None], ymin=-1.85, ymax=1.3, xmin=a, xmax=b + 2.2, axes_labels=["$x$", "$y$"])
