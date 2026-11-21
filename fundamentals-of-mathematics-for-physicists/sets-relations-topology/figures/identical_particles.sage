# Two identical particles on a line: the configurations (x1, x2) and (x2, x1) form one class, mirror images in the
# diagonal x1 = x2. The half-plane x1 <= x2 (shaded) contains exactly one point of every class.
load("../../_filters/figstyle.sage")

a, b = 0.8, 2.3
g = polygon([(-3, -3), (-3, 3), (3, 3)], color=ACCENT, alpha=0.12, edgecolor=None)
g += line([(-3, -3), (3, 3)], color=ACCENT, thickness=1.6)
g += point([(a, b)], color=STATEMENT, size=45, zorder=5) + point([(b, a)], color=STATEMENT, size=45, zorder=5, faceted=True, rgbcolor="white", markeredgecolor=STATEMENT)
g += line([(a, b), (b, a)], color=STATEMENT, linestyle=":", thickness=1)
g += text(r"$(x_1, x_2)$", (a - 0.15, b + 0.3), color=STATEMENT, fontsize=11, horizontal_alignment="right")
g += text(r"$(x_2, x_1)$", (b + 0.15, a - 0.3), color=STATEMENT, fontsize=11, horizontal_alignment="left")
g += text(r"$x_1 \leq x_2$", (-1.9, 1.6), color=ACCENT, fontsize=12)
g += text(r"$x_1 = x_2$", (2.1, 2.75), color=ACCENT, fontsize=11, horizontal_alignment="right")
save_figure(g, "identical_particles", figsize=4.0, aspect_ratio=1, xmin=-3, xmax=3, ymin=-3, ymax=3, axes_labels=["$x_1$", "$x_2$"])
