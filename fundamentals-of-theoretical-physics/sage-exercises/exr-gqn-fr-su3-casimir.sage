# Exercise exr-gqn-fr-su3-casimir: with anti-Hermitian generators, f^{acd} f^{bcd} = N delta^{ab} for SU(2) and SU(3), Tr(T_a T_b) = -delta_ab/2,
# and sum_a T_a T_a = -C_F 1 with C_F = (N^2 - 1)/(2N).
def su2_f():
    return {(a, b, c): QQ((a - b) * (b - c) * (c - a) / 2) for a in range(3) for b in range(3) for c in range(3)}
def su3_f():
    """f_abc from [T_a, T_b] = f_abc T_c with T_a = -i lambda_a/2, so that f_abc = -2 Tr([T_a, T_b] T_c)."""
    l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
         matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
         matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
    T = [-I * x / 2 for x in l]
    return {(a, b, c): AA((-2 * (T[a] * T[b] - T[b] * T[a]) * T[c]).trace()) for a in range(8) for b in range(8) for c in range(8)}
f2, f3 = su2_f(), su3_f()
print("SU(2): f^{acd} f^{bcd} =", matrix(AA, 3, 3, lambda a, b: sum(f2[(a, c, d)] * f2[(b, c, d)] for c in range(3) for d in range(3))).diagonal(), "(off-diagonal zero:",
      matrix(AA, 3, 3, lambda a, b: sum(f2[(a, c, d)] * f2[(b, c, d)] for c in range(3) for d in range(3))).is_diagonal(), ")")
C = matrix(AA, 8, 8, lambda a, b: sum(f3[(a, c, d)] * f3[(b, c, d)] for c in range(8) for d in range(8)))
print("SU(3): f^{acd} f^{bcd} = 3 delta^{ab}:", C == 3 * identity_matrix(AA, 8))
print("SU(3): nonzero f_abc with a < b < c:", sorted([(a + 1, b + 1, c + 1, f3[(a, b, c)].radical_expression()) for a in range(8) for b in range(a + 1, 8) for c in range(b + 1, 8) if f3[(a, b, c)] != 0]))
s = [matrix(QQbar, [[0,1],[1,0]]), matrix(QQbar, [[0,-I],[I,0]]), matrix(QQbar, [[1,0],[0,-1]])]
T2 = [-I * x / 2 for x in s]
print("SU(2): sum T_a T_a =", sum(t * t for t in T2), " = -(3/4) 1")
