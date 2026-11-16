# Exercise exr-smd-gen-bl-anomalies: anomaly coefficients of baryon number B and lepton number L with two SU(2) currents
# (Tr X T_3^2) and with two hypercharge currents (Tr X y^2), over the left-handed Weyl fields of one generation.
# (colour multiplicity, list of T_3, y, B, L); the conjugate fields carry -B, -L
fields = [(3, [1/2, -1/2], 1/6, 1/3, 0), (3, [0], -2/3, -1/3, 0), (3, [0], 1/3, -1/3, 0), (1, [1/2, -1/2], -1/2, 0, 1), (1, [0], 1, 0, -1)]
tr = lambda f: sum(nc * f(T3, y, B, L) for nc, T3s, y, B, L in fields for T3 in T3s)
res = {"Tr B T3^2": tr(lambda T, y, B, L: B * T^2), "Tr L T3^2": tr(lambda T, y, B, L: L * T^2),
       "Tr B y^2": tr(lambda T, y, B, L: B * y^2), "Tr L y^2": tr(lambda T, y, B, L: L * y^2)}
for k, v in res.items(): print(k, "=", v)
print("[PASS] Tr B T3^2 = Tr L T3^2 = 1/2 (Pal eqs. 18.147-18.148):", res["Tr B T3^2"] == res["Tr L T3^2"] == 1/2)
print("[PASS] Tr B y^2 = Tr L y^2 = -1/2, so B - L has no anomaly with two gauge currents:", res["Tr B y^2"] == res["Tr L y^2"] == -1/2)
print("[PASS] B + L is anomalous: Tr (B + L) T3^2 = 1:", res["Tr B T3^2"] + res["Tr L T3^2"] == 1)
