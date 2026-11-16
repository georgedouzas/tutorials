# Exercise exr-qdm-dr-phi3-number: Gamma(Phi -> chi chi) = g^2 beta/(32 pi M) with beta = sqrt(1 - 4 m^2/M^2), for M = 1 GeV,
# m = 0.1 GeV, g = 0.1 GeV; lifetime tau = hbar/Gamma with hbar = 6.582119569e-25 GeV s.
M, m, g = 1.0, 0.1, 0.1
beta = sqrt(1 - 4 * m**2 / M**2)
Gam = g**2 * beta / (32 * pi * M)
print("beta = %.5f   Gamma = %.4e GeV   tau = %.4e s" % (beta, N(Gam), 6.582119569e-25 / N(Gam)))
