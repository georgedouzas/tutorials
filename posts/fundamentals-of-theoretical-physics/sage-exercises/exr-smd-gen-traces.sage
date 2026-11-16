# Exercise exr-smd-gen-traces: traces of T_3, y and Q = T_3 + y over the fifteen left-handed Weyl fields of a generation; the
# ratio Tr T_3^2 / Tr Q^2 = 3/8 is sin^2(theta_W) when the generation fills SU(5) multiplets.
fields = [(3, [1/2, -1/2], 1/6), (3, [0], -2/3), (3, [0], 1/3), (1, [1/2, -1/2], -1/2), (1, [0], 1)]
tr = lambda f: sum(nc * f(T3, y) for nc, T3s, y in fields for T3 in T3s)
TrQ, Try, TrT3y = tr(lambda T, y: T + y), tr(lambda T, y: y), tr(lambda T, y: T * y)
TrT2, Try2, TrQ2 = tr(lambda T, y: T^2), tr(lambda T, y: y^2), tr(lambda T, y: (T + y)^2)
print("Tr Q =", TrQ, " Tr y =", Try, " Tr T3 y =", TrT3y, " Tr T3^2 =", TrT2, " Tr y^2 =", Try2, " Tr Q^2 =", TrQ2)
print("[PASS] Tr Q = Tr y = Tr T3 y = 0 and Tr Q^2 = Tr T3^2 + Tr y^2 = 2 + 10/3 = 16/3:", (TrQ, Try, TrT3y) == (0, 0, 0) and TrQ2 == TrT2 + Try2 == 16/3)
c2 = TrT2 / Try2
print("[PASS] normalisation: y_1 = sqrt(3/5) y has Tr y_1^2 = Tr T3^2, since Tr T3^2 / Tr y^2 =", c2, ":", c2 == 3/5)
print("[PASS] sin^2(theta_W) = g'^2/(g^2 + g'^2) = (3/5)/(1 + 3/5) = Tr T3^2 / Tr Q^2 =", TrT2 / TrQ2, ":", TrT2 / TrQ2 == 3/8 == c2 / (1 + c2))
