# Exercise exr-qsc-pw-bessel (Cini et al., Sec. 14.4, eqs. (14.20)-(14.21)): the spherical Bessel functions j_0, n_0, j_1, n_1
# solve x^2 u'' + 2 x u' + (x^2 - l(l+1)) u = 0, agree with sqrt(pi/2x) J_{l+1/2}, and have the stated asymptotics.
x = var('x'); assume(x > 0)
j0, n0 = sin(x)/x, -cos(x)/x
j1, n1 = sin(x)/x^2 - cos(x)/x, -cos(x)/x^2 - sin(x)/x
eq = lambda u, l: (x^2*diff(u, x, 2) + 2*x*diff(u, x) + (x^2 - l*(l + 1))*u).simplify_full()
print("residuals for j0, n0 (l = 0):", eq(j0, 0), eq(n0, 0), "; for j1, n1 (l = 1):", eq(j1, 1), eq(n1, 1))
print("j_l = sqrt(pi/2x) J_{l+1/2} and Sage's spherical_bessel_J agree at x = 0.7, 3, 11 for l = 0..4:",
      all(abs(spherical_bessel_J(l, xv) - sqrt(pi/(2*xv))*bessel_J(l + 1/2, xv)).n() < 1e-12 for l in range(5) for xv in (0.7, 3.0, 11.0)))
print("j1 and n1 agree with spherical_bessel_J(1, .), spherical_bessel_Y(1, .):",
      all(abs((j1 - spherical_bessel_J(1, x)).subs(x=xv).n()) < 1e-12 and abs((n1 - spherical_bessel_Y(1, x)).subs(x=xv).n()) < 1e-12 for xv in (0.7, 3.0, 11.0)))
print("x j1(x) - sin(x - pi/2) =", (x*j1 - sin(x - pi/2)).simplify_full(), "-> 0 as x -> oo:", limit(x*j1 - sin(x - pi/2), x=oo))
