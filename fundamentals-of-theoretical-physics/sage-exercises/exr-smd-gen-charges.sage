# Exercise exr-smd-gen-charges: the electric charges Q = T_3 + y of the fifteen left-handed Weyl fields of a generation and of
# the Higgs doublet, with the multiplicities from colour.
# (name, colour multiplicity, list of T_3 values, hypercharge)
fields = [("Q_L", 3, [1/2, -1/2], 1/6), ("u^c", 3, [0], -2/3), ("d^c", 3, [0], 1/3), ("L_L", 1, [1/2, -1/2], -1/2), ("e^c", 1, [0], 1)]
higgs = ("phi", 1, [1/2, -1/2], 1/2)
for name, nc, T3s, y in fields + [higgs]:
    print("%-4s y = %5s  charges %s  (x %d colours)" % (name, y, [T3 + y for T3 in T3s], nc))
n = sum(nc * len(T3s) for name, nc, T3s, y in fields)
expected = {"Q_L": [2/3, -1/3], "u^c": [-2/3], "d^c": [1/3], "L_L": [0, -1], "e^c": [1], "phi": [1, 0]}
print("[PASS] fifteen Weyl fields:", n == 15)
print("[PASS] charges 2/3, -1/3 (u_L, d_L); -2/3 (u^c); 1/3 (d^c); 0, -1 (nu_L, e_L); 1 (e^c); 1, 0 (phi):",
      all([T3 + y for T3 in T3s] == expected[name] for name, nc, T3s, y in fields + [higgs]))
print("[PASS] the conjugates carry minus the charges of u_R, d_R, e_R (2/3, -1/3, -1), the charges of u_L, d_L, e_L:",
      [-(0 + y) for name, nc, T3s, y in fields if name.endswith("^c")] == [2/3, -1/3, -1])
