# Exercise exr-grf-kc-paraboloid: a unit-speed geodesic on the paraboloid z = x^2 + y^2 conserves l = r^2 phidot and turns at r = |l|.
from scipy.integrate import solve_ivp
import numpy as np
r, ph = var('r ph'); al = 1
g = matrix([[1 + 4*al^2*r^2, 0], [0, r^2]])
gi = g.inverse(); X = [r, ph]
Gam = [[[sum(gi[k, l]*(diff(g[l, i], X[j]) + diff(g[l, j], X[i]) - diff(g[i, j], X[l])) for l in range(2))/2 for j in range(2)] for i in range(2)] for k in range(2)]
G = [[[fast_callable(Gam[k][i][j], vars=[r, ph], domain=float) for j in range(2)] for i in range(2)] for k in range(2)]
def rhs(s, y):
    x, v = y[:2], y[2:]
    return [v[0], v[1]] + [-sum(G[k][i][j](*x)*v[i]*v[j] for i in range(2) for j in range(2)) for k in range(2)]
r0, a = 2.0, np.pi/3                      # start at r = 2, at 60 degrees to the inward radial direction
v0 = [-np.cos(a)/np.sqrt(1 + 4*r0**2), np.sin(a)/r0]
sol = solve_ivp(rhs, [0, 8], [r0, 0.0, v0[0], v0[1]], rtol=1e-11, atol=1e-12, dense_output=True)
S = np.linspace(0, 8, 9)
ell = r0**2*v0[1]
for s in S:
    y = sol.sol(s); speed = (1 + 4*y[0]**2)*y[2]**2 + y[0]**2*y[3]**2
    print('s = %.0f: r = %.6f, r^2 phidot = %.10f, speed^2 = %.10f' % (s, y[0], y[0]**2*y[3], speed))
rs = np.linspace(0, 8, 20001); rmin = min(sol.sol(s)[0] for s in rs)
print('l = %.6f, smallest r on the geodesic = %.6f' % (ell, rmin))
