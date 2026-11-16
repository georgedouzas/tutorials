# Exercise exr-gqn-br-covariant-ghost: s (D_mu c)^a = 0 for SU(2), so that s^2 A^a_mu = 0. At one point and for one direction mu the
# odd generators are c^a and d^a = d_mu c^a, the potentials A^a = A^a_mu are even; s A^a = (D c)^a / g, s c^a = -1/2 f^{abc} c^b c^c,
# s d^a = d_mu(s c^a) = -1/2 f^{abc} (d^b c^c + c^b d^c), and (D c)^a = d^a + g f^{abc} A^b c^c.
R = PolynomialRing(QQ, ["g", "A1", "A2", "A3"]); g = R.gen(0); A = R.gens()[1:]
E = ExteriorAlgebra(R, ["c1", "c2", "c3", "d1", "d2", "d3"]); c = E.gens()[:3]; d = E.gens()[3:]
f = lambda a, b, e: (a - b) * (b - e) * (e - a) / 2
Dc = [d[a] + g * sum(f(a, b, e) * A[b] * c[e] for b in range(3) for e in range(3)) for a in range(3)]
sc = [-sum(f(a, b, e) * c[b] * c[e] for b in range(3) for e in range(3)) / 2 for a in range(3)]
sd = [-sum(f(a, b, e) * (d[b] * c[e] + c[b] * d[e]) for b in range(3) for e in range(3)) / 2 for a in range(3)]
# s(Dc)^a = s d^a + g f^{abe} [ (s A^b) c^e + A^b (s c^e) ], and g (s A^b) = (Dc)^b
sDc = [sd[a] + sum(f(a, b, e) * (Dc[b] * c[e] + g * A[b] * sc[e]) for b in range(3) for e in range(3)) for a in range(3)]
print("s (D c)^a for a = 1, 2, 3:", sDc)
