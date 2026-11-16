# Exercise exr-gqn-gh-quartic: for SU(2), f^{abc} = eps^{abc}, the quartic term -g^2/4 f^{eab} f^{ecd} A^a_mu A^b_nu A^{c mu} A^{d nu}
# equals -g^2/4 [ (sum_a A^a.A^a)^2 - sum_{ab} (A^a.A^b)^2 ]; checked for random real potentials with the metric diag(1, -1, -1, -1).
set_random_seed(1)
eta = diagonal_matrix(QQ, [1, -1, -1, -1])
def eps(a, b, c):
    return (a - b) * (b - c) * (c - a) / 2
for trial in range(3):
    A = [vector(QQ, [QQ.random_element(num_bound=9, den_bound=5) for mu in range(4)]) for a in range(3)]
    dot = lambda u, w: u * eta * w
    lhs = -sum(eps(e, a, b) * eps(e, c, d) * dot(A[a], A[c]) * dot(A[b], A[d])
               for e in range(3) for a in range(3) for b in range(3) for c in range(3) for d in range(3)) / 4
    rhs = -(sum(dot(A[a], A[a]) for a in range(3))^2 - sum(dot(A[a], A[b])^2 for a in range(3) for b in range(3))) / 4
    print("trial %d: index sum %s, closed form %s, equal %s" % (trial, lhs, rhs, lhs == rhs))
