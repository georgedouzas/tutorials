# Exercise exr-qdm-ee-mandelstam: on shell, with s = (p + k)^2, t = (p - p')^2, u = (p - k')^2,
# 8[p.p' k.k' + p.k' k.p' + m_mu^2 p.k + m_e^2 p'.k' + 2 m_e^2 m_mu^2] = 2[t^2 + u^2 + 4 s M - 2 M^2], M = m_e^2 + m_mu^2.
s, t, me, mm = var("s t me mm")
M = me**2 + mm**2
u = 2 * M - s - t
pp_ = (M - t) / 2      # p.p' = k.k'
pk_ = (M - u) / 2      # p.k' = k.p'
pk = s / 2 - me**2     # p.k
qk = s / 2 - mm**2     # p'.k'
lhs = 8 * (pp_**2 + pk_**2 + mm**2 * pk + me**2 * qk + 2 * me**2 * mm**2)
rhs = 2 * (t**2 + u**2 + 4 * s * M - 2 * M**2)
print("difference:", (lhs - rhs).expand())
