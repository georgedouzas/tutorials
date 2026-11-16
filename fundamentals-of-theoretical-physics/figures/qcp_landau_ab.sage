# Figure: a charge in a magnetic field. Left: Landau-level densities |chi_n(x - x_k)|^2 in the Landau gauge, n = 0, 1, 2, at
# the orbit centres x_k = -4, 0, 4 (units of the magnetic length l_B = sqrt(hbar/qB)) (Guidry-Sun, Sec. 28.2, eq. (28.7)).
# Right: energies E_n = (hbar^2/2mR^2)(n - Phi/Phi0)^2 of a charge on a ring around a flux Phi, n = -2..3, periodic in Phi
# with period Phi0 (Galitski et al., Problem 13.24). The checks keep hbar, q, B, m symbolic.
# Output: figures/qcp_landau_ab.svg.
import os
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qcp_landau_ab.svg")
x, y, hb, q, B, m, k = var("x y hbar q B m k"); assume(hb > 0, q > 0, B > 0, m > 0)
l2 = hb/(q*B)
ok = True
for n in range(4):
    psi = exp(I*k*y)*hermite(n, (x - l2*k)/sqrt(l2))*exp(-(x - l2*k)^2/(2*l2))
    Hpsi = (-hb^2*diff(psi, x, 2) + (-I*hb*diff(psi, y) - q*B*x*psi).diff(y)*(-I*hb) - q*B*x*(-I*hb*diff(psi, y) - q*B*x*psi))/(2*m)
    ok = ok and bool((Hpsi/psi - hb*q*B/m*(n + 1/2)).simplify_full() == 0)
print("[PASS] Landau-gauge states e^{iky} H_n((x - x_k)/l_B) e^{-(x - x_k)^2/2 l_B^2} have energy hbar omega_c (n + 1/2), n = 0..3:", ok)
u = var("u")
dens = lambda n: (hermite(n, u)*exp(-u^2/2))^2/(2^n*factorial(n)*sqrt(pi))
print("[PASS] the plotted densities are normalised (n = 0, 1, 2):", all(bool(integrate(dens(n), u, -oo, oo) == 1) for n in range(3)))
E = lambda n, f: (n - f)^2
print("[PASS] ring spectrum {E_n(Phi)} is periodic with period Phi0 and the ground state is degenerate at Phi0/2:",
      all(sorted(E(n, f + 1) for n in range(-5, 6))[:5] == sorted(E(n, f) for n in range(-5, 6))[:5] for f in (0, 1/4, 1/3)) and E(0, 1/2) == E(1, 1/2))
cols = ["royalblue", "firebrick", "darkgreen"]
g1 = Graphics()
for n, xc in zip(range(3), (-4, 0, 4)):
    g1 += plot(dens(n).subs(u=x - xc), (x, -8, 8), color=cols[n], thickness=1.6, legend_label=r"$n = %d$, $x_k = %d$" % (n, xc))
g1.axes_labels([r"$x/\ell_B$", r"$|\chi_n(x - x_k)|^2$"]); g1.set_legend_options(font_size=8)
f = var("f")
g2 = Graphics()
for n in range(-2, 4):
    g2 += plot((n - f)^2, (f, -1.5, 2.5), color="gray" if n % 2 else "black", thickness=1.2)
g2 += plot(lambda fv: min((n - fv)^2 for n in range(-3, 5)), (-1.5, 2.5), color="firebrick", thickness=2.2, plot_points=800)
g2.set_axes_range(ymin=0, ymax=3)
g2.axes_labels([r"$\Phi/\Phi_0$", r"$E\,/\,(\hbar^2/2mR^2)$"])
fig = graphics_array([g1, g2]).matplotlib(figsize=[10, 3.8]); fig.subplots_adjust(wspace=0.35)
fig.savefig(OUT, bbox_inches="tight")
print("wrote", os.path.relpath(OUT))
