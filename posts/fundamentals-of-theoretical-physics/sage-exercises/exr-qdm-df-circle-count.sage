# Exercise exr-qdm-df-circle-count: a Dirac field on a circle truncated to momenta |n| <= 2 has 5 momenta x 4 modes = 20 fermionic
# modes; the Fock space has 2^20 states, and those of charge Q = n_b - n_d = 0 number C(20, 10).
modes_b, modes_d = 10, 10
total = 2 ** (modes_b + modes_d)
neutral = sum(binomial(modes_b, k) * binomial(modes_d, k) for k in range(11))
print("dimension:", total, "  charge-zero states:", neutral, "  C(20, 10) =", binomial(20, 10))
by_charge = {q: sum(binomial(10, nb) * binomial(10, nb - q) for nb in range(11) if 0 <= nb - q <= 10) for q in range(-10, 11)}
print("states by charge Q = 0, 1, 2:", by_charge[0], by_charge[1], by_charge[2], "  total check:", sum(by_charge.values()) == total)
