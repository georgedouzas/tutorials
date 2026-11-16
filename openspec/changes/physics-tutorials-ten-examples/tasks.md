# Tasks

All paths are relative to `fundamentals-of-theoretical-physics/` unless they say otherwise. Every chapter task
starts from `openspec/templates/chapter.qmd` as the model chapter.

## 1. Rule, checkers and landing page

- [x] 1.1 Make the minimum per chapter in `check_format.py` and `check_definitions.py` through `scripts/density.py`
  (ten for raised chapters and for statements added after this change, three otherwise; exceptions as in design X2).
  Add `check_format.py --backlog`. Update the writing brief, the `tutorial-writing-rules` memory and the conventions
  where they state three.
- [x] 1.2 Raise the minimum in the open change physics-tutorials-foundations to ten and ten.
- [ ] 1.3 In all three physics tutorials, point `scripts/density.py` at `<tutorial>/_raised.txt` (it still reads
  `tutorial/_raised.txt`). Create `_raised.txt` here with a header comment. Check: `check_format.py --backlog` gives
  the counts of design Context.
- [ ] 1.4 For raised chapters only, make `check_format.py` and `check_definitions.py` enforce the template layout of
  design X3: six definitions per `##` section with no nested-part exception, a closing `## Exercises` section of three
  integrative exercises, and at least one `### … in SageMath` unit with an `exm-sage-` example. Check: the checkers
  pass on the current tutorial (no chapter raised yet).
- [ ] 1.5 Bring `index.qmd` into the layout of `openspec/templates/tutorial-index.qmd`: flat chapter list in sidebar
  order and a `## Software for symbolic computation` section (design X4). Check: HTML draft render.

## 2. Chapters, in reading order

Each task:
- brings its chapter into the template layout (design X3);
- raises every statement to ten and ten (design X1, X6);
- updates the chapter's reading notes;
- adds the chapter to `_raised.txt`.

Check for every task: `check_format.py`, `check_definitions.py`, `check_bib.py`, the cross-references, the HTML
draft render. Commit and tick when the chapter is raised.

- [ ] 2.1 `part-ii-01-classical-mechanics` (42 statements; 209 examples and 209 exercises to add; add a software
  unit).
- [ ] 2.2 `part-ii-01b-electromagnetism` (40 statements, already at ten; layout only: split the section over six
  definitions, add a software unit).
- [ ] 2.3 `part-ii-08b-special-relativity` (62 statements; 434 and 413 to add; split the section over six
  definitions; several runs).
- [ ] 2.4 `part-ii-02-thermodynamics-statistical-mechanics` (35 statements; 228 and 225 to add; several runs).
- [ ] 2.5 `part-ii-03-quantum-mechanics` (42 statements; 226 and 226 to add; several runs).
- [ ] 2.6 `part-ii-04-classical-field-theory` (26 statements; 167 and 160 to add; flatten the main-theme layout,
  add the closing `## Exercises`).
- [ ] 2.7 `part-ii-05-dirac-equation` (33 statements; 225 and 203 to add; several runs).
- [ ] 2.8 `part-ii-07-quantum-field-theory` (40 statements; 217 and 217 to add; several runs).
- [ ] 2.9 `part-ii-06-gauge-theories` (59 statements; 158 and 149 to add; flatten the main-theme layout, add the
  closing `## Exercises`).
- [ ] 2.10 `part-ii-08-renormalisation` (37 statements; 237 and 212 to add; several runs; software unit may use
  PyR@TE).
- [ ] 2.11 `part-ii-09-general-relativity` (27 statements; 118 and 117 to add).
- [ ] 2.12 `part-ii-10-supersymmetry-supergravity` (45 statements; 312 and 299 to add; flatten the main-theme
  layout, add the closing `## Exercises`; several runs).

## 3. Close

- [ ] 3.1 When all 12 chapters are listed, run `check_format.py --backlog` (nothing missing), and the full HTML and
  PDF renders of the tutorial.
