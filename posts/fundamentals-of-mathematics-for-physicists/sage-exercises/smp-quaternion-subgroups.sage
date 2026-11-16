# Example exm-sage-quaternion-subgroups: the subgroups of the quaternion group in SageMath; its proper non-trivial
# subgroups are cyclic and normal.
Z2, Z4 = CyclicPermutationGroup(2), CyclicPermutationGroup(4)
Q = QuaternionGroup()
# Q subgroups
for G in Q.subgroups():
    print(G)
# Q proper subgroups
for G in Q.subgroups():
    if G.order() == 2:
        if G.is_isomorphic(Z2) and G.is_normal():
            print(f'{G} is isomorphic to {Z2} and a normal subgroup of {Q}.')
    elif G.order() == 4:
        if G.is_isomorphic(Z4) and G.is_normal():
            print(f'{G} is isomorphic to {Z4} and a normal subgroup of {Q}.')
