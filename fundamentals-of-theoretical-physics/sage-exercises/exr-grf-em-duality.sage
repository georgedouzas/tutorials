# Exercise exr-grf-em-duality: the duality rotation of (E, B) leaves the electromagnetic stress tensor unchanged.
E = vector(var('E1 E2 E3')); B = vector(var('B1 B2 B3')); d = var('d')
def stress(E, B):
    u = (E*E + B*B)/2; S = E.cross_product(B)
    sig = matrix(SR, 3, 3, lambda i, j: E[i]*E[j] + B[i]*B[j] - (E*E + B*B)/2*(1 if i == j else 0))
    return u, S, sig
E2 = E*cos(d) + B*sin(d); B2 = -E*sin(d) + B*cos(d)
u1, S1, s1 = stress(E, B); u2, S2, s2 = stress(E2, B2)
print('energy density unchanged:', bool((u1 - u2).simplify_full() == 0))
print('Poynting vector unchanged:', all(bool((S1[i] - S2[i]).simplify_full() == 0) for i in range(3)))
print('stress unchanged:', all(bool((s1[i, j] - s2[i, j]).simplify_full() == 0) for i in range(3) for j in range(3)))
print('B^2 - E^2 after rotation:', (B2*B2 - E2*E2).simplify_full().trig_reduce())
print('E.B after rotation:', (E2*B2).simplify_full().trig_reduce())
