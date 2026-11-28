## MODIFIED Requirements

### Requirement: SageMath examples in the mathematics tutorial
Fundamentals of Mathematics for Physicists SHALL list the open-source libraries for symbolic computation in physics on its landing page, and SHALL show SageMath worked examples in the chapters whose topics they illustrate. Each example SHALL show its code and the output that code actually produced. Every exercise solution of the tutorial SHALL also have a SageMath form, with its code and real output, in the solution's SageMath tab.

#### Scenario: Reader opens the group theory chapter
- **WHEN** a reader opens the group theory chapter
- **THEN** it shows the SageMath examples on the symmetric group and on small cyclic groups with their Cayley tables, each with its real output

#### Scenario: Reader opens other chapters with examples
- **WHEN** a reader opens the real analysis, differential equations, linear algebra or differential geometry chapter
- **THEN** it shows the matching SageMath examples (calculus, a solved differential equation, matrices and eigenvalues, the 2-sphere with its metric) with their real output

#### Scenario: Reader opens any exercise solution
- **WHEN** a reader expands an exercise solution in a raised chapter of the mathematics tutorial
- **THEN** its SageMath tab shows code and the output that code produced when it was last run
