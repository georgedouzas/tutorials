# Stereographic projection of the circle from its north pole N = (0, 1): the line through N and a point P of the
# circle meets the X-axis at u = X/(1 - Y). Two points and their images are drawn; N itself has no image.
load("../../_filters/figstyle.sage")

t = var("t")
N = vector(RDF, [0, 1])
pts = [(vector(RDF, [cos(a), sin(a)]), col, name) for a, col, name in ((0.35, STATEMENT, "P"), (-2.5, EXAMPLE, "Q"))]
g = parametric_plot((cos(t), sin(t)), (t, 0, 2 * pi), color=ACCENT, thickness=2)
g += line([(-3.2, 0), (3.6, 0)], color=MUTED, thickness=0.9)
for P, col, name in pts:
    u = P[0] / (1 - P[1])
    assert abs((2 * u / (u^2 + 1)) - P[0]) < 1e-12 and abs((u^2 - 1) / (u^2 + 1) - P[1]) < 1e-12
    far = N + 1.15 * (vector(RDF, [u, 0]) - N) if abs(u) > 1 else N + 1.0 * (vector(RDF, [u, 0]) - N)
    g += line([N, far if abs(u) > 1 else P], color=col, linestyle="--", thickness=1.0)
    g += point([P], color=col, size=45, zorder=5) + point([(u, 0)], color=col, size=45, marker="s", zorder=5)
    g += text(f"${name}$", P + (vector([0.16, 0.14]) if P[0] > 0 else vector([-0.2, -0.05])), color=col, fontsize=12)
    g += text(f"$u_{name}$", (u + 0.12, -0.24), color=col, fontsize=12)
g += point([N], color=INK, size=45, zorder=5, faceted=True, rgbcolor="white")
g += text("$N$", (0.0, 1.22), color=INK, fontsize=12)
g += text("$S^1$", (-0.95, 0.75), color=ACCENT, fontsize=12)
save_figure(g, "stereographic_circle", figsize=(5.4, 2.8), aspect_ratio=1, axes=False, frame=False, xmin=-3.2, xmax=3.6, ymin=-1.2, ymax=1.4)
