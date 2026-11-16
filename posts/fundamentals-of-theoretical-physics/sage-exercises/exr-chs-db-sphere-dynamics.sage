# Exercise exr-chs-db-sphere-dynamics: Dirac-bracket equations of motion of a free particle on a sphere; they keep the constraints and move along great circles.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, p1, p2, p3, R, m = var('x1 x2 x3 p1 p2 p3 R m')
qs, ps = [x1, x2, x3], [p1, p2, p3]
X = vector(qs); P = vector(ps)
psi = [X*X - R^2, X*P]
C = matrix(SR, 2, 2, lambda i, j: PB(psi[i], psi[j], qs, ps)); Ci = C.inverse()
def D(A, B):
    return (PB(A, B, qs, ps) - sum(PB(A, psi[i], qs, ps)*Ci[i, j]*PB(psi[j], B, qs, ps) for i in range(2) for j in range(2))).simplify_full()
H = P*P/(2*m)
xd = [D(c, H) for c in X]; pd = [D(c, H) for c in P]
print('xdot - (p - (x.p) x/|x|^2)/m =', [(xd[i] - (P[i] - (X*P)*X[i]/(X*X))/m).simplify_full() for i in range(3)])
print('pdot - (-(|p|^2 x - (x.p) p)/(m |x|^2)) =', [(pd[i] + ((P*P)*X[i] - (X*P)*P[i])/(m*(X*X))).simplify_full() for i in range(3)])
print('d/dt |x|^2 =', sum(2*X[i]*xd[i] for i in range(3)).simplify_full(), ';  d/dt (x.p) =', sum(P[i]*xd[i] + X[i]*pd[i] for i in range(3)).simplify_full())
import numpy as np
from scipy.integrate import solve_ivp
def f(t, s):
    x, p = s[:3], s[3:]
    return list((p - (x @ p)*x/(x @ x))) + list(-((p @ p)*x - (x @ p)*p)/(x @ x))
x0 = np.array([1.0, 0, 0]); p0 = np.array([0, 0.6, 0.8])
sol = solve_ivp(f, [0, 10], list(x0) + list(p0), rtol=1e-11, atol=1e-12, dense_output=True)
n = np.cross(x0, p0)
ts = np.linspace(0, 10, 101)
print('max | |x| - 1 |   =', '%.1e' % max(abs(np.linalg.norm(sol.sol(t)[:3]) - 1) for t in ts))
print('max | x . n |     =', '%.1e' % max(abs(sol.sol(t)[:3] @ n) for t in ts), ' (the orbit stays in the plane normal to x0 x p0: a great circle)')
print('x(t) - (cos t x0 + sin t p0), max =', '%.1e' % max(np.linalg.norm(sol.sol(t)[:3] - (np.cos(t)*x0 + np.sin(t)*p0)) for t in ts))
