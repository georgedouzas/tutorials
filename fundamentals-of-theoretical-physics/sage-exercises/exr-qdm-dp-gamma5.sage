# Exercise exr-qdm-dp-gamma5: gamma^5 = i g^0 g^1 g^2 g^3 anticommutes with p/, so gamma^5 S(p) gamma^5 = i(-p/ + m)/(p^2 - m^2):
# the massless propagator is odd and the mass term even under conjugation by gamma^5.
p0, p1, p2, p3, m = var("p0 p1 p2 p3 m")
s0 = identity_matrix(SR, 2); sx = matrix(SR, [[0, 1], [1, 0]]); sy = matrix(SR, [[0, -I], [I, 0]]); sz = matrix(SR, [[1, 0], [0, -1]])
Z2 = zero_matrix(SR, 2)
g = [block_matrix([[Z2, s], [-s if k else s, Z2]]) for k, s in enumerate((s0, sx, sy, sz))]
g5 = I * g[0] * g[1] * g[2] * g[3]
print("gamma^5 =", g5.rows())
ps = p0 * g[0] - p1 * g[1] - p2 * g[2] - p3 * g[3]
one = identity_matrix(SR, 4); p2s = p0**2 - p1**2 - p2**2 - p3**2
S = I * (ps + m * one) / (p2s - m**2)
print("gamma^5 S gamma^5 - i(-p/ + m)/(p^2 - m^2) = 0:", (g5 * S * g5 - I * (-ps + m * one) / (p2s - m**2)).simplify_full() == 0)
S0 = I * ps / p2s
print("massless: gamma^5 S gamma^5 = -S:", (g5 * S0 * g5 + S0).simplify_full() == 0)
