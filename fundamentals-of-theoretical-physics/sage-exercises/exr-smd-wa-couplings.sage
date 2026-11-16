# Exercise exr-smd-wa-couplings: the gauge couplings at m_Z from alpha(m_Z) = 1/127.95 and sin^2(theta_W) = 0.2312, compared with
# Nath eq. 9.33: alpha_2 = 0.03358, alpha_1 = (5/3) alpha_Y = 0.016985.
pi = RDF(pi)
alpha, s2 = 1 / 127.95, 0.2312
e = sqrt(4 * pi * alpha); g = e / sqrt(s2); gp = e / sqrt(1 - s2)
a2, aY = g^2 / (4 * pi), gp^2 / (4 * pi)
print("e = %.4f, g = %.4f, g' = %.4f, theta_W = %.2f degrees" % (e, g, gp, RDF(arcsin(sqrt(s2))) * 180 / pi))
print("alpha_2 = %.5f, alpha_Y = %.5f, alpha_1 = (5/3) alpha_Y = %.5f" % (a2, aY, 5 / 3 * aY))
print("[PASS] alpha_2 and alpha_1 agree with Nath eq. 9.33 within 1%:", abs(a2 / 0.03358 - 1) < 0.01 and abs(5 / 3 * aY / 0.016985 - 1) < 0.01)
print("[PASS] 1/alpha = 1/alpha_2 + 1/alpha_Y:", abs(1 / alpha - 1 / a2 - 1 / aY) < 1e-9)
