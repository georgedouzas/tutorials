# Example exm-sage-sphere: the 2-sphere as a SageMath manifold, its spherical coordinates and its round metric.
# Declare the manifold
S2 = manifolds.Sphere(2)
print(S2)
# Spherical coordinates
print(S2.spherical_coordinates())
# Metric
print(S2.metric().display())
