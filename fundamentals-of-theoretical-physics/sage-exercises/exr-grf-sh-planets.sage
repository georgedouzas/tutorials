# Exercise exr-grf-sh-planets: round-trip Shapiro delays to Mars and Venus at superior conjunction, exact and first order.
import numpy as np
from scipy.integrate import quad
G, c, Msun = 6.674e-11, 2.99792458e8, 1.98892e30
m = G*Msun/c^2; AU = 1.495978707e11; R0 = 6.957e8
def leg(R):      # t(R, R0) - sqrt(R^2 - R0^2), exact
    f = lambda x: 1 - 2*m/x
    def g(u):
        x = R0*np.cosh(u); s = 1 - (R0/x)**2*f(x)/f(R0)
        return R0*np.sinh(u)*(1/(f(x)*np.sqrt(s)) - x/np.sqrt(x*x - R0*R0))
    return quad(g, 0, np.arccosh(R/R0), epsabs=1e-9, epsrel=1e-12, limit=400)[0]
for name, r2 in (('Mars', 1.524*AU), ('Venus', 0.723*AU)):
    exact = 2*(leg(AU) + leg(r2))/c
    approx = 4*m/c*(np.log(4*AU*r2/R0**2) + 1)
    print('%-5s: exact %.2f us, formula %.2f us, log term %.4f' % (name, exact*1e6, approx*1e6, np.log(4*AU*r2/R0**2)))
