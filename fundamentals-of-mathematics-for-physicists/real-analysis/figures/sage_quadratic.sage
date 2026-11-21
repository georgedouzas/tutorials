# The quadratic f(x) = x^2 + 3x + 2 on [-5, 5], with its roots -2 and -1 marked.
load("../../_filters/figstyle.sage")

x = var("x")
f = x^2 + 3 * x + 2
roots = sorted(r.rhs() for r in solve(f == 0, x))
assert roots == [-2, -1]
g = plot(f, (x, -5, 5), color=ACCENT, thickness=2, axes_labels=["$x$", "$f(x)$"])
g += points([(r, 0) for r in roots], color=STATEMENT, size=40, zorder=5)
g += text("$-2$", (-2.25, 2.6), color=STATEMENT, fontsize=11)
g += text("$-1$", (-0.7, 2.6), color=STATEMENT, fontsize=11)
save_figure(g, "sage_quadratic", figsize=(6, 4))
