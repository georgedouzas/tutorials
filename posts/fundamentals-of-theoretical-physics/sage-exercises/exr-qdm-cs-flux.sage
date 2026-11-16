# Exercise exr-qdm-cs-flux: for collinear momenta, (p_A.p_B)^2 - m_A^2 m_B^2 = (E_A E_B |v_A - v_B|)^2, and in general the
# difference is (pvec_A x pvec_B)^2.
mA, mB, a, b, c = var("mA mB a b c")
pA = vector(SR, [0, 0, a]); pB = vector(SR, [0, b, c])
EA = sqrt(mA**2 + pA * pA); EB = sqrt(mB**2 + pB * pB)
dot4 = EA * EB - pA * pB
vrel2 = (pA / EA - pB / EB) * (pA / EA - pB / EB)
diff = (dot4**2 - mA**2 * mB**2 - (EA * EB)**2 * vrel2).simplify_full()
cross2 = (pA.cross_product(pB) * pA.cross_product(pB)).simplify_full()
print("(pA.pB)^2 - mA^2 mB^2 - (EA EB |vA - vB|)^2 =", diff, "  -(pA x pB)^2 =", -cross2)
print("collinear (b = 0):", diff.subs(b=0).simplify_full())
