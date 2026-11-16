# Exercise exr-gqn-br-nilpotent-matter: for a scalar doublet of SU(2) with s phi = -c^a T_a phi, T_a = -i sigma_a/2, s^2 phi = 0:
# s^2 phi = -(s c^a) T_a phi - c^a c^b T_a T_b phi, and the two terms cancel because [T_a, T_b] = eps_abc T_c.
K.<i> = QuadraticField(-1)
R = PolynomialRing(K, ["p1", "p2"]); phi = vector(R, R.gens())
E = ExteriorAlgebra(R, ["c1", "c2", "c3"]); c = E.gens()
s = [matrix(K, [[0, 1], [1, 0]]), matrix(K, [[0, -i], [i, 0]]), matrix(K, [[1, 0], [0, -1]])]
T = [-i * x / 2 for x in s]
f = lambda a, b, e: (a - b) * (b - e) * (e - a) / 2
sc = [-sum(f(a, b, e) * c[b] * c[e] for b in range(3) for e in range(3)) / 2 for a in range(3)]
Tphi = [T[a] * phi for a in range(3)]
term1 = [-sum(sc[a] * Tphi[a][r] for a in range(3)) for r in range(2)]
term2 = [-sum(c[a] * c[b] * (T[a] * T[b] * phi)[r] for a in range(3) for b in range(3)) for r in range(2)]
print("-(s c^a) T_a phi       =", term1)
print("-c^a c^b T_a T_b phi   =", term2)
print("s^2 phi =", [term1[r] + term2[r] for r in range(2)])
