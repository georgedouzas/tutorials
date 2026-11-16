# Example exm-sage-matrices: a matrix product, and the eigenvalues and eigenvectors of a diagonal matrix with a check
# of the eigenvalue equation, in SageMath.
# Define matrix A
A = Matrix([[1, 2], [3, 4], [5, 6]])
print(A)
# Define matrix B
B = Matrix([[7, 8, 9], [9, 10, 11]])
print(B)
# Matrix multiplication
print(A * B)
# Define matrix C
C = Matrix([[1, 0], [0, 2]])
print(C)
# Eigenvalue equation
print(C.eigenvectors_right())
# Validation of eigenvalue equation
for eigenvalue, (eigenvector, *_), _ in C.eigenvectors_right():
    print(eigenvector, eigenvalue, C * eigenvector == eigenvalue * eigenvector)
