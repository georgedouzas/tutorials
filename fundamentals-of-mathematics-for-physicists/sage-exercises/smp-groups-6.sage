# Example exm-sage-groups-6: the groups of order 6 in SageMath; Z6 and Z2 x Z3 are isomorphic, cyclic and abelian,
# and S3 is neither.
Z2, Z3 = CyclicPermutationGroup(2), CyclicPermutationGroup(3)
Z6 = CyclicPermutationGroup(6)
print("Z6:", Z6.list())
print(Z6.cayley_table())
Z2xZ3 = direct_product_permgroups([Z2, Z3])
print("Z2 x Z3:", Z2xZ3.list())
print(Z2xZ3.cayley_table())
S3 = SymmetricGroup(3)
print("S3:", S3.list())
print(S3.cayley_table())
print("Z6 isomorphic to Z2 x Z3:", Z6.is_isomorphic(Z2xZ3))
print("S3 isomorphic to Z6:", S3.is_isomorphic(Z6))
print("S3 isomorphic to Z2 x Z3:", S3.is_isomorphic(Z2xZ3))
for name, G in [("Z6", Z6), ("Z2 x Z3", Z2xZ3), ("S3", S3)]:
    print(f"{name}: cyclic {G.is_cyclic()}, abelian {G.is_abelian()}")
