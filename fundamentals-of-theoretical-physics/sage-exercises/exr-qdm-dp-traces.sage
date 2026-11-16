# Exercise exr-qdm-dp-traces: tr S_F(p) = 4im/(p^2 - m^2) and tr(gamma^mu S_F(p)) = 4i p^mu/(p^2 - m^2), with the Weyl matrices.
p0, p1, p2, p3, m = var("p0 p1 p2 p3 m")
s0 = identity_matrix(SR, 2); sx = matrix(SR, [[0, 1], [1, 0]]); sy = matrix(SR, [[0, -I], [I, 0]]); sz = matrix(SR, [[1, 0], [0, -1]])
Z2 = zero_matrix(SR, 2)
g = [block_matrix([[Z2, s], [-s if k else s, Z2]]) for k, s in enumerate((s0, sx, sy, sz))]
ps = p0 * g[0] - p1 * g[1] - p2 * g[2] - p3 * g[3]
one = identity_matrix(SR, 4); p2s = p0**2 - p1**2 - p2**2 - p3**2
S = I * (ps + m * one) / (p2s - m**2)
print("tr S_F =", S.trace().simplify_full())
print("tr(gamma^mu S_F), mu = 0..3:", [ (g[k] * S).trace().simplify_full() for k in range(4)])
