# Exercise exr-qdm-cs-kallen: the final momentum of a two-body state of total energy sqrt(s) in the centre-of-momentum frame,
# p_f = sqrt(lambda(s, m3^2, m4^2))/(2 sqrt s) with lambda(x, y, z) = x^2 + y^2 + z^2 - 2xy - 2yz - 2zx; check that the energies add
# up, and the value for s = 100, m3 = 1, m4 = 3.
s, m3, m4 = var("s m3 m4", domain="positive")
lam = lambda x, y, z: x**2 + y**2 + z**2 - 2 * x * y - 2 * y * z - 2 * z * x
pf = sqrt(lam(s, m3**2, m4**2)) / (2 * sqrt(s))
E3 = (s + m3**2 - m4**2) / (2 * sqrt(s)); E4 = (s + m4**2 - m3**2) / (2 * sqrt(s))
print("E3^2 - m3^2 - pf^2 =", (E3**2 - m3**2 - pf**2).simplify_full(), "  E4^2 - m4^2 - pf^2 =", (E4**2 - m4**2 - pf**2).simplify_full(), "  E3 + E4 =", (E3 + E4).simplify_full())
print("equal masses: pf =", pf.subs(m4=m3).simplify_full())
print("s = 100, m3 = 1, m4 = 3: pf =", N(pf.subs(s=100, m3=1, m4=3), 6))
