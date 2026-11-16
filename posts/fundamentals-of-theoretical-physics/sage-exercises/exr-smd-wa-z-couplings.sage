# Exercise exr-smd-wa-z-couplings: Z couplings of one generation, in units of g/cos(theta_W): g_L = T3 - Q s^2, g_R = -Q s^2,
# g_V = (g_L + g_R) = T3 - 2 Q s^2 and g_A = (g_L - g_R) = T3, with s^2 = sin^2(theta_W) = 0.2312.
s2 = 0.2312
ferm = [("nu", 1/2, 0), ("e", -1/2, -1), ("u", 1/2, 2/3), ("d", -1/2, -1/3)]
print(" f    g_L      g_R      g_V      g_A")
for f, T3, Q in ferm:
    print("%-3s %8.4f %8.4f %8.4f %8.4f" % (f, T3 - Q * s2, -Q * s2, T3 - 2 * Q * s2, T3))
gVe = -1/2 + 2 * s2
print("[PASS] the vector coupling of the electron, -1/2 + 2 s^2 = %.4f, is less than a tenth of its axial coupling:" % gVe, abs(gVe) < 0.05)
print("[PASS] the neutrino couples only to the left-handed Z current (g_R = 0, g_L = 1/2):", ferm[0][2] == 0)
