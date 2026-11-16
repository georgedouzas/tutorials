# Proposal

## Why

Special relativity is the tenth physics chapter, after renormalisation. Classical field theory, the Dirac equation
and quantum field theory all rely on Lorentz covariance before the reader meets the Lorentz group. The author wants
special relativity to come early, straight after classical electromagnetism, where Maxwell's equations raise the
question it answers.

The chapter was written to be read late. It cites 35 labels in classical field theory, the Dirac equation and quantum
field theory: one definition, about fifteen examples and exercises built on spinors and fields, and two section
introductions. Moving it in the sidebar alone would turn these into forward citations.

## What Changes

- **New order of the physics part:** classical mechanics, classical electromagnetism, **special relativity**,
  thermodynamics and statistical mechanics, quantum mechanics, classical field theory, the Dirac equation, quantum
  field theory, gauge theories, renormalisation, general relativity, supersymmetry and supergravity.
- **The chapter stops depending on later chapters:**
  - The Lorentz-algebra definition becomes self-contained.
  - Examples and exercises that need spinors, gamma matrices or quantum fields move to the chapter that defines what
    they use, keeping their labels.
  - Section introductions that rewrite classical field theory results become forward pointers in prose.
- **Back-citations:** later chapters cite the special relativity chapter where they use its results.
- **File names stay.** Only `_quarto.yml`, the tutorial overview and the chapter list for the cross-reference index
  change order.

## Capabilities

### Modified Capabilities

- `tutorial-content`: the physics chapter order, and the requirement that places special relativity before general
  relativity.

## Impact

- `posts/fundamentals-of-theoretical-physics/`: `part-ii-08b-special-relativity.qmd`, the chapters that receive moved
  blocks (classical field theory, the Dirac equation, QFT), `index.qmd`, and possibly `part-ii-01b-electromagnetism.qmd`
  and `part-ii-09-general-relativity.qmd` where their prose describes the order.
- `_quarto.yml` sidebar, and `scripts/_tutorial_chapters.json` in the mathematics post.
