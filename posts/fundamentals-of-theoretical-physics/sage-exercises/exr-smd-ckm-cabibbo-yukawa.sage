# Exercise exr-smd-ckm-cabibbo-yukawa: Nath Problem 5.2 in the normalisation phi0 = (0, v). The down-type Yukawa terms
# v [dbar_c (C2 d_R + C3 s_R) + sbar_c (C5 d_R + C6 s_R)], with d_c = cos d + sin s and s_c = -sin d + cos s, must equal
# m_d dbar d_R + m_s sbar s_R.
C2, C3, C5, C6, v, th, md, ms = var("C2 C3 C5 C6 v th md ms")
c, s = cos(th), sin(th)
# coefficients of dbar d_R, dbar s_R, sbar d_R, sbar s_R (dbar_c = c dbar + s sbar, sbar_c = -s dbar + c sbar)
eqs = [v * (c * C2 - s * C5) == md, v * (c * C3 - s * C6) == 0, v * (s * C2 + c * C5) == 0, v * (s * C3 + c * C6) == ms]
sol = solve(eqs, [C2, C3, C5, C6], solution_dict=True)[0]
sol = {k: val.simplify_full().trig_simplify() for k, val in sol.items()}
print(sol)
print("[PASS] C2 = m_d cos/v, C5 = -m_d sin/v, C3 = m_s sin/v, C6 = m_s cos/v:",
      all(bool((sol[k] - e).simplify_full() == 0) for k, e in ((C2, md * c / v), (C5, -md * s / v), (C3, ms * s / v), (C6, ms * c / v))))
print("[PASS] the up-type couplings are C1 = m_u/v and C4 = m_c/v, since phi-tilde_0 = (v, 0)")
