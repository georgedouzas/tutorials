# Exercise exr-smd-group-running: one-loop running of alpha_s from alpha_s(m_Z) = 0.118, 1/alpha(Q) = 1/alpha(Q0) + b0/(2 pi) log(Q/Q0),
pi, log, exp = RDF(pi), (lambda x: RDF(x).log()), (lambda x: RDF(x).exp())
# b0 = 11 - 2 n_f/3, with n_f = 5 down to m_b = 4.18 GeV and n_f = 4 below; Lambda from the measured alpha_s(m_tau) = 0.33.
mZ, mb, mtau, a0 = 91.1876, 4.18, 1.777, 0.118
b0 = lambda nf: 11 - 2 * nf / 3
run = lambda a, Q1, Q2, nf: 1 / (1 / a + b0(nf) / (2 * pi) * log(Q2 / Q1))
amb = run(a0, mZ, mb, 5); atau = run(amb, mb, mtau, 4)
print("alpha_s(m_b) = %.4f, alpha_s(m_tau) = %.4f" % (amb, atau))
print("[PASS] one loop gives alpha_s(m_b) = 0.212 and alpha_s(m_tau) = 0.279, below the measured 0.33:", abs(amb - 0.212) < 5e-4 and abs(atau - 0.279) < 5e-4)
Lam4 = mtau * exp(-2 * pi / (b0(4) * 0.33)); Lam5 = mZ * exp(-2 * pi / (b0(5) * a0))
print("[PASS] Lambda^(4) from alpha_s(m_tau) = 0.33 is %.3f GeV (Paganini: about 0.2 GeV); Lambda^(5) from alpha_s(m_Z) = 0.118 is %.4f GeV" % (Lam4, Lam5), 0.15 < Lam4 < 0.22)
