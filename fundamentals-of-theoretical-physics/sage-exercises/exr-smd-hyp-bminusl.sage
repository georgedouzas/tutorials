# Exercise exr-smd-hyp-bminusl: all anomalies of a gauged U(1)_{B-L} with the Standard Model, for one generation of left-handed
# Weyl fields, without and with a right-handed neutrino (nu^c, a total singlet with B - L = 1).
# (name, colour multiplicity, SU(2) dimension, y, B - L)
gen = [("Q_L", 3, 2, 1/6, 1/3), ("u^c", 3, 1, -2/3, -1/3), ("d^c", 3, 1, 1/3, -1/3), ("L_L", 1, 2, -1/2, -1), ("e^c", 1, 1, 1, 1)]
nuc = [("nu^c", 1, 1, 0, 1)]
def anomalies(fs):
    s = lambda f: sum(nc * d * f(y, x) for n, nc, d, y, x in fs)
    return {"grav X": s(lambda y, x: x), "X^3": s(lambda y, x: x^3), "X^2 Y": s(lambda y, x: x^2 * y), "X Y^2": s(lambda y, x: x * y^2),
            "SU(2)^2 X": sum(nc * x for n, nc, d, y, x in fs if d == 2), "SU(3)^2 X": sum(d * x for n, nc, d, y, x in fs if nc == 3)}
a0, a1 = anomalies(gen), anomalies(gen + nuc)
print("without nu^c:", a0); print("with nu^c:   ", a1)
print("[PASS] without nu^c the gravitational and cubic B - L anomalies are -1 and -1, the others vanish:", a0["grav X"] == -1 and a0["X^3"] == -1 and all(a0[k] == 0 for k in ("X^2 Y", "X Y^2", "SU(2)^2 X", "SU(3)^2 X")))
print("[PASS] with nu^c every anomaly of U(1)_{B-L} vanishes:", all(v == 0 for v in a1.values()))
