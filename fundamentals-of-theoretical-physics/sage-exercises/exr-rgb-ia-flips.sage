# Exercise exr-rgb-ia-flips: the time between flips of a body started at angle eps from its intermediate axis, (I1, I2, I3) = (1, 2, 3), |Pi| = 1, against (2/lambda) log(1/eps).
import numpy as np
from scipy.integrate import solve_ivp
I = np.array([1.0, 2.0, 3.0]); lam = 0.5/np.sqrt(3.0)
def flips(eps, T):
    P0 = np.array([eps, 1.0, eps]); P0 /= np.linalg.norm(P0)
    s = solve_ivp(lambda t, P: np.cross(P, P/I), (0, T), P0, rtol=1e-12, atol=1e-14, dense_output=True, max_step=0.05)
    tt = np.linspace(0, T, 400001); P2 = s.sol(tt)[1]
    z = tt[1:][np.sign(P2[1:]) != np.sign(P2[:-1])]
    return np.diff(z)
rows = []
for eps in (1e-2, 1e-3, 1e-4, 1e-5):
    d = flips(eps, 40 + 30*np.log(1/eps))
    rows.append((eps, d.mean()))
    print('eps = %.0e: time between flips %.3f' % (eps, d.mean()))
slope = np.polyfit([np.log(1/e) for e, _ in rows], [d for _, d in rows], 1)[0]
print('slope of the flip time against log(1/eps): %.4f;  2/lambda = %.4f' % (slope, 2/lam))
