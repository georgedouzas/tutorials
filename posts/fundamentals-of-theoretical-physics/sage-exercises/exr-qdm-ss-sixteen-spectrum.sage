# Exercise exr-qdm-ss-sixteen-spectrum: for one momentum with four fermionic modes (two spins of b and of d) the normal-ordered
# H = E sum (b^dag b + d^dag d) has levels 0, E, 2E, 3E, 4E with multiplicities 1, 4, 6, 4, 1, and Q = sum (b^dag b - d^dag d).
a = matrix(QQ, [[0, 1], [0, 0]]); Z = matrix(QQ, [[1, 0], [0, -1]]); I2 = identity_matrix(QQ, 2)
def kron(ms):
    out = ms[0]
    for x in ms[1:]:
        out = out.tensor_product(x)
    return out
c = [kron([Z] * j + [a] + [I2] * (3 - j)) for j in range(4)]
num = [x.transpose() * x for x in c]
H = sum(num); Q = num[0] + num[1] - num[2] - num[3]
from collections import Counter
print("levels of H/E with multiplicities:", sorted(Counter(H.eigenvalues()).items()))
print("charges with multiplicities:", sorted(Counter(Q.eigenvalues()).items()))
print("H and Q commute:", H * Q == Q * H)
