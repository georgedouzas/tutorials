# Exercise exr-smd-m-triplet: gauge boson masses for the doublet vacuum (0, v) (y = 1/2) together with a complex triplet of
# hypercharge 1 whose neutral component (T3 = -1) has the value u; the rho parameter m_W^2/(m_Z^2 cos^2 theta_W).
g, gp, v, u = var("g gp v u", domain="positive")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
J1 = matrix(SR, [[0, 1, 0], [1, 0, 1], [0, 1, 0]]) / sqrt(2); J2 = matrix(SR, [[0, -I, 0], [I, 0, -I], [0, I, 0]]) / sqrt(2)
J3 = diagonal_matrix(SR, [1, 0, -1])
def M2(gens, phi0):
    return matrix(SR, 4, 4, lambda a, b: 2 * ((gens[a] * phi0).conjugate() * (gens[b] * phi0)).real())
Md = M2([g * sa / 2 for sa in s] + [gp / 2 * identity_matrix(SR, 2)], vector(SR, [0, v]))
Mt = M2([g * J1, g * J2, g * J3, gp * identity_matrix(SR, 3)], vector(SR, [0, 0, u]))
M = (Md + Mt).simplify_full(); print(M)
print("[PASS] the triplet charge Q = J3 + 1 vanishes on its lower component:", (J3 + identity_matrix(SR, 3)) * vector(SR, [0, 0, u]) == 0)
mW2 = M[0, 0]; neutral = M[2:4, 2:4]
ev = neutral.eigenvalues(); mZ2 = [e for e in ev if not bool(e == 0)][0]
print("m_W^2 =", mW2, "; neutral eigenvalues:", ev)
c2 = g^2 / (g^2 + gp^2)
rho = (mW2 / (mZ2 * c2)).simplify_full(); print("rho =", rho)
print("[PASS] the photon stays massless:", any(bool(e == 0) for e in ev))
print("[PASS] rho = (v^2/2 + u^2)/(v^2/2 + 2 u^2), which is 1 only for u = 0 (Pal eq. 16.30):", bool((rho - (v^2 / 2 + u^2) / (v^2 / 2 + 2 * u^2)).simplify_full() == 0))
print("u/v for rho = 0.99:", [r.rhs() for r in solve((1 / 2 + x^2) / (1 / 2 + 2 * x^2) == 0.99, x) if r.rhs() > 0])
