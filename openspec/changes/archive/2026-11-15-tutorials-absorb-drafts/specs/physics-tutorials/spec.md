## ADDED Requirements

### Requirement: SageMath examples in the mathematics tutorial
Fundamentals of Mathematics for Physicists SHALL list the open-source libraries for symbolic computation in physics on its landing page, and SHALL show SageMath worked examples in the chapters whose topics they illustrate. Each example SHALL show its code and the output that code actually produced.

#### Scenario: Reader opens the group theory chapter
- **WHEN** a reader opens the group theory chapter
- **THEN** it shows the SageMath examples on the symmetric group and on small cyclic groups with their Cayley tables, each with its real output

#### Scenario: Reader opens other chapters with examples
- **WHEN** a reader opens the real analysis, differential equations, linear algebra or differential geometry chapter
- **THEN** it shows the matching SageMath examples (calculus, a solved differential equation, matrices and eigenvalues, the 2-sphere with its metric) with their real output

### Requirement: PyRate example in the physics tutorial
The Renormalisation chapter of Fundamentals of Theoretical Physics SHALL show a PyRate example that computes the two-loop Standard Model renormalisation group equations, solves them and plots the running couplings, with the output the code actually produced.

#### Scenario: Reader opens the renormalisation chapter
- **WHEN** a reader opens the renormalisation chapter
- **THEN** it shows the Standard Model model file, the PyRate code and the plot of the running couplings

#### Scenario: Rendering without SageMath or PyRate
- **WHEN** the site renders on a machine without SageMath or PyRate installed
- **THEN** the examples still show their recorded code and output

### Requirement: No hidden physics drafts
The physics tutorials SHALL be the only copy of their content. No hidden draft folder for physics material SHALL remain under the posts folder.

#### Scenario: Listing the posts folder
- **WHEN** the posts folder is listed
- **THEN** no `_symbolic_computation_in_physics_with_python_*` folder exists
