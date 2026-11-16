# Exercise exr-tps-vx-tail: linearising the BPS equations f' = n (1 - a) f/rho, a' = (rho/n)(1 - f^2) about f = a = 1 gives
# u'' + u'/rho - 2u = 0 for u = 1 - f, solved by K_0(sqrt(2) rho) ~ e^{-sqrt(2) rho}/sqrt(rho): the decay e^{-m r} with m = sqrt(2) e v;
# then 1 - a = -(rho/n) u' ~ sqrt(rho) e^{-sqrt(2) rho}. The numerical
# n = 1 vortex is fitted on 4 < rho < 8: the slope of log(sqrt(rho)(1 - f)) is compared with -sqrt(2).
import numpy as np
from scipy.integrate import solve_ivp
def shoot(c, n=1, L=14.0):
    r0 = 1e-3
    rhs = lambda r, y: [n * (1 - y[1]) * y[0] / r, (r / n) * (1 - y[0]**2)]
    ev = lambda r, y: y[0] - 1.2
    ev.terminal = True
    return solve_ivp(rhs, [r0, L], [c * r0**n, r0**2 / (2 * n)], events=ev, rtol=1e-13, atol=1e-15, dense_output=True)
lo, hi = 1e-3, 3.0
for it in range(100):
    c = (lo + hi) / 2; s = shoot(c)
    if s.status == 1 or s.y[0, -1] > 1: hi = c
    else: lo = c
s = shoot(c)
rr = np.linspace(4, 8, 41); u = 1 - s.sol(rr)[0]
slope = np.polyfit(rr, np.log(np.sqrt(rr) * u), 1)[0]
print("fitted decay rate of sqrt(rho)(1 - f): %.4f, sqrt(2) = %.4f" % (-slope, np.sqrt(2)))
print("[PASS] 1 - f ~ e^{-sqrt(2) rho}/sqrt(rho):", abs(-slope - np.sqrt(2)) < 0.02)
w = 1 - s.sol(rr)[1]
slope2 = np.polyfit(rr, np.log(w / np.sqrt(rr)), 1)[0]
print("fitted decay rate of (1 - a)/sqrt(rho): %.4f" % (-slope2))
print("[PASS] 1 - a decays at the same rate (times sqrt(rho)):", abs(-slope2 - np.sqrt(2)) < 0.02)
