# Exercise exr-qcp-gc-commutator-sage (Galitski et al., eq. (VII.2)): [pi_i, pi_j] psi = i hbar q eps_ijk B_k psi for the kinetic
# momenta pi = -i hbar grad - q A with arbitrary A(x, y, z).
x, y, z, hb, q = var('x y z hbar q'); X = (x, y, z)
psi = function('psi')(x, y, z)
A = [function('A%s' % c)(x, y, z) for c in 'xyz']
P = lambda i, f: -I*hb*diff(f, X[i]) - q*A[i]*f
B = [diff(A[2], y) - diff(A[1], z), diff(A[0], z) - diff(A[2], x), diff(A[1], x) - diff(A[0], y)]
for (i, j, k) in [(0, 1, 2), (1, 2, 0), (2, 0, 1)]:
    c = (P(i, P(j, psi)) - P(j, P(i, psi))).simplify_full()
    print("[pi_%s, pi_%s] psi - i hbar q B_%s psi =" % ('xyz'[i], 'xyz'[j], 'xyz'[k]), (c - I*hb*q*B[k]*psi).simplify_full())
