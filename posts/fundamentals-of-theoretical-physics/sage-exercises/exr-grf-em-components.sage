# Exercise exr-grf-em-components: the spatial components of the electromagnetic stress tensor are minus the Maxwell stress.
E = vector(var('E1 E2 E3')); B = vector(var('B1 B2 B3'))
eta = diagonal_matrix([1, -1, -1, -1])
F = matrix(SR, 4, 4)
for i in range(3):
    F[0, i + 1] = E[i]; F[i + 1, 0] = -E[i]
eps = lambda i, j, k: sign(Permutation([i + 1, j + 1, k + 1])) if len({i, j, k}) == 3 else 0
for i in range(3):
    for j in range(3):
        F[i + 1, j + 1] = -sum(eps(i, j, k)*B[k] for k in range(3))
Fup = eta.inverse()*F*eta.inverse()                       # F^{mu nu}
F2 = sum(F[a, b]*Fup[a, b] for a in range(4) for b in range(4))
Fmixed = eta.inverse()*F                                   # F^rho_nu
T = (F*Fmixed + eta*F2/4).simplify_full()                  # T_{mu nu} = F_{mu rho} F^rho_nu + g/4 F^2
sigma = matrix(SR, 3, 3, lambda i, j: E[i]*E[j] + B[i]*B[j] - (E*E + B*B)/2*(1 if i == j else 0))
print('F_{mu nu} F^{mu nu} =', F2.simplify_full())
print('T_00 =', T[0, 0].factor())
print('T_ij + sigma_ij = 0 for all i, j:', all(bool((T[i + 1, j + 1] + sigma[i, j]).simplify_full() == 0) for i in range(3) for j in range(3)))
print('T_11 =', T[1, 1].expand())
