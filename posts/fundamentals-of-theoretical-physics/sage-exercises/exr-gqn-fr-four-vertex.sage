# Exercise exr-gqn-fr-four-vertex: the four-gluon vertex obtained from L_4 = -g^2/4 f^{eab} f^{ecd} A^a_mu A^b_nu A^{c mu} A^{d nu} by summing the 24
# assignments of the legs to the fields equals -i g^2 [f^{abe} f^{cde}(eta^{mu rho} eta^{nu sigma} - eta^{mu sigma} eta^{nu rho})
# + f^{ace} f^{bde}(eta^{mu nu} eta^{rho sigma} - eta^{mu sigma} eta^{nu rho}) + f^{ade} f^{bce}(eta^{mu nu} eta^{rho sigma} - eta^{mu rho} eta^{nu sigma})].
# All index choices for SU(2); for SU(3), all 256 Lorentz choices for 150 random colour choices with a non-zero colour structure.
import itertools
set_random_seed(3)
eta = diagonal_matrix(QQ, [1, -1, -1, -1])
def su2_f():
    return {(a, b, c): QQ((a - b) * (b - c) * (c - a) / 2) for a in range(3) for b in range(3) for c in range(3)}
def su3_f():
    """f_abc from [T_a, T_b] = f_abc T_c with T_a = -i lambda_a/2, so that f_abc = -2 Tr([T_a, T_b] T_c)."""
    l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
         matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
         matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
    T = [-I * x / 2 for x in l]
    return {(a, b, c): AA((-2 * (T[a] * T[b] - T[b] * T[a]) * T[c]).trace()) for a in range(8) for b in range(8) for c in range(8)}
def vertex_sum(f, n, cols, mus):
    tot = 0
    for s in itertools.permutations(range(4)):
        tot += sum(f[(e, cols[s[0]], cols[s[1]])] * f[(e, cols[s[2]], cols[s[3]])] for e in range(n)) * eta[mus[s[0]], mus[s[2]]] * eta[mus[s[1]], mus[s[3]]]
    return -tot / 4                       # times i g^2
def closed(f, n, cols, mus):
    a, b, c, d = cols; mu, nu, rho, sg = mus
    F = lambda x, y, z, w: sum(f[(x, y, e)] * f[(z, w, e)] for e in range(n))
    return -(F(a, b, c, d) * (eta[mu, rho] * eta[nu, sg] - eta[mu, sg] * eta[nu, rho])
             + F(a, c, b, d) * (eta[mu, nu] * eta[rho, sg] - eta[mu, sg] * eta[nu, rho])
             + F(a, d, b, c) * (eta[mu, nu] * eta[rho, sg] - eta[mu, rho] * eta[nu, sg]))   # times i g^2
f2 = su2_f()
worst = max(abs(vertex_sum(f2, 3, cols, mus) - closed(f2, 3, cols, mus)) for cols in itertools.product(range(3), repeat=4) for mus in itertools.product(range(4), repeat=4))
print("SU(2), all 81 x 256 index choices: largest difference (in units of i g^2) = %s" % worst)
f3 = {key: float(v) for key, v in su3_f().items()}
F3 = lambda x, y, z, w: sum(f3[(x, y, e)] * f3[(z, w, e)] for e in range(8))
cands = [c for c in itertools.product(range(8), repeat=4) if abs(F3(*c)) + abs(F3(c[0], c[2], c[1], c[3])) + abs(F3(c[0], c[3], c[1], c[2])) > 1e-12]
worst = 0.0
for cols in [cands[ZZ.random_element(len(cands))] for _ in range(150)]:
    for mus in itertools.product(range(4), repeat=4):
        worst = max(worst, abs(vertex_sum(f3, 8, cols, mus) - closed(f3, 8, cols, mus)))
print("SU(3), %d colour choices with a non-zero structure, 150 sampled with all 256 Lorentz choices: largest difference = %.2e" % (len(cands), worst))
