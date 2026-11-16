# Exercise exr-abm-dq-chern: for q g = 2 pi n, the real potentials of the charge-q bundle are P_N = -q A_N . dx =
# -(n/2)(1 - cos theta) dphi and P_S = (n/2)(1 + cos theta) dphi; the Chern number (1/2pi) int dP over the sphere is -n,
# equal to the winding (1/2pi) oint (P_N - P_S) of the transition function around the equator.
th, ph = var("th ph"); n = var("n", domain="integer")
PN, PS = -(n / 2) * (1 - cos(th)), (n / 2) * (1 + cos(th))          # coefficients of dphi
dPN, dPS = diff(PN, th), diff(PS, th)                                  # coefficients of dtheta ^ dphi
c1 = (integrate(integrate(dPN, th, 0, pi / 2), ph, 0, 2 * pi) + integrate(integrate(dPS, th, pi / 2, pi), ph, 0, 2 * pi)) / (2 * pi)
print("[PASS] the curvatures agree on the overlap:", bool((dPN - dPS).simplify_full() == 0))
print("c_1 =", c1.simplify_full())
print("[PASS] c_1 = -n:", bool(c1.simplify_full() == -n))
wind = integrate(PN - PS, ph, 0, 2 * pi) / (2 * pi)
print("[PASS] winding of the transition function around the equator: (1/2pi) oint (P_N - P_S) =", wind.simplify_full(), bool(wind.simplify_full() == -n))
print("[PASS] n = 1 gives c_1 = -1, the Chern number of the Hopf bundle:", bool(c1.subs(n=1).simplify_full() == -1))
