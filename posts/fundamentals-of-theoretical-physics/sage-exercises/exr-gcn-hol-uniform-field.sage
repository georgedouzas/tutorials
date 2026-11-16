# Exercise exr-gcn-hol-uniform-field: in a uniform field B along z, the circulation of the symmetric potential
# B(-y, x, 0)/2 and of the Landau potential (0, B x, 0) around a triangle and an ellipse is B times the enclosed area,
# so the holonomy e^{i q oint A . dl} of a charge q is e^{i q B Area} in both gauges.
B, t, a, b = var("B t a b", domain="positive")
def circ(Avec, path, t0, t1):
    x, y = path
    return integrate(Avec[0](x=x, y=y) * diff(x, t) + Avec[1](x=x, y=y) * diff(y, t), t, t0, t1)
x, y = var("x y")
sym = (-B * y / 2 + 0 * x, B * x / 2 + 0 * y)
lan = (0 * x + 0 * y, B * x + 0 * y)
tri = [((2 * t, 0 * t), 0, 1), ((2 - 2 * t, t), 0, 1), ((0 * t, 1 - t), 0, 1)]      # (0,0) -> (2,0) -> (0,1) -> (0,0)
ell = ((a * cos(t), b * sin(t)), 0, 2 * pi)
for name, Avec in (("symmetric", sym), ("Landau", lan)):
    ct = sum(circ(Avec, p, t0, t1) for p, t0, t1 in tri).simplify_full()
    ce = circ(Avec, *ell).simplify_full()
    print("%s gauge: triangle %s, ellipse %s" % (name, ct, ce))
    print("[PASS] triangle gives B * 1 and ellipse gives B * pi a b:", bool(ct == B), bool((ce - pi * a * b * B).simplify_full() == 0))
