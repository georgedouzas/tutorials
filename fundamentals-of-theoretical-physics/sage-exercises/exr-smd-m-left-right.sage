# Exercise exr-smd-m-left-right: Nath Problem 5.5 in the normalisation of this chapter. SU(2)_L x SU(2)_R x U(1) with doublets
# phi_L = (0, v_L), phi_R = (0, v_R), both of U(1) charge 1/2, couplings g (both SU(2)) and g'.
g, gp, vL, vR = var("g gp vL vR", domain="positive")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
Z2 = zero_matrix(SR, 2)
# generators on phi_L + phi_R (4 components) for (W_L^1..3, W_R^1..3, B)
gens = [block_diagonal_matrix(g * sa / 2, Z2) for sa in s] + [block_diagonal_matrix(Z2, g * sa / 2) for sa in s] + [gp / 2 * identity_matrix(SR, 4)]
phi0 = vector(SR, [0, vL, 0, vR])
M = matrix(SR, 7, 7, lambda a, b: 2 * ((gens[a] * phi0).conjugate() * (gens[b] * phi0)).real()).simplify_full()
print("m_WL^2 =", M[0, 0], ", m_WR^2 =", M[3, 3])
N = M.matrix_from_rows_and_columns([2, 5, 6], [2, 5, 6]); print("neutral mass matrix (W_L^3, W_R^3, B):"); print(N)
print("[PASS] m_WL = g v_L/sqrt 2, m_WR = g v_R/sqrt 2:", bool(M[0, 0] == g^2 * vL^2 / 2 and M[3, 3] == g^2 * vR^2 / 2))
k = N.right_kernel().basis(); print("massless combination:", k)
print("[PASS] one massless photon, proportional to (g', g', g):", len(k) == 1 and bool((k[0][0] / k[0][2] - gp / g).simplify_full() == 0 and (k[0][1] / k[0][2] - gp / g).simplify_full() == 0))
num = N.subs(g=0.65, gp=0.36, vL=174, vR=3000); evn = sorted(num.change_ring(RDF).eigenvalues())
print("g = 0.65, g' = 0.36, v_L = 174, v_R = 3000 GeV: neutral masses", [sqrt(max(e, 0)) for e in evn], "GeV; W_L, W_R:", 0.65 * 174 / sqrt(2.), 0.65 * 3000 / sqrt(2.))
print("[PASS] for v_R >> v_L the light Z has m_Z^2 within 1% of g^2 v_L^2 (g^2 + 2 g'^2)/(2 (g^2 + g'^2)), the value at v_R -> infinity:",
      abs(evn[1] - 0.65^2 * 174^2 * (0.65^2 + 2 * 0.36^2) / (2 * (0.65^2 + 0.36^2))) / evn[1] < 0.01)
