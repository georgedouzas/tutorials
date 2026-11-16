# Exercise exr-chs-th-pendulum-tension: spherical pendulum with a multiplier; the multiplier gives the tension of the rod.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
x1, x2, x3, lam, p1, p2, p3, pl, m, R, g, u, v = var('x1 x2 x3 lam p1 p2 p3 pl m R g u v')
qs, ps = [x1, x2, x3, lam], [p1, p2, p3, pl]
X = vector([x1, x2, x3]); P = vector([p1, p2, p3])
H = P*P/(2*m) + m*g*x3 + lam/2*(X*X - R^2)
d2 = PB(X*P, H + u*pl, qs, ps).expand()
print('d/dt (x.p) =', d2)
lam_sol = solve(d2 == 0, lam)[0].rhs()
print('lambda =', lam_sol)
N = (lam_sol*R).subs({p1: m*v, p2: 0, p3: 0}).subs({x1: sqrt(R^2 - x2^2 - x3^2)}).simplify_full()
print('tension lambda R with |p| = m v, |x| = R:', N)
print('  at the bottom (x3 = -R):', N.subs(x3=-R).expand(), ';  at rest at the bottom:', N.subs({x3: -R, v: 0}))
import numpy as np
from scipy.integrate import solve_ivp
gg, RR, mm = 9.81, 1.0, 1.0
def ang(t, s):                               # theta from the downward vertical, phi the azimuth
    th, ph, dth, dph = s
    return [dth, dph, np.sin(th)*np.cos(th)*dph**2 - gg/RR*np.sin(th), -2*dth*dph*np.cos(th)/np.sin(th)]
def cart(t, s):                              # Hamilton's equations from H_T with lambda = (|p|^2/m - m g x3)/R^2
    X, P = s[:3], s[3:]
    lam = (P @ P/mm - mm*gg*X[2])/RR**2
    return list(P/mm) + list(-lam*X - np.array([0, 0, mm*gg]))
th0, dph0 = 1.0, 1.5
sa = solve_ivp(ang, [0, 3], [th0, 0.0, 0.0, dph0], rtol=1e-11, atol=1e-12, dense_output=True)
X0 = np.array([RR*np.sin(th0), 0, -RR*np.cos(th0)]); P0 = mm*np.array([0, RR*np.sin(th0)*dph0, 0])
sc = solve_ivp(cart, [0, 3], list(X0) + list(P0), rtol=1e-11, atol=1e-12, dense_output=True)
ts = np.linspace(0, 3, 31)
dz = max(abs(sc.sol(t)[2] + RR*np.cos(sa.sol(t)[0])) for t in ts)
dr = max(abs(np.linalg.norm(sc.sol(t)[:3]) - RR) for t in ts)
print('max | x3(cartesian) - x3(angles) | over 0 <= t <= 3:', dz < 1e-7, '(%.1e)' % dz)
print('max | |x| - R | along the cartesian orbit:', dr < 1e-7)
