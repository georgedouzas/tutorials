# Exercise exr-tps-vx-global: without a gauge field, phi = v e^{i n theta} outside a core of radius r0 has gradient
# energy int |grad phi|^2 d^2x = 2 pi v^2 n^2 ln(R/r0) in the annulus r0 < r < R, which diverges with R.
r, th, v, r0, R = var("r theta v r0 R", domain="positive"); n = var("n", domain="integer"); assume(R > r0)
phi = v * exp(I * n * th)
grad2 = (diff(phi, r) * diff(phi, r).conjugate() + diff(phi, th) * diff(phi, th).conjugate() / r^2).simplify_full()
print("|grad phi|^2 =", grad2)
E = integrate(integrate(grad2 * r, r, r0, R), th, 0, 2 * pi)
print("E(annulus) =", E.simplify_log())
print("[PASS] E = 2 pi v^2 n^2 ln(R/r0):", bool((E - 2 * pi * v^2 * n^2 * log(R / r0)).simplify_log() == 0))
print("[PASS] with the gauge field A = (n/e r) e_theta the covariant gradient vanishes outside the core:",
      bool((diff(phi, th) / r - I * n / r * phi).simplify_full() == 0))
print("numbers: for n = 1, R/r0 = 1e3 and 1e6 the energy is %.2f v^2 and %.2f v^2" % (2 * pi.n() * log(1e3), 2 * pi.n() * log(1e6)))
