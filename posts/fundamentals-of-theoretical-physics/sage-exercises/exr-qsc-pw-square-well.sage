# Exercise exr-qsc-pw-square-well (Cini et al., Sec. 14.10, Problem 3(c); Zettili, Problem 11.4): scattering length of an
# attractive square well, a_s/a = 1 - tan(K0 a)/(K0 a), and a check against the exact s-wave phase shift at small k.
for x in (1.0, 1.5, 1.55, 1.6, 2.0, 4.0, 4.7):
    print("K0 a = %.2f: a_s/a = %9.3f, 4 pi a_s^2/(pi a^2) = %9.2f" % (x, 1 - tan(x)/x, 4*(1 - tan(x)/x)^2))
K0, k = 2.0, 1e-4        # a = 1
K = sqrt(k^2 + K0^2)
delta0 = arctan(k/K*tan(K)) - k
print("check at K0 a = 2, k a = 1e-4: -delta0/k = %.6f, formula %.6f" % (-delta0/k, 1 - tan(K0)/K0))
