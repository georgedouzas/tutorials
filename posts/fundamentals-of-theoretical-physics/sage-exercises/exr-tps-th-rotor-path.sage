# Exercise exr-tps-th-rotor-path: a particle on a circle (moment of inertia I, hbar = 1) with the theta term has levels
# E_m = (m - theta/2 pi)^2/(2I), m in Z, so Z(T) = sum_m e^{-T E_m}; the Euclidean path integral sums over the winding w of
# the paths, each weighted by e^{-S_w} e^{i theta w} with S_w = I (2 pi w)^2/(2T); the free propagator sqrt(I/(2 pi T)) e^{-S_w},
# integrated over the starting angle, gives Z(T) = sqrt(2 pi I/T) sum_w e^{-2 pi^2 I w^2/T + i theta w} (Poisson summation). Both sums are compared numerically.
import numpy as np
def Z_levels(theta, I, T, M=60):
    m = np.arange(-M, M + 1)
    return np.sum(np.exp(-T * (m - theta / (2 * np.pi))**2 / (2 * I)))
def Z_windings(theta, I, T, W=60):
    w = np.arange(-W, W + 1)
    return np.sqrt(2 * np.pi * I / T) * np.sum(np.exp(-2 * np.pi**2 * I * w**2 / T + 1j * theta * w))
worst = 0
for theta in (0.0, 1.0, np.pi / 2, np.pi, 2.5):
    for (I, T) in ((1.0, 0.5), (0.3, 2.0), (2.0, 7.0)):
        a, b = Z_levels(theta, I, T), Z_windings(theta, I, T)
        worst = max(worst, abs(a - b) / abs(a))
        if (I, T) == (0.3, 2.0):
            print("theta = %.3f, I = %.1f, T = %.1f: sum over levels %.10f, sum over windings %.10f%+.1ei" % (theta, I, T, a, b.real, b.imag))
print("[PASS] the two sums agree (largest relative difference %.1e):" % worst, worst < 1e-12)
# the ground-state energy at large T, read from -log Z/T, is (theta/2 pi)^2/(2I) for |theta| < pi
for theta in (0.0, 1.0, 3.0):
    I, T = 0.5, 400.0
    E0 = -np.log(Z_levels(theta, I, T)) / T
    print("[PASS] theta = %.1f: -log Z/T = %.6f, (theta/2pi)^2/2I = %.6f:" % (theta, E0, (theta / (2 * np.pi))**2 / (2 * I)),
          abs(E0 - (theta / (2 * np.pi))**2 / (2 * I)) < 1e-3)
