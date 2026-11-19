# Proposal

## Why

Fundamentals of Theoretical Physics is the first tutorial to be rewritten to the chapter template
(`openspec/templates/chapter.qmd`). The template asks for at least ten examples and ten exercises after every
statement. The tutorial's chapters were written under a minimum of three, and the textbooks mapped to them, several
of them problem books, are largely unused.

At the time of this change the tutorial has 12 chapters and 488 statements. Electromagnetism already has ten and
ten. The other 11 chapters lack 2,531 examples and 2,430 exercises, about 4,960 blocks.

Several chapters also differ from the template's layout:

- Three chapters (Classical field theory, Gauge theories, Supersymmetry and supergravity) use the older main-theme
  layout, with nested parts that end in their own `### Exercises` and no closing `## Exercises` section.
- No chapter has a software unit.
- The landing page has no "Software for symbolic computation" section.

## What Changes

- **Ten and ten:** in this tutorial, every `def-`, `thm-`, `prp-`, `lem-` and `cor-` block is followed by at least
  ten examples of increasing complexity and at least ten exercises of increasing difficulty, each exercise with its
  solution.
- **Template layout:** each chapter is brought into the layout of `openspec/templates/chapter.qmd` when it is raised:
  - flat `##` sections of at most six definitions, with `###` units;
  - software in its own `### <Topic> in SageMath` unit at the end of the section it illustrates;
  - a closing `## Exercises` section with three integrative exercises.
- **Landing page:** `index.qmd` follows `openspec/templates/tutorial-index.qmd`. It keeps the flat chapter list and
  gains a "Software for symbolic computation" section.
- **One chapter at a time:** chapters are raised in reading order, one task each. The checkers apply ten, and the
  template layout, to a chapter once it is listed as raised, so the build stays green and the work can stop at any
  chapter.
- **Sources:** new examples and exercises come from the textbooks mapped to each chapter in `notes/`, under the
  consistency rule (rewritten in the tutorial's voice, not copied), and the reading notes are updated.
- **Fix:** the list of raised chapters is read from `<tutorial>/_raised.txt`. The checkers still look for
  `tutorial/_raised.txt`, a path lost when the tutorials moved here.

## Capabilities

### Modified Capabilities

- `tutorial-content`: in Fundamentals of Theoretical Physics, the minimum number of examples and exercises per
  statement is raised from three to ten, and raised chapters follow the chapter template's layout.

## Impact

- **Changed files**, all in `fundamentals-of-theoretical-physics/`:
  - the 12 chapter files `part-ii-*.qmd` and `index.qmd`;
  - `_raised.txt` (new);
  - `scripts/density.py`, `scripts/check_format.py` and `scripts/check_definitions.py`;
  - `notes/`, `sage-exercises/` and `figures/`.
- **Other tutorials:** the path fix in `scripts/density.py` is applied in all three physics tutorials. Mathematics for
  Physicists and Kaluza-Klein Theories are not raised by this change. They keep the minimum of three for existing
  statements, and statements added to them later still need ten, as now.
- **Verification:** none (paused). New blocks carry placeholder Verification boxes ("Pending").
- **Cost:** about 4,960 new blocks, about 30M agent tokens at the textbook pass's rate of about 6k tokens per block.
  One task per chapter, so the author can stop at any chapter.
