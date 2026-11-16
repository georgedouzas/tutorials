# Figure: the quadratic f(x) = x^2 + 3x + 2 on [-5, 5], plotted with SageMath; its roots are -2 and -1.
# Output: figures/sage_quadratic.svg.
import os
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "sage_quadratic.svg")
x = var('x')
f = x^2 + 3 * x + 2
p = plot(f, (x, -5, 5), color="royalblue", thickness=2, axes_labels=["$x$", "$f(x)$"])
p.save(OUT, figsize=[5, 3.5])
print("saved", OUT)
