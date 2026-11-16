# Exercise exr-grf-sh-close: exact and first-order Shapiro excess t(r, r0) - sqrt(r^2 - r0^2) for rays close to a black hole (m = 1).
import numpy as np
from scipy.integrate import quad
def exact(R, R0, M=1.0):
    f = lambda x: 1 - 2*M/x
    def g(u):
        x = R0*np.cosh(u); s = 1 - (R0/x)**2*f(x)/f(R0)
        return R0*np.sinh(u)*(1/(f(x)*np.sqrt(s)) - x/np.sqrt(x*x - R0*R0))
    return quad(g, 0, np.arccosh(R/R0), epsabs=1e-11, epsrel=1e-11, limit=1000)[0]
def first(R, R0, M=1.0):
    return 2*M*np.log((R + np.sqrt(R*R - R0*R0))/R0) + M*np.sqrt((R - R0)/(R + R0))
for R0 in (100.0, 10.0, 4.0, 3.1, 3.01):
    e, a = exact(1000.0, R0), first(1000.0, R0)
    print('r0 = %6.2f: exact %.4f, first order %.4f, relative error %.3f' % (R0, e, a, (e - a)/e))
