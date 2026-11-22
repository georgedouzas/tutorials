# The Minkowski plane: light cone, the hyperbolas eta = 1 and eta = -1, and a unit timelike vector with its eta-orthogonal unit spacelike vector.
load("../../_filters/figstyle.sage")
s = var("s")
g = Graphics()
g += line([(-2.2, -2.2), (2.2, 2.2)], color=MUTED, thickness=1, linestyle="--")
g += line([(-2.2, 2.2), (2.2, -2.2)], color=MUTED, thickness=1, linestyle="--")
for sg in [1, -1]:
    g += parametric_plot((sinh(s), sg*cosh(s)), (s, -1.5, 1.5), color=ACCENT, thickness=1.5)     # t^2 - x^2 = 1
    g += parametric_plot((sg*cosh(s), sinh(s)), (s, -1.5, 1.5), color=STATEMENT, thickness=1.5)  # x^2 - t^2 = 1
a = 0.6
v = (sinh(a), cosh(a)); w = (cosh(a), sinh(a))          # points (x, t)
g += arrow((0, 0), v, color=EXAMPLE, width=2, arrowsize=3)
g += arrow((0, 0), w, color=EXAMPLE, width=2, arrowsize=3)
g += text(r"$\mathbf{v}$", (float(v[0]) - 0.18, float(v[1]) + 0.12), color=EXAMPLE, fontsize=13)
g += text(r"$\mathbf{w}$", (float(w[0]) + 0.16, float(w[1]) - 0.16), color=EXAMPLE, fontsize=13)
g += text(r"$\eta = 1$", (-1.35, 2.15), color=ACCENT, fontsize=11)
g += text(r"$\eta = -1$", (2.25, -0.85), color=STATEMENT, fontsize=11)
g += text(r"$x$", (2.35, -0.12), color=INK, fontsize=12) + text(r"$t$", (0.12, 2.35), color=INK, fontsize=12)
g += line([(-2.3, 0), (2.3, 0)], color=GRID, thickness=0.8) + line([(0, -2.3), (0, 2.3)], color=GRID, thickness=0.8)
g.axes(False)
save_figure(g, "minkowski_orthogonal", figsize=(4.5, 4.5), aspect_ratio=1)
