# Exercise exr-tps-vx-numerics: BPS vortices of winding n = 1, 2, 3 at lambda = 2 e^2, in rho = e v r, from
# f' = n (1 - a) f/rho, a' = (rho/n)(1 - f^2) with f ~ c rho^n, a ~ rho^2/(2n) at the origin; shooting on c. Checks: the
# flux e Phi = 2 pi n a(infinity) = 2 pi n, the energy E/v^2 = 2 pi int rho drho [f'^2 + n^2 (1 - a)^2 f^2/rho^2
# + (n a'/rho)^2/2 + (1 - f^2)^2/2] = 2 pi n, and the equality of the magnetic and potential energies (B^2/2 = V pointwise),
# which is the virial identity of the scaling argument.
import numpy as np
from scipy.integrate import solve_ivp, quad
def shoot(c, n, L=14.0):
    r0 = 1e-3
    rhs = lambda r, y: [n * (1 - y[1]) * y[0] / r, (r / n) * (1 - y[0]**2)]
    ev = lambda r, y: y[0] - 1.2
    ev.terminal = True
    return solve_ivp(rhs, [r0, L], [c * r0**n, r0**2 / (2 * n)], events=ev, rtol=1e-12, atol=1e-14, dense_output=True)
for n in (1, 2, 3):
    lo, hi = 1e-3, 3.0
    for it in range(90):
        c = (lo + hi) / 2; s = shoot(c, n)
        if s.status == 1 or s.y[0, -1] > 1: hi = c
        else: lo = c
    s = shoot(c, n); R = 11.0
    def parts(r):
        f, a = s.sol(r); fp = n * (1 - a) * f / r; ap = (r / n) * (1 - f**2)
        return np.array([r * fp**2, r * n**2 * (1 - a)**2 * f**2 / r**2, r * 0.5 * (n * ap / r)**2, r * 0.5 * (1 - f**2)**2])
    E = [2 * np.pi * quad(lambda r: parts(r)[k], 1e-3, R, limit=500)[0] for k in range(4)]
    flux = 2 * np.pi * n * s.sol(R)[1]
    print("n = %d: c = %.6f" % (n, c))
    print("  [PASS] e Phi = %.6f = 2 pi n = %.6f:" % (flux, 2 * np.pi * n), abs(flux - 2 * np.pi * n) < 1e-4)
    print("  [PASS] E/v^2 = %.6f = 2 pi n = %.6f:" % (sum(E), 2 * np.pi * n), abs(sum(E) - 2 * np.pi * n) < 1e-4)
    print("  [PASS] magnetic energy %.6f = potential energy %.6f:" % (E[2], E[3]), abs(E[2] - E[3]) < 1e-6)
    print("  gradient energy %.6f, magnetic %.6f, potential %.6f" % (E[0] + E[1], E[2], E[3]))
    print("  B at the centre in units e v^2: (n/rho) a'(0) -> %.6f" % (1 - s.sol(1e-3)[0]**2))
