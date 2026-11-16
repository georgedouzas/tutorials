# Exercise exr-qdm-sm-conjugation: [ubar(p') gamma^mu v(k')]^* = vbar(k') gamma^mu u(p') for every mu, checked with explicit
# Weyl-representation spinors (gamma^0 gamma^mu^dagger gamma^0 = gamma^mu).
s0 = identity_matrix(QQbar, 2); sx = matrix(QQbar, [[0, 1], [1, 0]]); sy = matrix(QQbar, [[0, -I], [I, 0]]); sz = matrix(QQbar, [[1, 0], [0, -1]])
Z2 = zero_matrix(QQbar, 2)
g = [block_matrix([[Z2, s], [-s if k else s, Z2]]) for k, s in enumerate((s0, sx, sy, sz))]
def sqrtm(A):
    D, P = A.eigenmatrix_right()
    P = matrix(QQbar, [[c / P.column(j).norm() for j, c in enumerate(row)] for row in P.rows()])
    return P * diagonal_matrix([sqrt(x) for x in D.diagonal()]) * P.conjugate_transpose()
def spin(p3, m, kind, s):
    E = sqrt(QQbar(sum(x**2 for x in p3) + m**2))
    ps = E * s0 - p3[0] * sx - p3[1] * sy - p3[2] * sz; psb = E * s0 + p3[0] * sx + p3[1] * sy + p3[2] * sz
    xi = vector(QQbar, [1, 0] if s == 0 else [0, 1])
    lo = sqrtm(psb) * xi
    return vector(QQbar, list(sqrtm(ps) * xi) + list(lo if kind == "u" else -lo))
bar = lambda w: w.conjugate() * g[0]
u = spin([QQ(1/2), 0, QQ(1/3)], 1, "u", 0); v = spin([QQ(-1/4), QQ(1/5), 0], 1, "v", 1)
ok = all(abs((bar(u) * g[mu] * v).conjugate() - bar(v) * g[mu] * u) < 1e-12 for mu in range(4))
print("[ubar gamma^mu v]^* = vbar gamma^mu u for mu = 0..3:", ok)
print("gamma^0 gamma^mu^dagger gamma^0 = gamma^mu:", all(g[0] * g[mu].conjugate_transpose() * g[0] == g[mu] for mu in range(4)))
