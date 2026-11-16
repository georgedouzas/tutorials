# Exercise exr-qsc-tr-smooth-step (Cini et al., Sec. 13.4, Problem 1, generalised): reflection by the smooth step
# V = (V0/2)(1 + tanh(x/w)), units hbar = 2m = 1, V0 = 1, E = 2, by integrating phi'' = (V - E) phi from the right.
from scipy.integrate import solve_ivp
import numpy as np
V0, E = 1.0, 2.0
k, kp = float(sqrt(E)), float(sqrt(E - V0))
def R_num(w):
    X = 15.0 + 15*w
    def rhs(x, y):    # y = (phi, phi') as complex numbers
        V = V0/2*(1 + np.tanh(x/w))
        return [y[1], (V - E)*y[0]]
    p0 = np.exp(1j*kp*X)
    sol = solve_ivp(rhs, [X, -X], [p0, 1j*kp*p0], rtol=1e-11, atol=1e-13, method="DOP853")
    phi, dphi = sol.y[0, -1], sol.y[1, -1]; x = -X
    A = (phi + dphi/(1j*k))/2*np.exp(-1j*k*x); B = (phi - dphi/(1j*k))/2*np.exp(1j*k*x)   # phi = A e^{ikx} + B e^{-ikx}
    return abs(B/A)**2
def R_exact(w):
    return float((sinh(pi*w*(k - kp)/2)/sinh(pi*w*(k + kp)/2))^2)
print("sharp step: R = ((k - k')/(k + k'))^2 = %.5f" % ((k - kp)/(k + kp))**2)
for w in (0.1, 0.5, 1.0, 2.0):
    print("w = %.1f: R from the integration = %.6e, exact formula = %.6e" % (w, R_num(w), R_exact(w)))
