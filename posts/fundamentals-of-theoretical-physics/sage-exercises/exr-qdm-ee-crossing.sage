# Exercise exr-qdm-ee-crossing: the substitution s -> t, t -> u, u -> s turns the e+e- -> mu+mu- result into e- mu- -> e- mu-:
# (2e^4/t^2)[u^2 + s^2 + 4tM - 2M^2]. In the CM frame with m_e = 0 it equals (2e^4/(p^2(1 - c)^2))[(E + p)^2 + (E + p c)^2 - m^2(1 - c)],
# which grows like 1/theta^4 in the forward direction.
p, E, c, m, e = var("p E c m e", domain="positive")
M = m**2
s = (E + p)**2; t = -2 * p**2 * (1 - c); u = 2 * M - s - t
crossed = 2 * e**4 / t**2 * (u**2 + s**2 + 4 * t * M - 2 * M**2)
williams = 2 * e**4 / (p**2 * (1 - c)**2) * ((E + p)**2 + (E + p * c)**2 - m**2 * (1 - c))
print("difference (with E^2 = p^2 + m^2):", (crossed - williams).subs(E=sqrt(p**2 + m**2)).simplify_full())
th = var("th")
print("forward behaviour: th^4 (1 - cos th)^-2 =", taylor((1 - cos(th))**-2 * th**4, th, 0, 2), "+ O(th^4)")
