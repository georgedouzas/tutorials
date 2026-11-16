# Exercise exr-smd-m-widths: tree-level partial widths Gamma(Z -> f fbar) = N_c G_F m_Z^3 (g_V^2 + g_A^2)/(6 sqrt 2 pi), g_V = T3 - 2 Q s^2,
# g_A = T3, and Gamma(W -> e nu) = G_F m_W^3/(6 sqrt 2 pi); sin^2(theta_W) = 0.2312, measured Gamma_Z = 2.4952 GeV, Gamma_inv = 0.4990 GeV.
pi = RDF(pi)
sqrt = lambda x: RDF(x).sqrt()
GF, mZ, mW, s2, als = 1.1663788e-5, 91.1876, 80.38, 0.2312, 0.118
G0 = GF * mZ^3 / (6 * sqrt(2) * pi)
ferm = {"nu": (1/2, 0, 1, 3), "e": (-1/2, -1, 1, 3), "u": (1/2, 2/3, 3, 2), "d": (-1/2, -1/3, 3, 3)}   # T3, Q, colours, number of flavours below m_Z
G = {f: nc * G0 * ((T3 - 2 * Q * s2)^2 + T3^2) for f, (T3, Q, nc, n) in ferm.items()}
for f in G: print("Gamma(Z -> %s) = %.1f MeV" % (f, 1000 * G[f]))
GW = GF * mW^3 / (6 * sqrt(2) * pi)
print("Gamma(W -> e nu) = %.1f MeV" % (1000 * GW))
had = 2 * G["u"] + 3 * G["d"]; tot = 3 * G["nu"] + 3 * G["e"] + had; totQCD = tot + als / pi * had
print("Gamma_had = %.1f MeV, Gamma_Z = %.1f MeV at tree level, %.1f MeV with the factor 1 + alpha_s/pi on quarks" % (1000 * had, 1000 * tot, 1000 * totQCD))
print("[PASS] Gamma(Z -> nu nubar) = 166 MeV and Gamma(Z -> e e) = 83.4 MeV:", abs(1000 * G["nu"] - 165.9) < 0.5 and abs(1000 * G["e"] - 83.4) < 0.3)
print("[PASS] Gamma(Z -> e e)/Gamma(Z -> nu nubar) = 8 s^4 - 4 s^2 + 1 =", G["e"] / G["nu"], abs(G["e"] / G["nu"] - (8 * s2^2 - 4 * s2 + 1)) < 1e-12)
print("[PASS] Gamma(W -> e nu) = 227 MeV:", abs(1000 * GW - 227.2) < 0.5)
print("[PASS] the total width with the QCD factor is within 0.5%% of 2.4952 GeV: %.4f" % totQCD, abs(totQCD / 2.4952 - 1) < 0.005)
print("[PASS] N_nu = Gamma_inv/Gamma(Z -> nu nubar) = %.3f" % (0.4990 / G["nu"]), abs(0.4990 / G["nu"] - 3) < 0.02)
