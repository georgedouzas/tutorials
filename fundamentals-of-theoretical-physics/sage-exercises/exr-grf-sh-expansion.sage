# Exercise exr-grf-sh-expansion: the Shapiro integrand to first order in m, and the closed form of t(r, r0).
m, r, r0 = var('m r r0'); assume(r > r0, r0 > 0, m > 0)
integrand = 1/((1 - 2*m/r)*sqrt(1 - r0^2/r^2*(1 - 2*m/r)/(1 - 2*m/r0)))
first = integrand.subs(m=0) + m*diff(integrand, m).subs(m=0)   # first-order Taylor polynomial in m
claimed = r/sqrt(r^2 - r0^2) + 2*m/sqrt(r^2 - r0^2) + m*r0/((r + r0)*sqrt(r^2 - r0^2))
pts = [(3.0, 1.0), (7.5, 2.0), (40.0, 13.0)]
print('first-order integrand minus the claimed one, at sample points:', [float(((first - claimed)/m).simplify().subs(r=a, r0=b, m=1).real()) for a, b in pts])
t = sqrt(r^2 - r0^2) + 2*m*log((r + sqrt(r^2 - r0^2))/r0) + m*sqrt((r - r0)/(r + r0))
print('d/dr of the closed form minus the integrand, at sample points:', [float((diff(t, r) - claimed).subs(r=a, r0=b, m=0.3)) for a, b in pts])
import numpy as np
from scipy.integrate import quad
def exact(R, R0, M):
    f = lambda x: 1 - 2*M/x
    def g(u):
        x = R0*np.cosh(u); s = 1 - (R0/x)**2*f(x)/f(R0)
        return R0*np.sinh(u)/(f(x)*np.sqrt(s))
    return quad(g, 0, np.arccosh(R/R0), epsabs=1e-13, epsrel=1e-13, limit=200)[0]
M, R0, R = 1.0, 1e3, 1e5
te = exact(R, R0, M) - np.sqrt(R**2 - R0**2); ta = float(t.subs(m=M, r=R, r0=R0)) - np.sqrt(R**2 - R0**2)
print('m = 1, r0 = 1e3, r = 1e5: exact delay %.6f, first order %.6f, relative difference %.2e' % (te, ta, (te - ta)/te))
