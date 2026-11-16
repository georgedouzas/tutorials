# Exercise exr-qdm-cs-three-body: massless three-body phase space. With d Pi_3 = dE_1 dE_2/(32 pi^3) in the centre-of-momentum
# frame (after the angular integrals), the allowed region E_i <= sqrt(s)/2, E_1 + E_2 >= sqrt(s)/2 has area s/8, so Pi_3 = s/(256 pi^3);
# compare Pi_2 = 1/(8 pi).
E1, E2, s = var("E1 E2 s", domain="positive")
W = sqrt(s)
area = integrate(integrate(1, E2, W / 2 - E1, W / 2), E1, 0, W / 2)
print("area of the Dalitz region:", area.simplify_full(), "  Pi_3 =", (area / (32 * pi**3)).simplify_full())
print("general formula (2 pi)^(4 - 3n) (pi/2)^(n - 1) s^(n - 2)/((n - 1)! (n - 2)!) for n = 2, 3:",
      [((2 * pi)**(4 - 3 * n) * (pi / 2)**(n - 1) * s**(n - 2) / (factorial(n - 1) * factorial(n - 2))).simplify_full() for n in (2, 3)])
