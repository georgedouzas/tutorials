# Exercise exr-rgb-lt-release: a top released at theta_0 with theta' = phi' = 0 (I1 = 1, I3 = 1/2, Mgl = 1, p_psi = 4, theta_0 = 0.8): turning angles from the cubic, against the fast-top estimates.
import numpy as np
from scipy.integrate import solve_ivp
I1, Mgl, ppsi, th0 = 1.0, 1.0, 4.0, 0.8
u = var('u'); u0 = cos(th0)
f = (2*Mgl/I1)*(u0 - u)*(1 - u^2) - (ppsi^2/I1^2)*(u0 - u)^2      # E' = Mgl u0 and p_phi = p_psi u0
roots = sorted([r.rhs() for r in solve(f == 0, u)])
print('roots of f(u):', [N(r, digits=8) for r in roots])
u2 = [r for r in roots if r < u0 - 1e-9 and r > -1][0]
print('nutation amplitude theta_2 - theta_0 = %.5f; estimate 2 I1 Mgl sin(theta_0)/p_psi^2 = %.5f' % (arccos(u2) - th0, 2*I1*Mgl*sin(th0)/ppsi^2))
pphi = ppsi*float(u0)
def rhs(t, y):
    th, ph, thd = y; s, c = np.sin(th), np.cos(th); phd = (pphi - ppsi*c)/(I1*s**2)
    return [thd, phd, (I1*s*c*phd**2 - ppsi*s*phd + Mgl*s)/I1]
sol = solve_ivp(rhs, (0, 40), [th0, 0, 0], rtol=1e-11, atol=1e-12, dense_output=True, max_step=0.01)
tt = np.linspace(0, 40, 40001); th, ph, _ = sol.sol(tt)
print('numerical range of theta: [%.5f, %.5f]' % (th.min(), th.max()))
mx = [tt[i] for i in range(1, len(tt) - 1) if th[i] > th[i-1] and th[i] >= th[i+1]]
print('nutation period %.4f; estimate 2 pi I1/p_psi = %.4f' % (np.mean(np.diff(mx)), 2*np.pi*I1/ppsi))
print('mean precession rate %.4f; estimate Mgl/p_psi = %.4f' % (ph[-1]/tt[-1], Mgl/ppsi))
print('phi_dot at the upper turning angle theta_0:', (pphi - ppsi*np.cos(th0))/(I1*np.sin(th0)**2))
