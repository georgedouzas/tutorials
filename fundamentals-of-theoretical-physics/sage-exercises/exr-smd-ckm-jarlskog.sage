# Exercise exr-smd-ckm-jarlskog: the Jarlskog invariant J = Im(V_us V_cb V_ub^* V_cs^*) of the standard parametrisation, its
# invariance under rephasing of the quark fields, and its value for Paganini's eq. 9.26 parameters.
t12, t13, t23, d = var("t12 t13 t23 d", domain="real")
c12, s12, c13, s13, c23, s23 = cos(t12), sin(t12), cos(t13), sin(t13), cos(t23), sin(t23)
V = matrix(SR, [[c12 * c13, s12 * c13, s13 * exp(-I * d)],
                [-s12 * c23 - c12 * s23 * s13 * exp(I * d), c12 * c23 - s12 * s23 * s13 * exp(I * d), s23 * c13],
                [s12 * s23 - c12 * c23 * s13 * exp(I * d), -c12 * s23 - s12 * c23 * s13 * exp(I * d), c23 * c13]])
Jq = lambda W: W[0, 1] * W[1, 2] * W[0, 2].conjugate() * W[1, 1].conjugate()
J = Jq(V).imag().simplify_full().trig_reduce()
target = c12 * c23 * c13^2 * s12 * s23 * s13 * sin(d)
print("[PASS] J = c12 c23 c13^2 s12 s23 s13 sin(delta):", bool((J - target).trig_expand().simplify_full() == 0))
a = [var("a%d" % i, domain="real") for i in range(3)]; b = [var("b%d" % i, domain="real") for i in range(3)]
Vp = diagonal_matrix([exp(-I * x) for x in a]) * V * diagonal_matrix([exp(I * x) for x in b])
print("[PASS] the quartet is unchanged by u_A -> e^{i a_A} u_A, d_B -> e^{i b_B} d_B:", bool((Jq(Vp) - Jq(V)).simplify_full() == 0))
num = {t12: arcsin(0.22650), t13: arcsin(0.00361), t23: arcsin(0.04053), d: 1.196}
Jn = RDF(target.subs(num)); print("J = %.3e" % Jn)
print("[PASS] J = 3.00e-5 (Paganini eq. 9.81):", abs(Jn - 3.00e-5) < 0.01e-5)
