# Exercise exr-qdm-cs-phi4-number: the tree-level total cross section of the quartic theory, sigma = lambda^2/(32 pi s) (identical
# particles), for lambda = 1 and sqrt s = 10 GeV, in GeV^-2 and in nanobarn (1 GeV^-2 = 0.3893794 mb).
lam, rs = 1, 10
sigma = lam**2 / (32 * pi * rs**2)
print("sigma = %.4e GeV^-2 = %.2f nb" % (N(sigma), N(sigma) * 0.3893794e6))
