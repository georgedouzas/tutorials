# Exercise exr-qdm-ee-tau: tau-pair production e+ e- -> tau+ tau- at sqrt s = 4 GeV (m_tau = 1.77686 GeV): beta, the total cross
# section and its ratio to the muon-pair cross section at the same energy.
alpha, conv = 1 / 137.035999, 0.3893794e6
def sigma(rs, m):
    s = rs**2; b = sqrt(1 - 4 * m**2 / s)
    return b, 4 * pi * alpha**2 / (3 * s) * b * (3 - b**2) / 2 * conv
bt, st = sigma(4.0, 1.77686); bm, sm = sigma(4.0, 0.1056584)
print("threshold 2 m_tau = %.4f GeV" % (2 * 1.77686))
print("beta_tau = %.4f   sigma_tau = %.3f nb   sigma_mu = %.3f nb   ratio = %.3f" % (bt, N(st), N(sm), N(st / sm)))
