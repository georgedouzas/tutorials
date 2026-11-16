# Exercise exr-qdm-dr-pion-momentum: two-body decay momentum |p| = sqrt(lambda(M^2, m1^2, m2^2))/(2M); for pi+ -> mu+ nu
# (m_pi = 139.570 MeV, m_mu = 105.658 MeV, m_nu = 0) it is (m_pi^2 - m_mu^2)/(2 m_pi), and the muon kinetic energy.
lam = lambda x, y, z: x**2 + y**2 + z**2 - 2 * x * y - 2 * y * z - 2 * z * x
M, m1, m2 = 139.570, 105.658, 0.0
p = sqrt(lam(M**2, m1**2, m2**2)) / (2 * M)
print("|p| = %.3f MeV  (formula (M^2 - m1^2)/(2M) = %.3f MeV)" % (p, (M**2 - m1**2) / (2 * M)))
print("muon kinetic energy = %.3f MeV" % (sqrt(p**2 + m1**2) - m1))
