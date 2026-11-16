# Exercise exr-smd-hyp-no-gravity: drop the gravitational condition. With y_Q = 1 the linear conditions leave y_u = r free and the
# cubic gives y_e^3 = 18 (r^2 + 2 r + 4); search rational r = p/q with small p, q for which y_e is rational.
sols = []
for q in range(1, 13):
    for p in range(-60, 61):
        r = QQ(p) / q
        if r.denominator() != q: continue
        c = 18 * (r^2 + 2 * r + 4)
        try:
            sols.append((r, c.nth_root(3)))
        except ValueError:
            pass
print("rational (y_u, y_e) with y_Q = 1:", sols)
print("[PASS] for |p| <= 60, q <= 12 only r = -4 and r = 2 (y_e = 6) survive, the solutions of the proposition:", sorted(sols) == [(-4, 6), (2, 6)])
yQ, yu, ye = var("yQ yu ye")
cub = (6 * yQ^3 + 3 * yu^3 + 3 * (-2 * yQ - yu)^3 + 2 * (-3 * yQ)^3 + ye^3).expand()
print("[PASS] without gravity the cubic reads y_e^3 = 18 y_Q (y_u^2 + 2 y_Q y_u + 4 y_Q^2), a curve of real solutions:", bool((cub - ye^3 + 18 * yQ * (yu^2 + 2 * yQ * yu + 4 * yQ^2)).expand() == 0))
