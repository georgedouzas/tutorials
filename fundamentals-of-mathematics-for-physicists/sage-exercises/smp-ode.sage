# Example exm-sage-ode: the linear first-order equation y' + y = sin(x) solved symbolically in SageMath.
x = var('x')
# Define a differential equation
y = function('y')(x)
deqn = (diff(y, x) + y == sin(x))
print(deqn)
# Solve the differential equation
print(desolve(deqn, y))
