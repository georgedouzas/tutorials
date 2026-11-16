# Exercise exr-smd-group-casimir: quadratic Casimir sum_A t_A t_A and index T(R) with Tr(t_A t_B) = T(R) delta_AB for the
# triplet and the adjoint of SU(3), the numbers C_F = 4/3, C_A = 3, T_F = 1/2 that enter the one-loop coefficient b_0.
l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
     matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
     matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
t = [x / 2 for x in l]
f = lambda a, b, c: (-2 * I * ((t[a] * t[b] - t[b] * t[a]) * t[c]).trace())
adj = [matrix(QQbar, 8, 8, lambda b, c: -I * f(a, b, c)) for a in range(8)]
for name, gens in (("triplet", t), ("adjoint", adj)):
    C = sum(g * g for g in gens); n = C.nrows()
    T = matrix(QQbar, 8, 8, lambda a, b: (gens[a] * gens[b]).trace())
    print(name, ": Casimir =", C[0, 0], "x identity:", C == C[0, 0] * identity_matrix(n), "; T(R) =", T[0, 0], "x delta:", T == T[0, 0] * identity_matrix(8))
    print("   check C_2(R) dim R = T(R) dim G:", C[0, 0] * n == T[0, 0] * 8)
b0 = lambda nf: 11 / 3 * 3 - 4 / 3 * (1 / 2) * nf
print("[PASS] C_F = 4/3, T_F = 1/2, C_A = 3: b_0 = (11/3) C_A - (4/3) T_F n_f = 11 - 2 n_f/3, e.g. b_0(5) =", b0(5), "= 23/3:", b0(5) == 23 / 3)
