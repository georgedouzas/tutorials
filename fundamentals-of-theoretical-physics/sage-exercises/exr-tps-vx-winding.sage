# Exercise exr-tps-vx-winding: winding numbers n = (1/2 pi i) oint dphi/phi of complex fields around a large circle |z| = R,
# computed by numerical integration and compared with the count of zeros (positive for z - a, negative for conj(z - a)).
import numpy as np
from scipy.integrate import quad
def wind(phi, dphi, R=10.0):
    integrand = lambda t: (dphi(R * np.exp(1j * t)) * 1j * R * np.exp(1j * t) / phi(R * np.exp(1j * t)))
    re = quad(lambda t: integrand(t).real, 0, 2 * np.pi, limit=200)[0]
    im = quad(lambda t: integrand(t).imag, 0, 2 * np.pi, limit=200)[0]
    return (re + 1j * im) / (2j * np.pi)
cases = {
    "z^2":                 (lambda z: z**2, lambda z: 2 * z, 2),
    "z (z - 1) (z + 2i)":  (lambda z: z * (z - 1) * (z + 2j), lambda z: 3 * z**2 + 2 * (2j - 1) * z - 2j, 3),
}
for name, (p, dp, expect) in cases.items():
    w = complex(wind(p, dp))
    print("[PASS] winding of %-20s = %+.6f%+.6fi, expected %d:" % (name, w.real, w.imag, expect), abs(w - expect) < 1e-8)
# fields that are not holomorphic: the winding of phi around |z| = R from the change of its argument
def wind_arg(phi, R=10.0, N=20000):
    t = np.linspace(0, 2 * np.pi, N + 1); arg = np.unwrap(np.angle(phi(R * np.exp(1j * t))))
    return (arg[-1] - arg[0]) / (2 * np.pi)
for name, p, expect in [("conj(z)", lambda z: np.conj(z), -1),
                        ("z^2 conj(z - 1)", lambda z: z**2 * np.conj(z - 1), 1),
                        ("z conj(z) (= |z|^2)", lambda z: z * np.conj(z), 0),
                        ("(z - 1) conj(z + 1)^3", lambda z: (z - 1) * np.conj(z + 1)**3, -2)]:
    w = wind_arg(p)
    print("[PASS] winding of %-22s = %+.6f, expected %d:" % (name, w, expect), abs(w - expect) < 1e-9)
