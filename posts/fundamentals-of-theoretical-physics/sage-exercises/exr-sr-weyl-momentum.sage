# Exercise exr-sr-weyl-momentum: the four-momentum p = s^dag sigma^mu s (right-handed) or s^dag sigmabar^mu s (left-handed) of a Weyl spinor is null and transforms as a four-vector.
K = CyclotomicField(8); w = K.gen(); i = w^2; r2 = w + w^7          # w = exp(i pi/4), r2 = sqrt(2)
s0 = identity_matrix(K, 2); s1 = matrix(K, [[0, 1], [1, 0]]); s2 = matrix(K, [[0, -i], [i, 0]]); s3 = matrix(K, [[1, 0], [0, -1]])
sig = [s0, s1, s2, s3]; sigbar = [s0, -s1, -s2, -s3]
dag = lambda M: M.conjugate_transpose()
# Lambda = exp(zeta K1) exp(theta J3) with zeta = log 2 (cosh = 5/4, sinh = 3/4) and theta = pi/2
B = matrix(K, [[5/4, 3/4, 0, 0], [3/4, 5/4, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]])
R = matrix(K, [[1, 0, 0, 0], [0, 0, -1, 0], [0, 1, 0, 0], [0, 0, 0, 1]])
Lam = B*R
# spinor matrices: boost exp(-+ zeta sigma_1/2) = cosh(zeta/2) -+ sinh(zeta/2) sigma_1 with cosh(zeta/2) = 3 r2/4, sinh(zeta/2) = r2/4;
# rotation exp(-i theta sigma_3/2) = diag(w^-1, w)
Rot = matrix(K, [[w^7, 0], [0, w]])
ML = (3*r2/4*s0 - r2/4*s1)*Rot          # left-handed (1/2, 0)
MR = (3*r2/4*s0 + r2/4*s1)*Rot          # right-handed (0, 1/2)
# numerical check that Lam is the exponential of the generators
import numpy
from scipy.linalg import expm
K1 = numpy.zeros((4, 4)); K1[0, 1] = K1[1, 0] = 1
J3 = numpy.zeros((4, 4)); J3[1, 2] = -1; J3[2, 1] = 1
print("Lambda = exp(log2 K1) exp(pi/2 J3):", numpy.allclose(expm(numpy.log(2)*K1) @ expm(numpy.pi/2*J3), numpy.array(Lam.change_ring(CDF)).real))
fmt = lambda v: str(list(v)).replace("zeta8^2", "i")
mom = lambda s, basis: vector(K, [(dag(s)*b*s)[0, 0] for b in basis])
eta = diagonal_matrix(K, [1, -1, -1, -1])
for s in [matrix(K, [[1], [0]]), matrix(K, [[1 + i], [2]]), matrix(K, [[3], [-2*i]])]:
    pR = mom(s, sig); pL = mom(s, sigbar)
    print("s =", fmt(s.column(0)), " p_R =", fmt(pR), " p_L =", fmt(pL),
          " null:", pR*eta*pR == 0 and pL*eta*pL == 0,
          " p_R(M_R s) = Lambda p_R(s):", mom(MR*s, sig) == Lam*pR,
          " p_L(M_L s) = Lambda p_L(s):", mom(ML*s, sigbar) == Lam*pL)
    spin = vector(K, [(dag(s)*b*s)[0, 0]/2 for b in [s1, s2, s3]])/(dag(s)*s)[0, 0]
    print("   spin vector = +p_R/(2E):", spin == vector(K, list(pR)[1:])/(2*pR[0]), "  = -p_L/(2E):", spin == -vector(K, list(pL)[1:])/(2*pL[0]))
