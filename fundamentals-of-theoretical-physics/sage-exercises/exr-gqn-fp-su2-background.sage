# Exercise exr-gqn-fp-su2-background: the Lorenz-gauge Faddeev-Popov operator of SU(2) on a plane wave in a constant background,
# g M^{ab}(k) = -k^2 delta^{ab} - i g eps^{acb} v^c with v^c = k.A^c, has eigenvalues -k^2 and -k^2 -+ g|v| and determinant -k^2 (k^4 - g^2 |v|^2).
k2, g, v1, v2, v3 = var("k2 g v1 v2 v3", domain="real")
v = vector(SR, [v1, v2, v3])
def eps(a, b, c):
    return (a - b) * (b - c) * (c - a) / 2
M = matrix(SR, 3, 3, lambda a, b: -k2 * kronecker_delta(a, b) - I * g * sum(eps(a, c, b) * v[c] for c in range(3)))
print("g M(k) =", M)
print("Hermitian:", bool((M - M.conjugate_transpose()).simplify_full() == 0))
print("det g M =", M.det().simplify_full().factor())
print("equals -k^2 (k^4 - g^2 |v|^2):", bool((M.det() + k2 * (k2^2 - g^2 * (v1^2 + v2^2 + v3^2))).expand() == 0))
Mn = M.subs({k2: 1, g: 1, v1: 3/10, v2: -4/10, v3: 12/10}).change_ring(CDF)
print("eigenvalues at k^2 = 1, g = 1, v = (0.3, -0.4, 1.2):", sorted([round(e.real(), 6) for e in Mn.eigenvalues()]), " |v| = %.6f" % sqrt(0.09 + 0.16 + 1.44))
