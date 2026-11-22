# The images in the unit disc of the vertical lines x = c (blue) and of the horizontal lines y = c (red) of the half-plane under w = (z - i)/(z + i).
load("../../_filters/figstyle.sage")
s = var("s")
def Phi(z): return (z - I)/(z + I)
g = circle((0, 0), 1, color=INK, thickness=1.5)
for c in [0, 1/2, -1/2, 1, -1, 2, -2]:
    w = Phi(c + I*exp(s))
    g += parametric_plot((real_part(w), imag_part(w)), (s, -6, 6), color=ACCENT, thickness=1.3, plot_points=400)
for c in [1/2, 1, 2]:
    w = Phi(tan(s) + I*c)
    g += parametric_plot((real_part(w), imag_part(w)), (s, -1.5707, 1.5707), color=STATEMENT, thickness=1.3, plot_points=600)
g += point([(0, 0)], color=INK, size=25, zorder=5) + text(r"$w = 0$", (0.12, -0.09), color=INK, fontsize=10)
g += text(r"$w = 1$", (1.17, 0.0), color=INK, fontsize=10)
g.axes(False)
save_figure(g, "poincare_disc", figsize=(5, 5), aspect_ratio=1)
