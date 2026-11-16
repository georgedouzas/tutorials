# Exercise exr-qsc-born-invert (Cini et al., Sec. 14.8): inverting the Born amplitude f_B(q) = -A/(q^2 + mu^2) with
# V(r) = -(hbar^2/(m pi r)) int_0^oo q f_B(q) sin(q r) dq, and checking that the result has this Born amplitude.
q, r, A, mu, m, hb = var('q r A mu m hbar'); assume(q > 0, r > 0, A > 0, mu > 0, m > 0, hb > 0)
fB = -A/(q^2 + mu^2)
V = (-hb^2/(m*pi*r)*integrate(q*fB*sin(q*r), q, 0, oo)).simplify_full()
print("V(r) =", V)
back = (-2*m/(hb^2*q)*integrate(r*V*sin(q*r), r, 0, oo)).simplify_full()
print("its Born amplitude:", back, "; equals f_B:", bool((back - fB).simplify_full() == 0))
