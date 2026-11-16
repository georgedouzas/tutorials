# Example exm-sage-calculus: a symbolic derivative and antiderivative of a quadratic in SageMath.
x = var('x')
# Define function
f = x^2 + 3 * x + 2
print(f)
# Differentiate with respect to x
print(diff(f, x))
# Integrate with respect to x
print(integrate(f, x))
