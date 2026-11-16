# Example exm-sage-s3: the symmetric group S3 in SageMath, its order, its elements and its permutation matrices.
# Define the symmetric group S3
G = SymmetricGroup(3)
print(G)
# Get the order of S3
print(G.order())
# List the elements of S3
print(G.list())
# Standard representation of S3
for g in G:
    print(g)
    print(g.matrix())
