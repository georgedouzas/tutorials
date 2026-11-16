# Exercise exr-qdm-dp-two-dim: in 1 + 1 dimensions with gamma^0 = sigma_1, gamma^1 = i sigma_2, the Clifford relations hold and
# S(p) = i(p/ + m)/(p^2 - m^2) satisfies (p/ - m) S(p) = i 1, the momentum-space form of (i d/ - m) S_F = i delta^2.
p0, p1, m = var("p0 p1 m")
g0 = matrix(SR, [[0, 1], [1, 0]]); g1 = I * matrix(SR, [[0, -I], [I, 0]])
eta = diagonal_matrix([1, -1]); G = [g0, g1]
print("Clifford relations:", all(G[a] * G[b] + G[b] * G[a] == 2 * eta[a, b] * identity_matrix(2) for a in range(2) for b in range(2)))
ps = p0 * g0 - p1 * g1
S = I * (ps + m) / (p0**2 - p1**2 - m**2)
print("(p/ - m) S(p) =", ((ps - m) * S).simplify_full().rows())
print("S(p) =", S.simplify_full().rows())
