# Level curves f = c of f(x, y) = x^2 + 4y^2 (ellipses) and gradient vectors grad f = (2x, 8y), scaled down, at points
# of the level curves f = 4 and f = 8: each arrow is orthogonal to its curve and points towards larger values.
load("../../_filters/figstyle.sage")

var("x y t")
f = x^2 + 4 * y^2
grad = vector([diff(f, x), diff(f, y)])
R = 3.6
g = Graphics()
for c in [1, 2, 4, 6, 8, 10]:              # the ellipse f = c is x = sqrt(c) cos t, y = sqrt(c)/2 sin t
    g += parametric_plot((sqrt(c) * cos(t), sqrt(c) / 2 * sin(t)), (t, 0, 2 * pi),
                         color=(ACCENT if c in (4, 8) else GRID), thickness=(1.8 if c in (4, 8) else 1))
scale = 0.065
for c in [4, 8]:
    a, b = sqrt(c), sqrt(c) / 2           # the level curve x = a cos t, y = b sin t
    for k in range(8):
        tt = 2 * pi * k / 8 + pi / 8
        p = vector([a * cos(tt), b * sin(tt)])
        tangent = vector([-a * sin(tt), b * cos(tt)])
        v = grad.subs(x=p[0], y=p[1])
        assert bool((v * tangent).simplify_full() == 0)  # orthogonal to the curve
        P = vector(RDF, p)
        g += arrow(P, P + scale * vector(RDF, v), color=STATEMENT, width=1.4, arrowsize=2.5)
g += text("$f = 4$", (0.0, 1.17), color=ACCENT, fontsize=11)
g += text("$f = 8$", (0.0, 1.62), color=ACCENT, fontsize=11)
g += text(r"$\nabla f$", (3.35, 1.2), color=STATEMENT, fontsize=12)
save_figure(g, "level_gradient", figsize=(6, 3.6), xmin=-R, xmax=R + 0.3, ymin=-2.1, ymax=2.1, aspect_ratio=1, axes=False, frame=False)
