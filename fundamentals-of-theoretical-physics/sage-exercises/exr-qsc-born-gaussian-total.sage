# Exercise exr-qsc-born-gaussian-total (Galitski et al., Problem 13.1): Born cross section of V = V0 e^{-r^2/b^2},
# f_B = -C e^{-q^2 b^2/4}, C = sqrt(pi) m V0 b^3/(2 hbar^2); sigma = (pi/k^2) int_0^{4k^2} |f_B|^2 d(q^2).
x, k, b, C, m, V0, hb = var('x k b C m V0 hbar'); assume(k > 0, b > 0, C > 0)
sigma = (pi/k^2*integrate(C^2*exp(-x*b^2/2), x, 0, 4*k^2)).simplify_full()
print("sigma_B =", sigma)
print("equals (2 pi C^2/(k^2 b^2))(1 - e^{-2 k^2 b^2}):", bool((sigma - 2*pi*C^2/(k^2*b^2)*(1 - exp(-2*k^2*b^2))).simplify_full() == 0))
Cv = sqrt(pi)*m*V0*b^3/(2*hb^2)
print("low energy limit:", limit(sigma, k=0).subs(C=Cv).factor(), "; high energy k^2 sigma ->", limit(k^2*sigma, k=oo).subs(C=Cv).factor())
