# Exercise exr-smd-group-singlets: the invariants of three quarks and of a quark-antiquark pair under a random SU(3) matrix:
# epsilon_ijk U_il U_jm U_kn = det(U) epsilon_lmn, and conj(q)_i q_i is invariant.
set_random_seed(5)
M = random_matrix(CDF, 3, 3) + I * random_matrix(CDF, 3, 3)
Q, R = M.QR(); U = Q / Q.det()^(1/3)                     # a random special unitary matrix
print("U unitary:", (U * U.conjugate_transpose() - identity_matrix(CDF, 3)).norm() < 1e-12, " det U =", U.det())
eps = lambda i, j, k: sign(Permutation([i + 1, j + 1, k + 1])) if len({i, j, k}) == 3 else 0
err = max(abs(sum(eps(i, j, k) * U[i, l] * U[j, m] * U[k, n] for i in range(3) for j in range(3) for k in range(3)) - eps(l, m, n))
          for l in range(3) for m in range(3) for n in range(3))
print("[PASS] epsilon_ijk U_il U_jm U_kn = epsilon_lmn (baryon singlet):", err < 1e-12)
q, p = vector(CDF, [1, 2 - I, 0.5 * I]), vector(CDF, [0.3, -1, 2])
print("[PASS] conj(q).p is invariant (meson singlet):", abs((U * q).conjugate() * (U * p) - q.conjugate() * p) < 1e-12)
# the antisymmetric invariant cannot be built from two triplets: epsilon_ijk q_j p_k transforms as an antitriplet
v = vector(CDF, [sum(eps(i, j, k) * q[j] * p[k] for j in range(3) for k in range(3)) for i in range(3)])
w = vector(CDF, [sum(eps(i, j, k) * (U * q)[j] * (U * p)[k] for j in range(3) for k in range(3)) for i in range(3)])
print("[PASS] epsilon q p of two quarks is an antitriplet, w = conj(U) v:", (w - U.conjugate() * v).norm() < 1e-12)
