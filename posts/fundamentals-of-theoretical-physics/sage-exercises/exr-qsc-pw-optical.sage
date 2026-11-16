# Exercise exr-qsc-pw-optical (Cini et al., Sec. 14.4.1, eqs. (14.25)-(14.28)): hard sphere at ka = 3 (units a = 1):
# the integral of |f|^2 over the sphere, the partial-wave sum, and (4 pi/k) Im f(0) agree.
k = 3.0; lmax = 30
d = [arctan(spherical_bessel_J(l, k)/spherical_bessel_Y(l, k)).n() for l in range(lmax + 1)]
f = lambda c: sum((2*l + 1)*exp(I*d[l])*sin(d[l])*legendre_P(l, c) for l in range(lmax + 1))/k
sig_sum = 4*pi.n()/k^2*sum((2*l + 1)*sin(d[l])^2 for l in range(lmax + 1))
sig_int = 2*pi.n()*numerical_integral(lambda c: abs(CDF(f(c)))^2, -1, 1)[0]
sig_opt = 4*pi.n()/k*CDF(f(1.0)).imag()
print("sigma/(pi a^2): partial-wave sum %.10f, integral of |f|^2 %.10f, optical theorem %.10f" % (sig_sum/pi.n(), sig_int/pi.n(), sig_opt/pi.n()))
