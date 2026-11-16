# Example exm-sage-permutations: a product and the signatures of permutations in S4, in SageMath. Sage multiplies
# permutations left to right (P * Q applies P first), so the composition PQ, which applies Q first, is Q * P.
S4 = SymmetricGroup(4)
# S4 elements multiplication
P = S4[5]
Q = S4[12]
print(f'P = {P}, Q = {Q}')
print(f'P * Q = {Q * P}')
# S4 elements signature
P = S4[16]
Q = S4[2]
print(f'P = {P}, Q = {Q}')
print(f'sgn(P) = {P.sign()}')
print(f'sgn(Q) = {Q.sign()}')
