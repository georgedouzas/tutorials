# Exercise exr-gqn-fr-jacobi: the three colour structures of the four-gluon vertex are linearly dependent,
# f^{abe} f^{cde} - f^{ace} f^{bde} + f^{ade} f^{bce} = 0 for all a, b, c, d (the Jacobi identity), checked for SU(3).
import itertools
def su2_f():
    return {(a, b, c): QQ((a - b) * (b - c) * (c - a) / 2) for a in range(3) for b in range(3) for c in range(3)}
def su3_f():
    """f_abc from [T_a, T_b] = f_abc T_c with T_a = -i lambda_a/2, so that f_abc = -2 Tr([T_a, T_b] T_c)."""
    l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
         matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
         matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
    T = [-I * x / 2 for x in l]
    return {(a, b, c): AA((-2 * (T[a] * T[b] - T[b] * T[a]) * T[c]).trace()) for a in range(8) for b in range(8) for c in range(8)}
f = su3_f()
F = lambda x, y, z, w: sum(f[(x, y, e)] * f[(z, w, e)] for e in range(8))
worst = max(abs(F(a, b, c, d) - F(a, c, b, d) + F(a, d, b, c)) for a, b, c, d in itertools.product(range(8), repeat=4))
print("largest |f^{abe} f^{cde} - f^{ace} f^{bde} + f^{ade} f^{bce}| over 8^4 index choices:", worst)
print("but f^{abe} f^{cde} is not identically zero, e.g. a,b,c,d = 1,2,1,2:", F(0, 1, 0, 1))
