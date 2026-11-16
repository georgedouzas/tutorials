# Exercise exr-smd-m-mass-basis: the 4 x 4 gauge boson mass matrix of the doublet vacuum phi0 = (0, v), rotated from (W^1, W^2, W^3, B)
# to (W^1, W^2, Z, A) by the Weinberg rotation, is diag(g^2 v^2/2, g^2 v^2/2, (g^2 + g'^2) v^2/2, 0).
g, gp, v = var("g gp v", domain="positive")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
t = [g * (-I / 2) * sa for sa in s] + [gp * (-I / 2) * identity_matrix(SR, 2)]
phi0 = vector(SR, [0, v])
M2 = matrix(SR, 4, 4, lambda a, b: 2 * ((t[a] * phi0).conjugate() * (t[b] * phi0)).real()).simplify_full()
c, sn = g / sqrt(g^2 + gp^2), gp / sqrt(g^2 + gp^2)
R = matrix(SR, [[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, c, -sn], [0, 0, sn, c]])   # rows: W1, W2, Z, A in terms of W1, W2, W3, B
D = (R * M2 * R.transpose()).simplify_full()
print(D)
print("[PASS] R M^2 R^T = diag(g^2 v^2/2, g^2 v^2/2, (g^2 + g'^2) v^2/2, 0):", bool((D - diagonal_matrix([g^2 * v^2 / 2, g^2 * v^2 / 2, (g^2 + gp^2) * v^2 / 2, 0])).simplify_full() == 0))
print("[PASS] rho = m_W^2/(m_Z^2 cos^2) = 1:", bool((D[0, 0] / (D[2, 2] * c^2)).simplify_full() == 1))
