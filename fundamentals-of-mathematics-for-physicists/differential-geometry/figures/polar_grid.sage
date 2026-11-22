# The plane in polar coordinates: circles r = const (red), rays phi = const (blue), and the coordinate vectors d_r (length 1) and d_phi (length r) at two points.
load("../../_filters/figstyle.sage")
g = Graphics()
for r0 in [0.5, 1, 1.5, 2, 2.5]:
    g += circle((0, 0), r0, color=STATEMENT, thickness=1.2)
for k in range(12):
    a = k*pi/6
    g += line([(0, 0), (2.8*cos(a), 2.8*sin(a))], color=ACCENT, thickness=1)
for r0, a in [(1.5, pi/4), (2.5, 3*pi/4)]:
    p = (r0*cos(a), r0*sin(a))
    g += arrow(p, (p[0] + 0.4*cos(a), p[1] + 0.4*sin(a)), color=INK, width=2, arrowsize=3)
    g += arrow(p, (p[0] - 0.4*r0*sin(a), p[1] + 0.4*r0*cos(a)), color=EXAMPLE, width=2, arrowsize=3)
g += text(r"$\partial_r$", (1.5*cos(pi/4) + 0.62, 1.5*sin(pi/4) + 0.22), color=INK, fontsize=13)
g += text(r"$\partial_\varphi$", (1.5*cos(pi/4) - 0.75, 1.5*sin(pi/4) + 0.62), color=EXAMPLE, fontsize=13)
g.axes(False)
save_figure(g, "polar_grid", figsize=(5, 5), aspect_ratio=1)
