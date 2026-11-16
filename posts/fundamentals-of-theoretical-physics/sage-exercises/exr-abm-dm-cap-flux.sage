# Exercise exr-abm-dm-cap-flux: the flux of the monopole field through the cap theta < theta0 of a sphere of radius rho is
# g (1 - cos theta0)/2, independent of rho, and equals the circulation of A_N . dl = (g/4pi)(1 - cos theta) dphi around its
# rim; with A_S the circulation is g (1 - cos theta0)/2 - g, short by the total flux g.
g, rho, th, ph, th0 = var("g rho th ph th0", domain="positive")
flux = integrate(integrate(g / (4 * pi * rho^2) * rho^2 * sin(th), th, 0, th0), ph, 0, 2 * pi)
circN = integrate(g / (4 * pi) * (1 - cos(th0)), ph, 0, 2 * pi)
circS = integrate(-g / (4 * pi) * (1 + cos(th0)), ph, 0, 2 * pi)
print("flux through the cap:", flux.simplify_full())
print("[PASS] flux = g(1 - cos th0)/2 = oint A_N . dl:", bool((flux - g * (1 - cos(th0)) / 2).simplify_full() == 0), bool((flux - circN).simplify_full() == 0))
print("[PASS] oint A_S . dl = flux - g:", bool((circS - flux + g).simplify_full() == 0))
print("[PASS] the whole sphere (th0 = pi) carries g:", bool(flux.subs(th0=pi).simplify_full() == g))
