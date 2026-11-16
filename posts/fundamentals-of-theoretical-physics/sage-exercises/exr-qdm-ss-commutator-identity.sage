# Exercise exr-qdm-ss-commutator-identity: [AB, C] = A{B, C} - {A, C}B for arbitrary matrices, and its use with fermionic modes:
# [b_1^dagger b_1, b_1^dagger] = b_1^dagger and [b_1^dagger b_1, b_2^dagger] = 0 (Jordan-Wigner matrices for two modes).
A, B, C = [random_matrix(QQ, 4, 4) for _ in range(3)]
print("[AB, C] - (A{B,C} - {A,C}B) = 0 for random 4 x 4 matrices:", A * B * C - C * A * B == A * (B * C + C * B) - (A * C + C * A) * B)
a = matrix(QQ, [[0, 1], [0, 0]]); Z = matrix(QQ, [[1, 0], [0, -1]]); I2 = identity_matrix(QQ, 2)
b1 = a.tensor_product(I2); b2 = Z.tensor_product(a)
N1 = b1.transpose() * b1
com = lambda X, Y: X * Y - Y * X
print("[N_1, b_1^dagger] = b_1^dagger:", com(N1, b1.transpose()) == b1.transpose(), "  [N_1, b_2^dagger] = 0:", com(N1, b2.transpose()) == 0)
