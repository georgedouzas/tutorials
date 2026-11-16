# Exercise exr-smd-int-electroweak-fit: tree-level electroweak parameters from alpha(m_Z) = 1/127.95, G_F and m_Z = 91.1876 GeV,
# using sin^2 cos^2 = pi alpha/(sqrt 2 G_F m_Z^2); then m_W, g, g', v and, with m_h = 125.25 GeV, the quartic coupling lambda.
pi = RDF(pi); sqrt = lambda x: RDF(x).sqrt()
alpha, GF, mZ, mh = 1 / 127.95, 1.1663788e-5, 91.1876, 125.25
Aw = pi * alpha / (sqrt(2) * GF * mZ^2)
s2 = (1 - sqrt(1 - 4 * Aw)) / 2
mW = mZ * sqrt(1 - s2); v = 1 / sqrt(2 * sqrt(2) * GF)
e = sqrt(4 * pi * alpha); g, gp = e / sqrt(s2), e / sqrt(1 - s2); lam = mh^2 / (4 * v^2)
print("sin^2 cos^2 = %.5f, sin^2 = %.4f, m_W = %.2f GeV, v = %.2f GeV, g = %.4f, g' = %.4f, lambda = %.4f" % (Aw, s2, mW, v, g, gp, lam))
print("[PASS] sin^2(theta_W) = 0.2336 and m_W = 79.83 GeV at tree level:", abs(s2 - 0.2336) < 5e-4 and abs(mW - 79.83) < 0.02)
print("[PASS] the tree-level m_W is 0.7%% below the measured 80.38 GeV (the loop correction): %.4f" % (mW / 80.38 - 1), -0.008 < mW / 80.38 - 1 < -0.006)
print("[PASS] g v/sqrt 2 = m_W and lambda = m_h^2/(4 v^2) = 0.129:", abs(g * v / sqrt(2) - mW) < 1e-9 and abs(lam - 0.129) < 0.001)
