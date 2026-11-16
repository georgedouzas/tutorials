# Example exm-sage-groups-1-5: the groups of order 1 to 5 in SageMath, with their Cayley tables; S2 is isomorphic
# to Z2, and Z4 is cyclic while the Klein four-group is not.
# Order N = 1
Z1 = CyclicPermutationGroup(1)
print("Z1:", Z1.list())
# Order N = 2
Z2 = CyclicPermutationGroup(2)
print("Z2:", Z2.list())
print(Z2.cayley_table())
S2 = SymmetricGroup(2)
print("S2:", S2.list())
print(S2.cayley_table())
print("S2 isomorphic to Z2:", S2.is_isomorphic(Z2))
# Order N = 3
Z3 = CyclicPermutationGroup(3)
print("Z3:", Z3.list())
print(Z3.cayley_table())
# Order N = 4
Z4 = CyclicPermutationGroup(4)
print("Z4:", Z4.list())
print(Z4.cayley_table())
print("Z4 cyclic:", Z4.is_cyclic())
K4G = direct_product_permgroups([Z2, Z2])
print("Klein four-group:", K4G.list())
print(K4G.cayley_table())
print("Klein four-group cyclic:", K4G.is_cyclic())
# Order N = 5
Z5 = CyclicPermutationGroup(5)
print("Z5:", Z5.list())
print(Z5.cayley_table())
