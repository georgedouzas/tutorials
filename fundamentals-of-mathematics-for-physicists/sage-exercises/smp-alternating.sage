# Example exm-sage-alternating: the alternating group A4 in SageMath; it is a subgroup of S4 of half its order and
# contains exactly the even permutations.
S4 = SymmetricGroup(4)
A4 = AlternatingGroup(4)
print("A4:", A4.list())
print("A4 subgroup of S4:", A4.is_subgroup(S4))
print("every element of A4 has sign 1:", all(e.sign() == 1 for e in A4))
print("|A4| = |S4| / 2:", A4.order() == S4.order() / 2)
