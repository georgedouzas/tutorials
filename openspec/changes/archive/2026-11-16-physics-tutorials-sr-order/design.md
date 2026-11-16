# Design

## Context

Decision E1 of the archived change physics-tutorials-foundations fixed the physics order and kept special relativity
after renormalisation. This change reverses that one placement. The rest of E1 stands.

## Decisions

### S1. Special relativity goes straight after classical electromagnetism

The electromagnetism chapter ends by pointing to the Lorentz invariance of Maxwell's equations, and the special
relativity chapter answers that question. Thermodynamics and quantum mechanics do not use special relativity, so
putting it before them costs nothing. Everything from classical field theory on can then cite it.

### S2. Blocks that need later notions move, keeping their labels

An example or exercise of the special relativity chapter that needs a notion defined later moves to the chapter that
defines it:
- Weyl and Dirac spinors, gamma matrices and charge conjugation go to classical field theory or the Dirac equation.
- The Foldy-Wouthuysen Hamiltonian goes to the Dirac equation.
- Quantisation goes to QFT.

The moved block keeps its label, so every citation of it still resolves. It sits after the statement it illustrates
in its new chapter, with connective prose, and cites the special relativity result it builds on. A block that only
names a later notion in passing is reworded instead.

### S3. The Lorentz-algebra definition is self-contained

`def-sr-lorentz-algebra` stops using the spinor representation equation of classical field theory. It defines
`so(1, 3)` from the generators of the defining representation. The spinor representation is left to classical field
theory and the Dirac equation, which already define it.

### S4. Prose pointers name later material without depending on it

The introductions of "Electrodynamics in covariant form" and "Relativistic optics" become forward pointers. They say
that classical field theory later recasts these results in field form, and they no longer need those blocks to
follow the argument. Classical field theory in turn cites the special relativity results it restates.

### S5. Minimums are kept

A statement that loses examples or exercises through S2 must still meet the minimum the checkers enforce. The gap is
filled with new blocks from the textbooks mapped to the chapter, chiefly Blennow-Ohlsson and the other special
relativity sources in the reading notes.

## Risks

- **Narrative breaks.** A moved block may read oddly away from its neighbours. Mitigation: write connective prose in
  both chapters, and render both.
- **Missed dependencies.** A missed citation leaves a forward use. Mitigation: a script lists every label the chapter
  cites from a later chapter, and it must print nothing except prose pointers.
