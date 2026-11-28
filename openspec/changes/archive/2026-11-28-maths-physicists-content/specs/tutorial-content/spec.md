## MODIFIED Requirements

### Requirement: Every definition, theorem and proposition has graded examples and exercises

Each definition, theorem and proposition SHALL be followed by at least three examples of increasing complexity
and at least three exercises of increasing difficulty with collapsed solutions; examples SHALL include a figure
or plot where the object can be drawn and an interactive figure where feasible (design D21, D32). In Fundamentals of
Mathematics for Physicists every definition, theorem, lemma, proposition and corollary SHALL have exactly ten
examples and exactly ten exercises.

#### Scenario: Definition inspected
- **WHEN** the checker inspects a `def-`, `thm-` or `prp-` block
- **THEN** at least three `exm-` blocks and at least three `exr-` blocks with solution callouts follow it before
  the next definition, theorem or proposition

#### Scenario: Three is a minimum, not a target
- **WHEN** a statement is a central notion, has several standard cases, or has a textbook that offers good problems
- **THEN** it gets more than three examples and more than three exercises

#### Scenario: Where the ten-and-ten rule applies
- **WHEN** a statement of Fundamentals of Mathematics for Physicists is in a chapter listed in the tutorial's `_raised.txt`, or is added after this change in any chapter
- **THEN** it has exactly ten examples and exactly ten exercises, unless it is a recorded exception

#### Scenario: A statement that cannot support ten
- **WHEN** a statement of Fundamentals of Mathematics for Physicists cannot support ten good examples or ten good exercises
- **THEN** it is recorded as an exception with its reason, and has between three and ten examples and between three and ten exercises

#### Scenario: Statement in a raised chapter of the mathematics tutorial
- **WHEN** the content checker inspects a `def-`, `thm-`, `lem-`, `prp-` or `cor-` block in a chapter of Fundamentals of Mathematics for Physicists that is listed as raised
- **THEN** exactly ten `exm-` blocks and exactly ten `exr-` blocks, each exercise with its solution, follow it before the next statement, unless the statement is a recorded exception

#### Scenario: Mathematics tutorial complete
- **WHEN** this change is complete
- **THEN** every chapter of Fundamentals of Mathematics for Physicists is listed in `_raised.txt`, and the content checker reports nothing missing for it

#### Scenario: Graded examples
- **WHEN** a reader opens the Examples fold of a statement in a raised chapter
- **THEN** the first examples are the simplest instances, later ones are standard and physical cases, and the last ones are limits or counterexamples

#### Scenario: Interactive example
- **WHEN** an example draws a surface or a vector field
- **THEN** the HTML output embeds an interactive version and the PDF output the static image

### Requirement: Chapters contain exercises with folded solutions
Each chapter SHALL contain exercises that ask the reader to compute something related to the chapter's results,
each followed by a solution that is collapsed by default and gives the derivation theoretically, as a Sage
computation, as a Lean statement and proof, or in all three forms. In Fundamentals of Mathematics for Physicists
every exercise solution SHALL have two tabs: **Proof**, the theoretical solution, and **SageMath**, code with the
output it actually produced.

#### Scenario: Reader attempts an exercise
- **WHEN** a reader reaches an exercise
- **THEN** the solution is hidden until the reader expands it, and when expanded it shows at least one complete solution form

#### Scenario: Reader opens a solution in the mathematics tutorial
- **WHEN** a reader expands the solution of an exercise in a raised chapter of Fundamentals of Mathematics for Physicists
- **THEN** it shows a Proof tab, open first, with the complete theoretical solution, and a SageMath tab of a different colour with the code and its output

#### Scenario: The SageMath tab is distinct
- **WHEN** a reader looks at the two tabs of a solution in Fundamentals of Mathematics for Physicists
- **THEN** the SageMath tab looks different from the Proof tab and is labelled as SageMath

#### Scenario: A proof exercise
- **WHEN** an exercise of Fundamentals of Mathematics for Physicists asks the reader to prove a statement
- **THEN** its SageMath tab checks the claim on a named concrete instance and says it is a check of that instance, not a proof

#### Scenario: A Sage solution is given
- **WHEN** an exercise's solution includes Sage code
- **THEN** running that code with SageMath produces the output shown in the solution, and the content checker reports any difference

#### Scenario: A Lean solution is given
- **WHEN** an exercise's solution includes a Lean proof
- **THEN** the statement is a theorem of the library, shown through the same mechanism as the chapter's results

### Requirement: Every chapter uses the textbooks mapped to it
Every chapter SHALL use the textbook sections that the reading notes map to it, for content, examples and exercises,
cited at the point of use with section and problem numbers; a mapped section that turns out not to fit SHALL be
recorded in the note with the reason (design T1-T3). New examples and exercises in Fundamentals of Mathematics for
Physicists SHALL come first from the textbooks in the Zotero library mapped to the chapter.

#### Scenario: A chapter written before the textbook rule
- **WHEN** a reading note maps a textbook chapter to a book chapter written before the rule
- **THEN** the book chapter cites that textbook for added material, and the note lists the sections and problems used,
  or records why a mapped section was not used

#### Scenario: A textbook example or problem is adapted
- **WHEN** an example or exercise of Fundamentals of Mathematics for Physicists is taken from a mapped textbook
- **THEN** it is rewritten in the site notation and the tutorial's voice, and cites its textbook with the example or problem number

#### Scenario: An adapted problem
- **WHEN** an exercise of a raised chapter is adapted from a textbook problem
- **THEN** it cites `[@key, Problem n]` with a key that exists in `references/references.bib` and names a Zotero item, and the item's reading note lists the problem

## ADDED Requirements

### Requirement: The mathematics tutorial covers its recorded gaps
Fundamentals of Mathematics for Physicists SHALL cover every section gap recorded in its coverage record, each as a
section of the chapter the record names, sourced from the benchmarks it lists. The approved planned chapters,
Calculus of variations and Homotopy and cohomology, SHALL be written in full.

#### Scenario: A recorded gap
- **WHEN** the linear algebra chapter is raised
- **THEN** it has sections on determinants and trace and on eigenvalues and diagonalisation, each statement with ten examples and ten exercises, citing Axler and the other listed benchmarks

#### Scenario: A planned chapter is written
- **WHEN** a reader opens Calculus of variations
- **THEN** it is a full chapter (functionals and the Euler-Lagrange equations; constraints, the second variation and the Rayleigh-Ritz method) with no "planned" mark in the sidebar

#### Scenario: A further gap found while raising a chapter
- **WHEN** a chapter's mapped textbooks treat a topic in the chapter's subject that the chapter lacks and later chapters or tutorials use
- **THEN** the topic is added as a unit or section, or recorded in the coverage record with the reason it is left out

### Requirement: The mathematics tutorial has no forward references
In Fundamentals of Mathematics for Physicists no statement, proof, example, exercise, solution or remark SHALL use,
mention or link to anything defined later in the tutorial, later in the same chapter or in a later chapter of the
sidebar order. A link to another tutorial SHALL be the only exception. Two kinds of link SHALL NOT count as forward:
the chapter introduction's list of the chapter's own sections, and a figure, equation or table named a few lines
before it appears.

#### Scenario: A forward link in a raised chapter
- **WHEN** the content checker inspects a raised chapter and finds an `@` reference to a label defined later in the tutorial
- **THEN** it reports the reference, unless it is one of the two allowed kinds

#### Scenario: A link to another tutorial
- **WHEN** a chapter links to a definition in Fundamentals of Theoretical Physics
- **THEN** the checker does not report it

