# The two non-zero Christoffel symbols of the round sphere in the spherical chart as functions of theta.
load("../../_filters/figstyle.sage")
th = var("th")
g = plot(-sin(th)*cos(th), (th, 0.05, pi - 0.05), color=ACCENT, thickness=2, legend_label=r"$\Gamma^\theta_{\varphi\varphi} = -\sin\theta\cos\theta$")
g += plot(cot(th), (th, 0.2, pi - 0.2), color=STATEMENT, thickness=2, legend_label=r"$\Gamma^\varphi_{\theta\varphi} = \cot\theta$")
g.set_legend_options(loc="upper right", font_size=10)
g.axes_labels([r"$\theta$", ""])
save_figure(g, "sphere_christoffel_plot", figsize=(6, 4), ymin=-5, ymax=5, ticks=[[0, pi/2, pi], [-4, -2, 0, 2, 4]], tick_formatter=[pi, None])
