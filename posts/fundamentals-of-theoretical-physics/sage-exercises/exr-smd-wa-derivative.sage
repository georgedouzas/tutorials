# Exercise exr-smd-wa-derivative: the neutral part g W^3 t_3 + g' y B of the covariant derivative in terms of Z and A, for a
# component with isospin t3 and hypercharge y, with W^3 = cos Z + sin A, B = -sin Z + cos A and tan(theta_W) = g'/g.
g, gp, t3, y, Z, A = var("g gp t3 y Z A")
c, s = g / sqrt(g^2 + gp^2), gp / sqrt(g^2 + gp^2)
expr = (g * t3 * (c * Z + s * A) + gp * y * (-s * Z + c * A)).expand()
e = g * s; Q = t3 + y
cA, cZ = expr.coefficient(A), expr.coefficient(Z)
print("coefficient of A:", cA.simplify_full(), "; coefficient of Z:", cZ.simplify_full())
print("[PASS] A couples to e Q with e = g sin(theta_W) = g g'/sqrt(g^2 + g'^2):", bool((cA - e * Q).simplify_full() == 0))
print("[PASS] Z couples to (g/cos)(t3 - sin^2 Q):", bool((cZ - g / c * (t3 - s^2 * Q)).simplify_full() == 0))
print("[PASS] e = g sin = g' cos and 1/e^2 = 1/g^2 + 1/g'^2:", bool((g * s - gp * c).simplify_full() == 0 and (1 / e^2 - 1 / g^2 - 1 / gp^2).simplify_full() == 0))
