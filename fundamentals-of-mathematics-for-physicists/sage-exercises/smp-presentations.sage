# Example exm-sage-presentations: free groups and finitely presented groups in SageMath; <a | a^3> is Z3 and
# <r, f | r^4, f^2, rfrf> is the dihedral group D4.
# G = <a>
G.<a> = FreeGroup(1)
print(G)
# G = <a, b>
G.<a, b> = FreeGroup(2)
print(G)
# G = <a | a^n>
n = 3
F.<a> = FreeGroup(1)
G = F / [a^n]
print(G)
print("G isomorphic to Z3:", CyclicPermutationGroup(3).is_isomorphic(G.as_permutation_group()))
# G = <a, b | a*b*a^(-1)*b^(-1)>
F.<a, b> = FreeGroup(2)
G = F / [a*b*a^(-1)*b^(-1)]
print(G)
# G = <r, f | r^4, f^2, rfrf>
F.<r, f> = FreeGroup(2)
G = F / [r^4, f^2, r*f*r*f]
print(G)
print("G isomorphic to D4:", DihedralGroup(4).is_isomorphic(G.as_permutation_group()))
