# Exercise exr-qdm-mq-laser-photons: photon energy hbar omega = h c/lambda and the photon rate P/(hbar omega) of a 1 mW beam at
# 633 nm; the mean number of photons in a 1 m long section of the beam.
h, c = 6.62607015e-34, 2.99792458e8
lam, P = 633e-9, 1e-3
Eph = h * c / lam
print("photon energy: %.4e J = %.4f eV" % (Eph, Eph / 1.602176634e-19))
print("photon rate: %.3e per second" % (P / Eph))
print("photons in 1 m of beam: %.3e" % (P / Eph / c))
