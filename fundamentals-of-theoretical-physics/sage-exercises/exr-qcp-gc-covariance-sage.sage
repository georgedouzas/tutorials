# Exercise exr-qcp-gc-covariance-sage (Guidry-Sun, Sec. 27.1.3 and Problem 28.4): gauge covariance of the Schroedinger
# equation for H = (1/2m)(-i hbar grad - q A)^2 + q phi, with arbitrary phi, A, lambda, psi of (t, x, y, z) and hbar kept.
t, x, y, z, hb, m, q = var('t x y z hbar m q'); X = (x, y, z)
phi = function('phi')(t, x, y, z); lam = function('lam')(t, x, y, z); psi = function('psi')(t, x, y, z)
A = [function('A%s' % c)(t, x, y, z) for c in 'xyz']
def H(f, ph, AA):
    pi_f = [-I*hb*diff(f, X[i]) - q*AA[i]*f for i in range(3)]
    return sum(-I*hb*diff(pi_f[i], X[i]) - q*AA[i]*pi_f[i] for i in range(3))/(2*m) + q*ph*f
phi2 = phi - diff(lam, t); A2 = [A[i] + diff(lam, X[i]) for i in range(3)]
U = exp(I*q*lam/hb)
lhs = I*hb*diff(U*psi, t) - H(U*psi, phi2, A2)
rhs = U*(I*hb*diff(psi, t) - H(psi, phi, A))
print("(i hbar d_t - H')(e^{iq lambda/hbar} psi) - e^{iq lambda/hbar}(i hbar d_t - H) psi =", (lhs - rhs).simplify_full())
