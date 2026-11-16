# Exercise exr-qsc-born-yukawa-total (Cini et al., Sec. 14.8, eq. (14.77)): total Born cross section of V = g e^{-r/a}/r,
# sigma = (pi/k^2) int_0^{4k^2} |f_B|^2 d(q^2), with f_B = -(2 m g/hbar^2)/(q^2 + 1/a^2).
x, k, a, g, m, hb = var('x k a g m hbar'); assume(k > 0, a > 0, m > 0, hb > 0)
fB = -(2*m*g/hb^2)/(x + 1/a^2)            # x = q^2
sigma = (pi/k^2*integrate(fB^2, x, 0, 4*k^2)).simplify_full()
target = (2*m*g/hb^2)^2*4*pi*a^4/(1 + 4*k^2*a^2)
print("sigma_B =", sigma, "; equals (2mg/hbar^2)^2 4 pi a^4/(1 + 4 k^2 a^2):", bool((sigma - target).simplify_full() == 0))
print("low energy:", limit(sigma, k=0).factor(), "; high energy, k^2 sigma ->", limit(k^2*sigma, k=oo).factor())
