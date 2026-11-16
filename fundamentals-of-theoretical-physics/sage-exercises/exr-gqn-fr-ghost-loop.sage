# Exercise exr-gqn-fr-ghost-loop: the colour factor of the ghost loop in the gluon self-energy, f^{cad} f^{dbc}, equals -N delta^{ab} for SU(2) and SU(3).
def su2_f():
    return {(a, b, c): QQ((a - b) * (b - c) * (c - a) / 2) for a in range(3) for b in range(3) for c in range(3)}
def su3_f():
    """f_abc from [T_a, T_b] = f_abc T_c with T_a = -i lambda_a/2, so that f_abc = -2 Tr([T_a, T_b] T_c)."""
    l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
         matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
         matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
    T = [-I * x / 2 for x in l]
    return {(a, b, c): AA((-2 * (T[a] * T[b] - T[b] * T[a]) * T[c]).trace()) for a in range(8) for b in range(8) for c in range(8)}
for name, f, n in (("SU(2)", su2_f(), 3), ("SU(3)", su3_f(), 8)):
    C = matrix(AA, n, n, lambda a, b: sum(f[(c, a, d)] * f[(d, b, c)] for c in range(n) for d in range(n)))
    print("%s: f^{cad} f^{dbc} = %s delta^{ab}:" % (name, C[0, 0]), C == C[0, 0] * identity_matrix(AA, n))
