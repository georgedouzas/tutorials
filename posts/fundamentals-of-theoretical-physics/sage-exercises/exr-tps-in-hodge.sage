# Exercise exr-tps-in-hodge: the dual tilde F_{mu nu} = (1/2) eps_{mu nu rho sigma} F^{rho sigma} squares to +1 in Euclidean
# signature and to -1 in the signature (+, -, -, -), so that real self-dual fields exist only in the Euclidean case;
# checked on a random antisymmetric matrix, with indices raised by the metric and eps_{0123} = +1 (eps_{1234} = +1).
from itertools import permutations
def eps(p): return Permutation([i + 1 for i in p]).sign() if len(set(p)) == 4 else 0
def dual(F, eta):
    Fup = eta.inverse() * F * eta.inverse()
    return matrix(QQ, 4, 4, lambda m, n: sum(eps((m, n, p, q)) * Fup[p, q] for p in range(4) for q in range(4)) / 2)
set_random_seed(2)
A = random_matrix(QQ, 4, 4); F = A - A.transpose()
for name, eta in [("Euclidean", identity_matrix(QQ, 4)), ("Minkowski (+,-,-,-)", diagonal_matrix(QQ, [1, -1, -1, -1]))]:
    DD = dual(dual(F, eta), eta)
    sgn = 1 if DD == F else (-1 if DD == -F else None)
    print("%-20s: dual of dual = %s F" % (name, sgn))
print("[PASS] Euclidean: +1, Minkowski: -1:", dual(dual(F, identity_matrix(QQ, 4)), identity_matrix(QQ, 4)) == F and
      dual(dual(F, diagonal_matrix(QQ, [1, -1, -1, -1])), diagonal_matrix(QQ, [1, -1, -1, -1])) == -F)
# self-dual real fields: the Euclidean projector (1 + *)/2 has rank 3; in Minkowski * has eigenvalues +-i
E = matrix(QQ, 6, 6); M = matrix(QQ, 6, 6)
pairs = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]
for c, (a, b) in enumerate(pairs):
    G = matrix(QQ, 4, 4); G[a, b] = 1; G[b, a] = -1
    for eta, Mat in [(identity_matrix(QQ, 4), E), (diagonal_matrix(QQ, [1, -1, -1, -1]), M)]:
        D = dual(G, eta)
        for r, (p, q) in enumerate(pairs):
            Mat[r, c] = D[p, q]
t = E.charpoly().parent().gen()
print("[PASS] Euclidean * on two-forms has characteristic polynomial", E.charpoly().factor(), "(three self-dual, three anti-self-dual):",
      E.charpoly() == (t - 1)^3 * (t + 1)^3)
print("[PASS] Minkowski * has characteristic polynomial", M.charpoly().factor(), "(eigenvalues +-i, no real eigenvectors):", M.charpoly() == (M.charpoly().parent().gen()^2 + 1)^3)
