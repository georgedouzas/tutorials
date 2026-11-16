# Exercise exr-tps-th-dilute: in the dilute gas, n instantons and nbar anti-instantons contribute (x^n/n!)(x^nbar/nbar!)
# e^{-i theta (n - nbar)} with x = K V T e^{-S_0}; the double sum is exp(2 x cos theta), so the vacuum energy density is
# E(theta)/V = -2 K e^{-S_0} cos theta. Checked by truncating the double series.
x, th = var("x theta", domain="real")
N = 40
S = sum(sum(x^n / factorial(n) * x^m / factorial(m) * exp(-I * th * (n - m)) for m in range(N)) for n in range(N))
for (xv, tv) in [(0.3, 0.7), (1.5, 2.0), (2.0, pi.n())]:
    a = S.subs({x: xv, th: tv}).n(); b = exp(2 * xv * cos(tv)).n()
    print("x = %.1f, theta = %.3f: series %.12f%+.1ei, exp(2 x cos theta) %.12f" % (xv, tv, a.real(), a.imag(), b))
    print("  [PASS]", abs(a - b) < 1e-10)
print("[PASS] the net instanton number n - nbar enters only through e^{-i theta (n - nbar)}: the Q = 0 sector alone is the theta = 0 average:",
      abs(integral(exp(2 * 0.8 * cos(th)), th, 0, 2 * pi).n() / (2 * pi.n()) - sum((0.8^n / factorial(n))^2 for n in range(40)).n()) < 1e-12)
