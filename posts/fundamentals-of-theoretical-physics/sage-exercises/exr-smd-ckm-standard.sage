# Exercise exr-smd-ckm-standard: the standard parametrisation as a product of three rotations (Paganini eq. 9.24), its unitarity,
# and the magnitudes for s12 = 0.22650, s13 = 0.00361, s23 = 0.04053, delta = 1.196 (Paganini eqs. 9.25-9.26).
t12, t13, t23, d = var("t12 t13 t23 d", domain="real")
c12, s12, c13, s13, c23, s23 = cos(t12), sin(t12), cos(t13), sin(t13), cos(t23), sin(t23)
R23 = matrix(SR, [[1, 0, 0], [0, c23, s23], [0, -s23, c23]])
U13 = matrix(SR, [[c13, 0, s13 * exp(-I * d)], [0, 1, 0], [-s13 * exp(I * d), 0, c13]])
R12 = matrix(SR, [[c12, s12, 0], [-s12, c12, 0], [0, 0, 1]])
V = R23 * U13 * R12
print(V)
print("[PASS] V V^dagger = 1:", bool((V * V.conjugate_transpose() - identity_matrix(SR, 3)).apply_map(lambda e: e.simplify_full().trig_simplify()) == 0))
print("[PASS] V_31 = s12 s23 - c12 c23 s13 e^{i delta}:", bool((V[2, 0] - (s12 * s23 - c12 * c23 * s13 * exp(I * d))).simplify_full() == 0))
num = {t12: arcsin(0.22650), t13: arcsin(0.00361), t23: arcsin(0.04053), d: 1.196}
Vn = V.subs(num).change_ring(CDF)
A = matrix(RDF, 3, 3, lambda i, j: abs(Vn[i, j])); print(A.round(5))
fit = matrix(RDF, [[0.97401, 0.22650, 0.00361], [0.22636, 0.97320, 0.04053], [0.00854, 0.03978, 0.999172]])
print("[PASS] the magnitudes reproduce the fit of Paganini eq. 9.25 to 3e-4:", max(abs(A[i, j] - fit[i, j]) for i in range(3) for j in range(3)) < 3e-4)
print("[PASS] first-row unitarity |V_ud|^2 + |V_us|^2 + |V_ub|^2 = 1:", abs(sum(A[0, j]^2 for j in range(3)) - 1) < 1e-12)
