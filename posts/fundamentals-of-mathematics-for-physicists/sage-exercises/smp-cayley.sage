# Example exm-sage-cayley: Cayley's theorem for the small groups, in SageMath; each group of order N is a subgroup
# of S_N.
Z2, Z3, Z4, Z5, Z6 = [CyclicPermutationGroup(n) for n in range(2, 7)]
K4G = direct_product_permgroups([Z2, Z2])
Z2xZ3 = direct_product_permgroups([Z2, Z3])
S2, S3, S4, S5, S6 = [SymmetricGroup(n) for n in range(2, 7)]
print("Z2 in S2:", Z2.is_subgroup(S2))
print("Z3 in S3:", Z3.is_subgroup(S3))
print("Z4 in S4:", Z4.is_subgroup(S4))
print("Klein four-group in S4:", K4G.is_subgroup(S4))
print("Z5 in S5:", Z5.is_subgroup(S5))
print("Z6 in S6:", Z6.is_subgroup(S6))
print("Z2 x Z3 in S6:", Z2xZ3.is_subgroup(S6))
print("S3 in S6:", S3.is_subgroup(S6))
