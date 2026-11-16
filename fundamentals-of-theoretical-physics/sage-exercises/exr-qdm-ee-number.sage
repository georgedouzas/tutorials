# Exercise exr-qdm-ee-number: sigma(e+ e- -> mu+ mu-) = (4 pi alpha^2/3s) beta (3 - beta^2)/2 at sqrt s = 10 GeV and at
# sqrt s = 91.19 GeV (the photon contribution alone), in nb and pb; alpha = 1/137.036, 1 GeV^-2 = 0.3893794 mb.
alpha, conv, mmu = 1 / 137.035999, 0.3893794e6, 0.1056584
for rs in (10.0, 91.19):
    s = rs**2; b = sqrt(1 - 4 * mmu**2 / s)
    sig = 4 * pi * alpha**2 / (3 * s) * b * (3 - b**2) / 2 * conv
    print("sqrt s = %6.2f GeV: beta = %.6f  sigma = %.4f nb = %.2f pb" % (rs, b, N(sig), N(sig) * 1e3))
