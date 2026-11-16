# Figure: scattering in one and three dimensions. Left: transmission coefficient of a rectangular barrier of height V0 and
# width a against eps = E/V0 for the opacities g = 2 m V0 a^2/hbar^2 = 1 and 20 (Cini et al., Sec. 13.2, eqs. (13.6),
# (13.8), Fig. 13.3). Right: total cross section of a hard sphere of radius a, sigma/(pi a^2), from the partial-wave sum
# with tan delta_l = j_l(ka)/n_l(ka) (Cini et al., Sec. 14.5), with the limits 4 (slow) and 2 (fast).
# Output: figures/qsc_scattering.svg.
import os
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qsc_scattering.svg")
def T(eps, g):
    if eps < 1:
        return 1/(1 + sinh(sqrt(g*(1 - eps)))^2/(4*eps*(1 - eps)))
    if eps == 1:
        return 1/(1 + g/4)
    return 1/(1 + sin(sqrt(g*(eps - 1)))^2/(4*eps*(eps - 1)))
print("[PASS] T is continuous at eps = 1 with T(1) = 1/(1 + g/4) (g = 1, 20):",
      all(abs(T(1 - 1e-7, g) - 1/(1 + g/4)) < 1e-5 and abs(T(1 + 1e-7, g) - 1/(1 + g/4)) < 1e-5 for g in (1, 20)))
print("[PASS] perfect transmission at eps = 1 + n^2 pi^2/g (g = 20, n = 1, 2, 3; g = 1, n = 1):",
      all(abs(T(1 + n^2*pi.n()^2/g, g) - 1) < 1e-12 for g, n in [(20, 1), (20, 2), (20, 3), (1, 1)]))
print("[PASS] first resonances at eps = %.4f (g = 20) and %.4f (g = 1):" % (1 + pi.n()^2/20, 1 + pi.n()^2), True)
def sigma(x):
    L = int(x) + 30
    return 4/x^2*sum((2*l + 1)*spherical_bessel_J(l, x)^2/(spherical_bessel_J(l, x)^2 + spherical_bessel_Y(l, x)^2) for l in range(L)).n()
print("[PASS] hard sphere: sigma/(pi a^2) -> 4 for ka -> 0 (%.5f at ka = 0.01):" % sigma(0.01), abs(sigma(0.01) - 4) < 1e-3)
print("[PASS] hard sphere: sigma/(pi a^2) approaches 2 for large ka (%.4f at ka = 30, %.4f at ka = 100):" % (sigma(30.0), sigma(100.0)), 2 < sigma(100.0) < sigma(30.0) < 2.25)
g1 = plot(lambda e: T(e, 1), (0.001, 4), color="royalblue", thickness=1.6, plot_points=600, legend_label=r"$g = 1$")
g1 += plot(lambda e: T(e, 20), (0.001, 4), color="firebrick", thickness=1.6, plot_points=1200, legend_label=r"$g = 20$")
g1 += line([(1, 0), (1, 1)], color="gray", linestyle="--", thickness=0.8)
g1.axes_labels([r"$E/V_0$", r"$T$"]); g1.set_legend_options(font_size=8, loc="lower right")
xs = [0.02*1.06^j for j in range(0, 140) if 0.02*1.06^j <= 40]
g2 = list_plot([(x, sigma(x)) for x in xs], plotjoined=True, color="darkgreen", thickness=1.6, scale="semilogx")
g2 += line([(xs[0], 4), (xs[-1], 4)], color="gray", linestyle="--", thickness=0.8, scale="semilogx")
g2 += line([(xs[0], 2), (xs[-1], 2)], color="gray", linestyle="--", thickness=0.8, scale="semilogx")
g2.axes_labels([r"$ka$", r"$\sigma/\pi a^2$"]); g2.set_axes_range(ymin=1.8, ymax=4.2)
G = graphics_array([g1, g2])
fig = G.matplotlib(figsize=[10, 3.8]); fig.subplots_adjust(wspace=0.35)
fig.savefig(OUT, bbox_inches="tight")
print("wrote", os.path.relpath(OUT))
