# Exercise exr-smd-ckm-svd: bi-unitary diagonalisation of a random complex 3 x 3 mass matrix, M = U_L D U_R^dagger, following Pal's
# proof (U_R diagonalises M^dagger M, H = U_R D U_R^dagger, U_L = M H^-1 U_R).
set_random_seed(11)
M = random_matrix(CDF, 3, 3) + I * random_matrix(CDF, 3, 3)
ev, UR = (M.conjugate_transpose() * M).eigenmatrix_right()
D = diagonal_matrix(CDF, [sqrt(abs(ev[i, i])) for i in range(3)])
H = UR * D * UR.conjugate_transpose()
UL = M * H.inverse() * UR
err = lambda X: X.norm()
print("singular values:", [D[i, i].real() for i in range(3)])
print("[PASS] U_R and U_L are unitary:", err(UR * UR.conjugate_transpose() - 1) < 1e-10 and err(UL * UL.conjugate_transpose() - 1) < 1e-10)
print("[PASS] U_L^dagger M U_R is diagonal, real and non-negative:", err(UL.conjugate_transpose() * M * UR - D) < 1e-10)
print("[PASS] the diagonal entries agree with Sage's singular values:", max(abs(a - b) for a, b in zip(sorted(D.diagonal(), key=abs), sorted(M.singular_values()))) < 1e-10)
