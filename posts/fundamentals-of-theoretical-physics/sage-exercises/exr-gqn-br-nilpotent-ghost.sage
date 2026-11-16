# Exercise exr-gqn-br-nilpotent-ghost: with s c^a = -1/2 f^{abc} c^b c^c extended as an odd derivation, s^2 c^a = 0 for SU(2) and SU(3);
# the cancellation is the Jacobi identity.
def su2_f():
    return {(a, b, c): QQ((a - b) * (b - c) * (c - a) / 2) for a in range(3) for b in range(3) for c in range(3)}
def su3_f():
    """f_abc from [T_a, T_b] = f_abc T_c with T_a = -i lambda_a/2, so that f_abc = -2 Tr([T_a, T_b] T_c)."""
    l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
         matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
         matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
    T = [-I * x / 2 for x in l]
    return {(a, b, c): AA((-2 * (T[a] * T[b] - T[b] * T[a]) * T[c]).trace()) for a in range(8) for b in range(8) for c in range(8)}
def derivation(x, s_gen):
    """Extend s from the generators to an odd derivation acting from the left: s(g1...gk) = sum_p (-1)^p g1..(s gp)..gk."""
    E = x.parent(); out = E.zero(); gens = E.gens()
    for key, v in x.monomial_coefficients().items():
        idx = list(key)
        for p, i in enumerate(idx):
            left = prod([gens[j] for j in idx[:p]], E.one()); right = prod([gens[j] for j in idx[p + 1:]], E.one())
            out += v * (-1)^p * left * s_gen[i] * right
    return out
for name, f, n in (("SU(2)", su2_f(), 3), ("SU(3)", su3_f(), 8)):
    E = ExteriorAlgebra(AA, ["c%d" % (a + 1) for a in range(n)]); c = E.gens()
    sc = [-sum(f[(a, b, d)] * c[b] * c[d] for b in range(n) for d in range(n)) / 2 for a in range(n)]
    print("%s: s c^1 = %s" % (name, sc[0]))
    print("%s: s^2 c^a = 0 for all a:" % name, all(derivation(sc[a], sc) == 0 for a in range(n)))
