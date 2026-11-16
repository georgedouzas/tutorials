# Exercise exr-abm-dq-parallels: on any sphere of radius rho around the monopole, the circulations of A_N and A_S around a
# parallel theta = theta0 differ by g, whatever theta0 and rho; summing the two caps computed with the regular potential on
# each (northern cap with A_N, southern with A_S) gives the flux g = oint_equator (A_N - A_S) . dl.
g, rho, th0, ph = var("g rho th0 ph", domain="positive")
x, y, z = rho * sin(th0) * cos(ph), rho * sin(th0) * sin(ph), rho * cos(th0)
r = rho
AN = vector([-y, x, 0]) * g / (4 * pi * r * (r + z))
AS = -vector([-y, x, 0]) * g / (4 * pi * r * (r - z))
dl = vector([diff(x, ph), diff(y, ph), diff(z, ph)])
cN = integrate((AN * dl).simplify_full(), ph, 0, 2 * pi).simplify_full()
cS = integrate((AS * dl).simplify_full(), ph, 0, 2 * pi).simplify_full()
print("oint A_N . dl =", cN, ";  oint A_S . dl =", cS)
print("[PASS] the difference is g for every theta0 and rho:", bool((cN - cS).simplify_full() == g))
north = cN.subs(th0=pi / 2); south = -cS.subs(th0=pi / 2)
print("[PASS] northern hemisphere g/2 (with A_N), southern g/2 (with A_S, opposite boundary orientation), total g:",
      bool(north == g / 2), bool(south.simplify_full() == g / 2))
