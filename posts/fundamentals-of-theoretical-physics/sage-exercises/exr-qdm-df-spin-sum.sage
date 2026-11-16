# Exercise exr-qdm-df-spin-sum: with the Weyl-representation spinors, sum_s [u^s(p) u^s(p)^dagger + v^s(-p) v^s(-p)^dagger] = 2E 1,
# the identity behind the equal-time anticommutator {psi(x), psi^dagger(y)} = delta^3(x - y).
px, py, pz, m = QQ(1/2), QQ(-1/3), QQ(2/5), QQ(1)
E = sqrt(QQbar(px**2 + py**2 + pz**2 + m**2))
sig = [identity_matrix(QQbar, 2), matrix(QQbar, [[0, 1], [1, 0]]), matrix(QQbar, [[0, -I], [I, 0]]), matrix(QQbar, [[1, 0], [0, -1]])]
def sqrtm(A):            # positive square root of a positive Hermitian 2 x 2 matrix
    D, P = A.eigenmatrix_right()
    P = matrix(QQbar, [[c / P.column(j).norm() for j, c in enumerate(row)] for row in P.rows()])
    return P * diagonal_matrix([sqrt(x) for x in D.diagonal()]) * P.conjugate_transpose()
def spinors(p3):
    ps = E * sig[0] - sum(p3[i] * sig[i + 1] for i in range(3)); psb = E * sig[0] + sum(p3[i] * sig[i + 1] for i in range(3))
    A, B = sqrtm(ps), sqrtm(psb)
    xi = [vector(QQbar, [1, 0]), vector(QQbar, [0, 1])]
    u = [vector(QQbar, list(A * x) + list(B * x)) for x in xi]
    v = [vector(QQbar, list(A * x) + list(-B * x)) for x in xi]
    return u, v
u, _ = spinors([px, py, pz]); _, v = spinors([-px, -py, -pz])
S = sum(w.column() * w.conjugate().row() for w in u) + sum(w.column() * w.conjugate().row() for w in v)
print("sum_s u(p) u(p)^dagger + v(-p) v(-p)^dagger - 2E 1 = 0:", (S - 2 * E * identity_matrix(QQbar, 4)).norm() < 1e-12)
print("2E =", (2 * E).radical_expression())
