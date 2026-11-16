# Exercise exr-smd-m-muon-lifetime: the muon lifetime tau = 192 pi^3 / (G_F^2 m_mu^5) (Paganini eq. 9.85) from G_F, and G_F from the
# measured lifetime 2.1970 microseconds; hbar = 6.582119569e-25 GeV s.
pi = RDF(pi)
sqrt = lambda x: RDF(x).sqrt()
GF, mmu, hbar, tau_exp = 1.1663788e-5, 0.1056584, 6.582119569e-25, 2.1970e-6
tau = 192 * pi^3 / (GF^2 * mmu^5) * hbar
GF_tau = sqrt(192 * pi^3 * hbar / (tau_exp * mmu^5))
print("tau = %.4e s; G_F from tau = %.5e GeV^-2" % (tau, GF_tau))
print("[PASS] tau = 2.19 microseconds, within 0.5% of the measured 2.197:", abs(tau / tau_exp - 1) < 0.005)
v = 1 / sqrt(2 * sqrt(2) * GF)
print("[PASS] v = (2 sqrt 2 G_F)^(-1/2) = %.2f GeV:" % v, abs(v - 174.1) < 0.05)
