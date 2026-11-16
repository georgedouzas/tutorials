# Exercise exr-gqn-gh-conserved-current: between conserved currents (k.J = 0) the massive R_xi propagator gives J D J = -i J.J/(k^2 - m^2)
# for every xi, while for a current with k.J != 0 the result depends on xi.
k0, kz, m, xi, j0, jx, jy = var("k0 kz m xi j0 jx jy")
eta = diagonal_matrix(SR, [1, -1, -1, -1])
ku = vector(SR, [k0, 0, 0, kz]); ksq = ku * eta * ku
D = I / (ksq - m^2) * (-eta + (1 - xi) * ku.column() * ku.row() / (ksq - xi * m^2))
J = vector(SR, [j0, jx, jy, k0 * j0 / kz])            # k.J = 0
Jl = eta * J
val = (Jl * D * Jl).simplify_full()
print("conserved: d/dxi =", diff(val, xi).simplify_full(), "; J D J + i J.J/(k^2 - m^2) =", (val + I * (J * eta * J) / (ksq - m^2)).simplify_full())
Jb = vector(SR, [j0, jx, jy, 0]); Jbl = eta * Jb
print("not conserved: d/dxi =", diff((Jbl * D * Jbl), xi).simplify_full().factor())
