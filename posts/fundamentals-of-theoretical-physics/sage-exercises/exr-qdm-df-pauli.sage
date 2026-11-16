# Exercise exr-qdm-df-pauli: one fermionic mode as 2 x 2 matrices; {b, b^dagger} = 1 and b^2 = 0 force (b^dagger)^2 = 0 and N^2 = N.
b = matrix(QQ, [[0, 1], [0, 0]]); bd = b.transpose()
print("{b, b^dagger} =", list(b * bd + bd * b), "  b^2 =", list(b * b), "  (b^dagger)^2 =", list(bd * bd))
N = bd * b
print("N =", list(N), "  N^2 - N =", list(N * N - N), "  eigenvalues of N:", N.eigenvalues())
