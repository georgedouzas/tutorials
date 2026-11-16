# Example exm-sage-symmetric-groups: the symmetric groups S2 to S6 in SageMath; S2 to S4 are listed in full, and for
# S5 and S6 the order and the first ten elements are shown.
for n in range(2, 7):
    Sn = SymmetricGroup(n)
    if n <= 4:
        print(f"S{n}:", Sn.list())
    else:
        print(f"S{n}: order {Sn.order()}, first elements", Sn.list()[:10])
