# Exercise exr-tps-in-density: integrating the instanton number density (1/32 pi^2) F^a tilde F^a = 6 rho^4/(pi^2 (x^2 + rho^2)^4)
# over the ball |x| < R, with d^4x = 2 pi^2 r^3 dr, gives Q(R) = R^4 (R^2 + 3 rho^2)/(R^2 + rho^2)^3, which tends to 1, and the
# action (1/4 g^2) int F^a F^a = 8 pi^2/g^2; half of Q lies inside |x| < rho.
r, R, rho, g = var("r R rho g", domain="positive")
q = 192 * rho^4 / (r^2 + rho^2)^4 / (32 * pi^2)
QR = integrate(2 * pi^2 * r^3 * q, r, 0, R).simplify_full()
print("Q(R) =", QR.factor())
print("[PASS] Q(R) = R^4 (R^2 + 3 rho^2)/(R^2 + rho^2)^3:", bool((QR - R^4 * (R^2 + 3 * rho^2) / (R^2 + rho^2)^3).simplify_full() == 0))
print("[PASS] Q(infinity) = 1:", bool(limit(QR, R=oo) == 1))
print("[PASS] Q(rho) = 1/2:", bool(QR.subs(R=rho).simplify_full() == 1 / 2))
S = integrate(2 * pi^2 * r^3 * 192 * rho^4 / (r^2 + rho^2)^4, r, 0, oo) / (4 * g^2)
print("[PASS] S_E = 8 pi^2/g^2:", bool((S - 8 * pi^2 / g^2).simplify_full() == 0), S)
for gg in (0.65, 1.0, 2.0):
    Sv = (8 * pi^2 / gg^2).n()
    print("  g = %.2f: S = %.3f, e^{-S} = %.3e" % (gg, Sv, exp(-Sv).n()))
