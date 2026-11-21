# The graphs of exp and of its inverse log are mirror images in the diagonal y = x: the point (a, e^a) of one graph
# corresponds to the point (e^a, a) of the other.
load("../../_filters/figstyle.sage")

x = var("x")
a = 1.1
assert all(abs(log(exp(RDF(s))) - s) < 1e-12 for s in (-2, 1.1, 1.5))
g = plot(exp(x), (x, -3, 1.6), color=ACCENT, thickness=2) + plot(log(x), (x, exp(-3), 4.95), color=STATEMENT, thickness=2)
g += line([(-3, -3), (5, 5)], color=MUTED, linestyle="--", thickness=0.9)
P, Q = (a, exp(a)), (exp(a), a)
g += line([P, Q], color=INK, linestyle=":", thickness=1) + point([P], color=ACCENT, size=40, zorder=5) + point([Q], color=STATEMENT, size=40, zorder=5)
g += text(r"$(a, e^a)$", (P[0] + 0.2, P[1] + 0.3), color=ACCENT, fontsize=11, horizontal_alignment="left")
g += text(r"$(e^a, a)$", (Q[0] + 0.1, Q[1] - 0.4), color=STATEMENT, fontsize=11, horizontal_alignment="left")
g += text(r"$y = e^x$", (-2.7, 1.3), color=ACCENT, fontsize=12, horizontal_alignment="left")
g += text(r"$y = \log x$", (3.7, 2.15), color=STATEMENT, fontsize=12)
g += text(r"$y = x$", (-2.3, -2.75), color=MUTED, fontsize=11, horizontal_alignment="left")
save_figure(g, "inverse_graphs", figsize=4.4, aspect_ratio=1, xmin=-3, xmax=5, ymin=-3, ymax=5, axes_labels=["$x$", "$y$"])
