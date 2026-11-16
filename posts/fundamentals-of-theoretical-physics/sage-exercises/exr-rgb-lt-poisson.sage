# Exercise exr-rgb-lt-poisson: the Hamiltonian of the heavy top by Legendre transform; for I1 = I2 it is independent of phi and psi, so H, p_phi and p_psi are three integrals in involution.
th, ph, ps, pth, pph, pps = var('theta phi psi p_theta p_phi p_psi')
td, pd, sd = var('td pd sd'); I1, I2, I3, Mgl = var('I1 I2 I3 Mgl')
w = vector([td*cos(ps) + pd*sin(th)*sin(ps), -td*sin(ps) + pd*sin(th)*cos(ps), sd + pd*cos(th)])
def hamiltonian(J2):
    L = (I1*w[0]^2 + J2*w[1]^2 + I3*w[2]^2)/2 - Mgl*cos(th)
    p = [diff(L, v) for v in (td, pd, sd)]
    sol = solve([p[0] == pth, p[1] == pph, p[2] == pps], [td, pd, sd], solution_dict=True)[0]
    return (pth*sol[td] + pph*sol[pd] + pps*sol[sd] - L.subs(sol)).simplify_full()
H = hamiltonian(I1)
claim = pth^2/(2*I1) + (pph - pps*cos(th))^2/(2*I1*sin(th)^2) + pps^2/(2*I3) + Mgl*cos(th)
print('symmetric top: H - claimed form =', (H - claim).simplify_full())
q, p = [th, ph, ps], [pth, pph, pps]
pb = lambda f, g: sum(diff(f, q[i])*diff(g, p[i]) - diff(f, p[i])*diff(g, q[i]) for i in range(3)).simplify_full()
print('{p_phi, H} =', pb(pph, H), ', {p_psi, H} =', pb(pps, H), ', {p_phi, p_psi} =', pb(pph, pps))
Hg = hamiltonian(I2)
Pi = (matrix([[diff(wi, v) for v in (td, pd, sd)] for wi in w]).transpose().inverse()*vector(p)).simplify_full()
print('asymmetric body (I1 != I2): H depends on psi:', Hg.has(ps), '; {p_psi, H} - (I1 - I2) Pi_1 Pi_2/(I1 I2) =',
      (pb(pps, Hg) - (I1 - I2)*Pi[0]*Pi[1]/(I1*I2)).simplify_full())
