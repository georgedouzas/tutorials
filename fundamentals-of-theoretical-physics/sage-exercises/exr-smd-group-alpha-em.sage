# Exercise exr-smd-group-alpha-em: crude one-loop running of the fine-structure constant from 1/alpha(m_e) = 137.036 to m_Z,
pi, log, exp = RDF(pi), (lambda x: RDF(x).log()), (lambda x: RDF(x).exp())
# 1/alpha(m_Z) = 137.036 - 2/(3 pi) sum_f N_c Q_f^2 log(m_Z/m_f), over the charged fermions lighter than m_Z.
mZ = 91.1876
fer = {"e": (0.000511, 1, 1), "mu": (0.1057, 1, 1), "tau": (1.777, 1, 1), "u": (0.0022, 4/9, 3), "d": (0.0047, 1/9, 3), "s": (0.095, 1/9, 3),
       "c": (1.27, 4/9, 3), "b": (4.18, 1/9, 3)}
lep = sum(2 / (3 * pi) * nc * q2 * log(mZ / m) for k, (m, q2, nc) in fer.items() if k in ("e", "mu", "tau"))
qua = sum(2 / (3 * pi) * nc * q2 * log(mZ / m) for k, (m, q2, nc) in fer.items() if k not in ("e", "mu", "tau"))
inv = 137.036 - lep - qua
print("shift from leptons %.3f, from quarks %.3f; 1/alpha(m_Z) = %.2f (measured 127.95)" % (lep, qua, inv))
print("[PASS] the crude estimate is 1/alpha(m_Z) = 126.6, within 1.2% of 127.95:", abs(inv - 126.6) < 0.1 and abs(inv / 127.95 - 1) < 0.012)
