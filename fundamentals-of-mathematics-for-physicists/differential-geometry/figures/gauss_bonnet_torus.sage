# Scalar curvature of the torus R = 2, r = 1 against the tube angle a (red), and the total-curvature integrand cos(a) (blue).
load("../../_filters/figstyle.sage")
a = var("a"); R0, r = 2, 1
g = plot(2*cos(a)/(r*(R0 + r*cos(a))), (a, 0, 2*pi), color=STATEMENT, thickness=2, legend_label=r"$R = \frac{2\cos a}{r(R + r\cos a)}$")
g += plot(cos(a), (a, 0, 2*pi), color=ACCENT, thickness=2, legend_label=r"$K\sqrt{\det g}/r = \cos a$")
g.set_legend_options(loc="upper center", font_size=10)
g.axes_labels([r"$a$", ""])
save_figure(g, "gauss_bonnet_torus", figsize=(6, 4), ymin=-2.2, ymax=1.4, ticks=[[0, pi/2, pi, 3*pi/2, 2*pi], None], tick_formatter=[pi, None])
