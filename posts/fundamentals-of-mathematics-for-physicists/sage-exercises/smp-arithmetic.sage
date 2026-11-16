# Example exm-sage-arithmetic: exact and floating-point arithmetic, symbolic variables and simplification in SageMath.
# Basic arithmetic operations
print(((3 + 5) / 8) - 2.5 ^ 3)
# Symbolic variables definition
x, y = var('x y')
print((x, y))
# Symbolic expressions simplification
expr = (x^2 + x) / x
print(expr.simplify_full())
