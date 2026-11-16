# Exercise exr-abm-dq-lowest-j: for J = L - (q g/4pi) r_hat with L = r x p, r_hat . L = 0, so J . r_hat = -q g/4pi and
# |J|^2 = |L|^2 + (q g/4pi)^2; with q g = 2 pi n the allowed j are |n|/2, |n|/2 + 1, ..., so the lowest is 1/2 for n = 1.
x, y, z, px, py, pz, k = var("x y z px py pz k", domain="real")
r = vector([x, y, z]); p = vector([px, py, pz]); rn = sqrt(r * r)
L = r.cross_product(p); J = L - k * r / rn
print("[PASS] r_hat . L = 0:", bool((r * L).simplify_full() == 0))
print("[PASS] J . r_hat = -k:", bool((J * r / rn + k).simplify_full() == 0))
print("[PASS] |J|^2 = |L|^2 + k^2:", bool((J * J - L * L - k^2).simplify_full() == 0))
for n in (1, 2, 3):
    jmin = n / 2
    print("n = %d: q g/4pi = %s, allowed j = %s" % (n, jmin, [jmin + i for i in range(4)]))
