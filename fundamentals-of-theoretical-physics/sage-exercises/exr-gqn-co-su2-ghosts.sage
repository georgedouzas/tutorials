# Exercise exr-gqn-co-su2-ghosts: s c^a = -1/2 eps^{abc} c^b c^c acting on polynomials in the three SU(2) ghosts (the exterior algebra in c^1, c^2, c^3)
# has cohomology of dimensions 1, 0, 0, 1 in ghost numbers 0, 1, 2, 3: the cohomology of the Lie algebra su(2), which is that of the sphere S^3.
def derivation(x, s_gen):
    """Extend s from the generators to an odd derivation acting from the left: s(g1...gk) = sum_p (-1)^p g1..(s gp)..gk."""
    E = x.parent(); out = E.zero(); gens = E.gens()
    for key, v in x.monomial_coefficients().items():
        idx = list(key)
        for p, i in enumerate(idx):
            left = prod([gens[j] for j in idx[:p]], E.one()); right = prod([gens[j] for j in idx[p + 1:]], E.one())
            out += v * (-1)^p * left * s_gen[i] * right
    return out
E = ExteriorAlgebra(QQ, ["c1", "c2", "c3"]); c = E.gens()
f = lambda a, b, e: (a - b) * (b - e) * (e - a) / 2
sc = [-sum(f(a, b, e) * c[b] * c[e] for b in range(3) for e in range(3)) / 2 for a in range(3)]
basis = {k: [E.monomial(FrozenBitset(list(S))) if S else E.one() for S in Subsets(range(3), k)] for k in range(4)}
def coords(x, k):
    return vector(QQ, [x.monomial_coefficients().get(FrozenBitset(list(S)) if S else FrozenBitset(), 0) for S in Subsets(range(3), k)])
ranks = {}
for k in range(3):                    # s maps ghost number k to k + 1
    ranks[k] = matrix(QQ, [list(coords(derivation(b, sc), k + 1)) for b in basis[k]]).rank()
ranks[3] = 0
print("s on ghost number 1:", [derivation(x, sc) for x in c])
print("s on ghost number 2:", [derivation(b, sc) for b in basis[2]])
dims = [len(basis[k]) - ranks[k] - (ranks[k - 1] if k > 0 else 0) for k in range(4)]
print("dimensions of the cohomology in ghost numbers 0, 1, 2, 3:", dims)
