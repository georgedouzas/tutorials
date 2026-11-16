# Exercise exr-gqn-gh-massive-propagator: the kinetic operator K = (m^2 - k^2) eta + (1 - 1/xi) k k of a massive vector in an R_xi gauge
# times D/i, D = i[(-eta + kk/m^2)/(k^2 - m^2) - (kk/m^2)/(k^2 - xi m^2)], is the identity; D also equals
# i/(k^2 - m^2) [-eta + (1 - xi) kk/(k^2 - xi m^2)].
k0, k1, k2, k3, m, xi = var("k0 k1 k2 k3 m xi")
eta = diagonal_matrix(SR, [1, -1, -1, -1])
ku = vector(SR, [k0, k1, k2, k3]); kl = eta * ku; ksq = ku * kl
K = (m^2 - ksq) * eta + (1 - 1/xi) * kl.column() * kl.row()                       # lower indices
D = I * ((-eta + ku.column() * ku.row() / m^2) / (ksq - m^2) - (ku.column() * ku.row() / m^2) / (ksq - xi * m^2))   # upper
print("K D = i 1:", bool((K * D - I * identity_matrix(4)).simplify_full() == 0))
D2 = I / (ksq - m^2) * (-eta + (1 - xi) * ku.column() * ku.row() / (ksq - xi * m^2))
print("two forms agree:", bool((D - D2).simplify_full() == 0))
print("m -> 0 limit is the photon R_xi propagator:", bool((D2.subs(m=0) - I / ksq * (-eta + (1 - xi) * ku.column() * ku.row() / ksq)).simplify_full() == 0))
