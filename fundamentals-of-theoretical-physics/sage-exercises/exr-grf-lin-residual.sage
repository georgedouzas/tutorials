# Exercise exr-grf-lin-residual: residual gauge transformation to the transverse traceless gauge for k^mu = omega (1, 0, 0, 1).
w = var('w'); assume(w > 0)
eta = diagonal_matrix(SR, [1, -1, -1, -1])
kup = vector(SR, [w, 0, 0, w]); kdn = eta*kup                 # k^mu and k_mu
A = matrix(SR, 4, 4, lambda i, j: var('a%d%d' % (min(i, j), max(i, j))))   # A_{mu nu}
# Lorenz gauge k^mu A_{mu nu} = 0 fixes the A_{0 nu} in terms of the A_{3 nu}
lor = solve([sum(kup[m]*A[m, n] for m in range(4)) == 0 for n in range(4)], [var('a00'), var('a01'), var('a02'), var('a03')], solution_dict=True)[0]
A = A.subs(lor)
print('Lorenz gauge:', lor)
C = vector(SR, var('C0 C1 C2 C3'))                            # C_mu
kC = sum(kup[m]*C[m] for m in range(4))
A2 = matrix(SR, 4, 4, lambda i, j: A[i, j] - kdn[i]*C[j] - kdn[j]*C[i] + eta[i, j]*kC)
trace = sum(eta[i, i]*A2[i, i] for i in range(4))              # eta^{mu nu} A_{mu nu}
csol = solve([A2[0, 0] == 0, A2[0, 1] == 0, A2[0, 2] == 0, trace == 0], list(C), solution_dict=True)[0]
print('C_mu =', csol)
A3 = A2.subs(csol).simplify_full()
print('A_{mu nu} after the transformation:'); print(A3)
print('still in the Lorenz gauge:', [sum(kup[m]*A3[m, n] for m in range(4)).simplify_full() for n in range(4)])
print('A_11 + A_22 =', (A3[1, 1] + A3[2, 2]).simplify_full())
