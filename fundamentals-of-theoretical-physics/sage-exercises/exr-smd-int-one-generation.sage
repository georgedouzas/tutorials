# Exercise exr-smd-int-one-generation: from the hypercharges to the Z: charges, Z couplings and the ratio
# R_e = Gamma(Z -> hadrons)/Gamma(Z -> e+ e-) at tree level and with the factor 1 + alpha_s/pi (measured 20.77).
pi = RDF(pi)
y = {"Q_L": 1/6, "u_R": 2/3, "d_R": -1/3, "L_L": -1/2, "e_R": -1}
Qc = {"u": (1/2 + y["Q_L"], y["u_R"]), "d": (-1/2 + y["Q_L"], y["d_R"]), "nu": (1/2 + y["L_L"], None), "e": (-1/2 + y["L_L"], y["e_R"])}
print("charges (left, right):", Qc)
print("[PASS] left and right components of u, d, e have equal charges 2/3, -1/3, -1:", all(Qc[f][0] == Qc[f][1] for f in ("u", "d", "e")))
s2, als = 0.2312, 0.118
w = lambda T3, Q, nc: nc * ((T3 - 2 * Q * s2)^2 + T3^2)
had = 2 * w(1/2, 2/3, 3) + 3 * w(-1/2, -1/3, 3); ee = w(-1/2, -1, 1)
print("R_e = %.2f at tree level, %.2f with 1 + alpha_s/pi" % (had / ee, had / ee * (1 + als / pi)))
print("[PASS] R_e with the QCD factor is within 0.5% of the measured 20.77:", abs(had / ee * (1 + als / pi) / 20.77 - 1) < 0.005)
