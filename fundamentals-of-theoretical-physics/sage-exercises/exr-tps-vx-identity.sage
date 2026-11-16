# Exercise exr-tps-vx-identity: the Bogomolny identity of the abelian Higgs model in the plane, with D_k = d_k - i e A^k,
# B = d_1 A^2 - d_2 A^1, D_pm = D_1 pm i D_2 and V = (e^2/2)(|phi|^2 - v^2)^2:
#   |D_1 phi|^2 + |D_2 phi|^2 + B^2/2 + V
#     = |D_pm phi|^2 + (1/2)(B pm e(|phi|^2 - v^2))^2 pm e v^2 B mp i eps_ij d_i(conj(phi) D_j phi),
# checked as a polynomial identity for fields whose components are random polynomials of degree 3 in x, y.
x, y, e, v = var("x y e v", domain="real")
R = PolynomialRing(QQ, "x,y")
def rp(): return SR(R.random_element(degree=3, terms=8))
set_random_seed(5)
u, w, A1, A2 = rp(), rp(), rp(), rp()          # phi = u + i w
phi = u + I * w; phib = u - I * w
D = lambda f, k, s: diff(f, [x, y][k]) - s * I * e * [A1, A2][k] * f   # s = +1 for phi, -1 for conj(phi)
D1, D2 = D(phi, 0, 1), D(phi, 1, 1)
D1b, D2b = D(phib, 0, -1), D(phib, 1, -1)
B = diff(A2, x) - diff(A1, y)
V = e^2 / 2 * (phi * phib - v^2)^2
lhs = D1 * D1b + D2 * D2b + B^2 / 2 + V
J = [phib * D1, phib * D2]                       # conj(phi) D_j phi
epsdJ = diff(J[1], x) - diff(J[0], y)            # eps_ij d_i J_j
for s in (1, -1):
    Dpm, Dpmb = D1 + s * I * D2, D1b - s * I * D2b
    rhs = Dpm * Dpmb + (B + s * e * (phi * phib - v^2))^2 / 2 + s * e * v^2 * B - s * I * epsdJ
    print("[PASS] the identity with the sign %+d holds:" % s, bool((lhs - rhs).expand() == 0))
bd = -I * epsdJ
print("[PASS] the boundary density -i eps_ij d_i(conj(phi) D_j phi) is real:", bool((bd - bd.conjugate()).expand() == 0))
