# Exercise exr-gqn-fr-three-vertex: the three-gluon vertex obtained from L_3 = -g f^{abc} (d_mu A^a_nu) A^{b mu} A^{c nu} by summing the six
# assignments of the legs to the fields, V = -g sum_perm f^{a_i a_j a_l} k_i^{mu_j} eta^{mu_i mu_l} (all momenta incoming), equals
# g f^{abc} [eta^{mu nu}(k - p)^rho + eta^{nu rho}(p - q)^mu + eta^{rho mu}(q - k)^nu]; checked for SU(2) and SU(3), random momenta, all indices.
import itertools
set_random_seed(2)
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
for name, f, n in (("SU(2)", su2_f(), 3), ("SU(3)", su3_f(), 8)):
    k = vector(QQ, [QQ.random_element(num_bound=9) for _ in range(4)]); p = vector(QQ, [QQ.random_element(num_bound=9) for _ in range(4)]); q = -k - p
    mom = [k, p, q]
    worst, count = 0, 0
    for cols in itertools.product(range(n), repeat=3):
        if f[cols] == 0:
            continue                      # every term is then zero, since the f's differ by signs
        for mus in itertools.product(range(4), repeat=3):
            V = -sum(f[(cols[i], cols[j], cols[l])] * mom[i][mus[j]] * eta[mus[i], mus[l]] for (i, j, l) in itertools.permutations(range(3)))
            a, b, c = cols; mu, nu, rho = mus
            W = f[(a, b, c)] * (eta[mu, nu] * (k - p)[rho] + eta[nu, rho] * (p - q)[mu] + eta[rho, mu] * (q - k)[nu])
            worst = max(worst, abs(V - W)); count += 1
    print("%s: %d index choices with f != 0, largest difference between permutation sum and closed form: %s" % (name, count, worst))
