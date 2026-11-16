# Exercise exr-qsc-tr-double-delta (Cini et al., Sec. 13.3; transfer matrices): two delta barriers alpha delta(x),
# alpha delta(x - L), units hbar = 2m = 1, alpha = 20, L = 1: resonant tunnelling.
def Mdelta(kk, al, x0):
    # transfer matrix (A,B) -> (C,D) of al*delta(x - x0) for psi = A e^{ikx} + B e^{-ikx}
    b = al/(2*kk)                 # beta = m alpha/(hbar^2 k) with hbar = 2m = 1
    return matrix(CDF, [[1 - I*b, -I*b*exp(-2*I*kk*x0)], [I*b*exp(2*I*kk*x0), 1 + I*b]])
# check the single-delta matrix against direct matching: A = 1, B = r, C = t, D = 0
kk, al = 1.3, 2.0
M = Mdelta(kk, al, 0.4)
r = -M[1, 0]/M[1, 1]; t = M[0, 0] + M[0, 1]*r
print("single delta: |t|^2 =", round(abs(t)^2, 12), "; 1/(1 + beta^2) =", round(1/(1 + (al/(2*kk))^2), 12))
print("matrix has the form [[a, b], [conj b, conj a]] with |a|^2 - |b|^2 = 1:",
      abs(M[1, 1] - M[0, 0].conjugate()) < 1e-14 and abs(M[1, 0] - M[0, 1].conjugate()) < 1e-14 and abs(abs(M[0, 0])^2 - abs(M[0, 1])^2 - 1) < 1e-13)
al, L = 20.0, 1.0
def T2(kk):
    M = Mdelta(kk, al, L)*Mdelta(kk, al, 0.0)
    return 1/abs(M[0, 0])^2
peaks = []
ks = [0.001*j for j in range(1, 7001)]
vals = [T2(x) for x in ks]
for j in range(1, len(ks) - 1):
    if vals[j] > vals[j - 1] and vals[j] > vals[j + 1] and vals[j] > 0.5:
        kp = find_local_maximum(T2, ks[j - 1], ks[j + 1])[1]
        peaks.append(kp)
for kp in peaks:
    print("perfect transmission at k = %.4f (n pi/L = %.4f): T = %.10f, single barrier %.3f" % (kp, round(kp/pi.n())*pi.n(), T2(kp), 1/(1 + al^2/(4*kp^2))))
print("T between the first two peaks, at k = 4.5: %.4f" % T2(4.5))
print("T at k = 1.5 and 3.5: %.4f, %.4f" % (T2(1.5), T2(3.5)))
