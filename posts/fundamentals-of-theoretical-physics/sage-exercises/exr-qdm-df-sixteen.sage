# Exercise exr-qdm-df-sixteen: the four fermionic modes of one momentum (b^1, b^2, d^1, d^2) as 16 x 16 matrices by the
# Jordan-Wigner construction; all canonical anticommutators hold and the Fock space has 2^4 = 16 states.
a = matrix(QQ, [[0, 1], [0, 0]]); Z = matrix(QQ, [[1, 0], [0, -1]]); I2 = identity_matrix(QQ, 2)
def kron(ms):
    out = ms[0]
    for x in ms[1:]:
        out = out.tensor_product(x)
    return out
ops = [kron([Z] * j + [a] + [I2] * (3 - j)) for j in range(4)]   # b^1, b^2, d^1, d^2
ac = lambda A, B: A * B + B * A
one = identity_matrix(QQ, 16); zero = zero_matrix(QQ, 16)
ok1 = all(ac(ops[i], ops[j].transpose()) == (one if i == j else zero) for i in range(4) for j in range(4))
ok2 = all(ac(ops[i], ops[j]) == zero for i in range(4) for j in range(4))
print("{c_i, c_j^dagger} = delta_ij for the four modes:", ok1)
print("{c_i, c_j} = 0:", ok2)
print("dimension of the Fock space of one momentum:", ops[0].nrows())
