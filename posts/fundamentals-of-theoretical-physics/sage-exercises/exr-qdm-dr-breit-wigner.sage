# Exercise exr-qdm-dr-breit-wigner: int ds/((s - M^2)^2 + M^2 Gamma^2) = pi/(M Gamma), so (M Gamma/pi)/((s - M^2)^2 + M^2 Gamma^2)
# tends to delta(s - M^2) as Gamma -> 0; the full width at half maximum in s is 2 M Gamma.
s, M, G = var("s M G", domain="positive")
I1 = integrate(1 / ((s - M**2)**2 + M**2 * G**2), s, -oo, oo)
print("integral over s:", I1.simplify_full())
half = solve((s - M**2)**2 + M**2 * G**2 == 2 * M**2 * G**2, s)
print("half-maximum points:", half, "  width:", (half[1].rhs() - half[0].rhs()).simplify_full())
