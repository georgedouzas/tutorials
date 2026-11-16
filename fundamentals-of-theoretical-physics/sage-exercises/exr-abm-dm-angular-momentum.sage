# Exercise exr-abm-dm-angular-momentum: for m r'' = q r' x B with B = g r/(4 pi |r|^3), the vector
# J = m r x r' - (q g/4pi) r/|r| is conserved, and J . r/|r| = -q g/4pi.
t, m, q, g = var("t m q g", domain="real")
X = [function(n)(t) for n in ("x", "y", "z")]
r = vector(X); v = r.diff(t); rn = sqrt(r * r)
B = g * r / (4 * pi * rn^3)
acc = q * v.cross_product(B) / m
J = m * r.cross_product(v) - q * g / (4 * pi) * r / rn
dJ = J.diff(t)
subs = {diff(X[i], t, 2): acc[i] for i in range(3)}
dJ = vector([e.subs(subs).simplify_full() for e in dJ])
print("[PASS] dJ/dt = 0 on solutions:", all(e == 0 for e in dJ))
print("[PASS] J . r/|r| = -q g/4pi:", bool((J * r / rn + q * g / (4 * pi)).simplify_full() == 0))
