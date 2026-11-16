# Example exm-sage-groups-7-8: the groups of order 7 and 8 in SageMath; the five groups of order 8 are pairwise
# non-isomorphic, three are abelian and two (D4 and Q) are not.
from itertools import combinations
Z2, Z4 = CyclicPermutationGroup(2), CyclicPermutationGroup(4)
# Order N = 7
Z7 = CyclicPermutationGroup(7)
print("Z7:", Z7.list())
print(Z7.cayley_table())
# Order N = 8
Z8 = CyclicPermutationGroup(8)
print("Z8:", Z8.list())
print(Z8.cayley_table())
Z4xZ2 = direct_product_permgroups([Z4, Z2])
print("Z4 x Z2:", Z4xZ2.list())
print(Z4xZ2.cayley_table())
Z2xZ2xZ2 = direct_product_permgroups([Z2, Z2, Z2])
print("Z2 x Z2 x Z2:", Z2xZ2xZ2.list())
print(Z2xZ2xZ2.cayley_table())
D4 = DihedralGroup(4)
print("D4:", D4.list())
print(D4.cayley_table())
Q = QuaternionGroup()
print("Q:", Q.list())
print(Q.cayley_table())
groups = [Z8, Z4xZ2, Z2xZ2xZ2, D4, Q]
for group1, group2 in combinations(groups, 2):
    if not group1.is_isomorphic(group2):
        print(f'{group1}, {group2} are not isomorphic.')
for name, G in [("Z8", Z8), ("Z4 x Z2", Z4xZ2), ("Z2 x Z2 x Z2", Z2xZ2xZ2), ("D4", D4), ("Q", Q)]:
    print(f"{name} abelian: {G.is_abelian()}")
