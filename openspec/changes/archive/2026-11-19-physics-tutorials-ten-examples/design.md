# Design

## Context

Counts at the time of this change, from `scripts/check_format.py --backlog`, in reading order (the sidebar in
`_quarto.yml`):

| Chapter | Statements | Examples to add | Exercises to add | Layout |
|---|---|---|---|---|
| Classical mechanics (`part-ii-01`) | 42 | 209 | 209 | flat |
| Electromagnetism (`part-ii-01b`) | 40 | 0 | 0 | flat; one section over six definitions |
| Special relativity (`part-ii-08b`) | 62 | 434 | 413 | flat; one section over six definitions |
| Thermodynamics and statistical mechanics (`part-ii-02`) | 35 | 228 | 225 | flat |
| Quantum mechanics (`part-ii-03`) | 42 | 226 | 226 | flat |
| Classical field theory (`part-ii-04`) | 26 | 167 | 160 | main-theme |
| Dirac equation (`part-ii-05`) | 33 | 225 | 203 | flat |
| Quantum field theory (`part-ii-07`) | 40 | 217 | 217 | flat |
| Gauge theories (`part-ii-06`) | 59 | 158 | 149 | main-theme |
| Renormalisation (`part-ii-08`) | 37 | 237 | 212 | flat |
| General relativity (`part-ii-09`) | 27 | 118 | 117 | flat |
| Supersymmetry and supergravity (`part-ii-10`) | 45 | 312 | 299 | main-theme |
| **Total** | 488 | 2,531 | 2,430 | |

- **Layout column:**
  - **Flat** is the template's layout.
  - **Main-theme** is the older layout of design D27. Each `##` part ends with its own `### Exercises`, and the
    checkers count six definitions per nested part rather than per section.
  - "Over six definitions" is the raw count per `##` section. The checkers accept some of these as nested parts.
- **Cost reference.** Textbook-pass task 6 added 63 blocks for about 400k agent tokens, about 6k tokens per block.
  This change is therefore about 30M agent tokens.
- **Where the rules are enforced.**
  - `scripts/density.py` holds the minimum per statement: ten in a raised chapter or for a statement not in
    `scripts/statements_baseline.txt`, three otherwise.
  - `scripts/check_format.py` and `scripts/check_definitions.py` use that minimum and check the layout.
  - `density.py` still reads `tutorial/_raised.txt`, a path that no longer exists, so no chapter counts as raised.

## Goals / Non-Goals

**Goals:**
- Ten examples and ten exercises per statement in every chapter of Fundamentals of Theoretical Physics.
- Every chapter of the tutorial in the layout of `openspec/templates/chapter.qmd`, and its landing page in that of
  `openspec/templates/tutorial-index.qmd`.
- Work that can stop at any chapter, with the build green throughout.

**Non-Goals:**
- Mathematics for Physicists and Kaluza-Klein Theories. Each will get its own change later.
- Verification. It is postponed to the end of the project (the author's instruction). New blocks carry placeholder
  Verification boxes, and the tasks' checks are the format checkers and the draft render only.
- Changing the topics of chapters, or existing blocks except to fix errors or to move them in the new layout.

## Decisions

### X1. The minimum is ten and ten

Every statement block (`def`, `thm`, `prp`, `lem`, `cor`) has at least ten examples and at least ten exercises, each
exercise with a solution. Ten is a floor; central notions get more.

**Grading.**
- **Examples:** the simplest cases first, then standard cases, then cases tied to the tutorial's running physical
  systems (the harmonic oscillator, the hydrogen atom, the free scalar and Dirac fields, the `U(1)` and `SU(2)` gauge
  fields), then limits and counterexamples.
- **Exercises:** from direct checks, to computations, to derivations and problems that combine several notions.

### X2. A list of raised chapters

The file `fundamentals-of-theoretical-physics/_raised.txt` lists one chapter file per line, and `scripts/density.py`
reads it from the tutorial's root. The same path fix is made in the other two physics tutorials, which have no
`_raised.txt` and so keep their current behaviour.

- **Raised chapters:** each statement needs ten and ten, and the chapter must follow the template's layout (X3).
- **Other chapters:** the minimum stays three, and the main-theme layout is still accepted.
- **Statements added after this change:** they need ten and ten wherever they are. The checker recognises them by a
  label missing from `scripts/statements_baseline.txt`.
- **`--backlog`:** `check_format.py --backlog` prints, per chapter and per statement, how many examples and exercises
  are missing for ten.
- **Exceptions:** a line `<file> <label>` records a statement that keeps the minimum of three (see Risks).

A chapter is added to the list by the task that raises it, so the build stays green whenever the work stops.

### X3. Template layout for raised chapters

A raised chapter follows `openspec/templates/chapter.qmd`:

- **Headings:**
  - one `#` heading;
  - `##` sections of at most six definitions, with `###` units;
  - a closing `## Exercises` section with three integrative exercises, folded.
- **Main-theme chapters:**
  - Each nested part becomes one or more flat `##` sections, and the per-part `### Exercises` are folded into the
    statements' exercise runs or into the closing section.
  - Section identifiers stay number-free slugs.
  - Every existing cross-reference still resolves; identifiers of moved blocks do not change.
- **Software:**
  - Each chapter has at least one `### <Topic> in SageMath` unit, at the end of the section whose computation it
    automates.
  - The unit opens with an `exm-sage-<slug>` example run by `{{< sage smp-<slug> >}}`.
  - Libraries other than Sage (for example PyR@TE in Renormalisation) are listed in the landing page's software
    section and may get their own unit.
- **Blocks:**
  - statement box with a Verification box ("Pending");
  - collapsed Examples and Exercises folds;
  - collapsed solutions;
  - at least two sentences (20+ words) of prose before every block.

The checkers enforce the following for raised chapters only:
- six definitions per `##` section, with no nested-part exception;
- the closing `## Exercises` section;
- at least one `### … in SageMath` unit.

### X4. The landing page

`index.qmd` follows `openspec/templates/tutorial-index.qmd`:
- the intro;
- a flat `## Chapters` list in sidebar order;
- a `## Software for symbolic computation` section listing SageMath as the main library, and the others the chapters
  use (PyR@TE, Cadabra where used), each with what it is used for here;
- the closing glossary and registry line.

### X5. Order, one chapter per task

The chapters are raised in reading order: the sidebar order of `_quarto.yml`. Electromagnetism already has ten and
ten and only needs the layout.

Each task raises one chapter and is committed when its chapter is raised, then ticked.
- **Agents:** one agent works at a time, with no helpers.
- **Long chapters:** a chapter needing more than about 400 blocks is done in several agent runs, one `##` section
  each, resuming the same agent where possible. These are Special relativity, Thermodynamics, Quantum mechanics,
  Dirac equation, Quantum field theory, Renormalisation, and Supersymmetry and supergravity.
- **Brief:** the one used for physics-tutorials-textbook-pass, with ten in place of three, and the template as the
  model chapter.

### X6. Sources and content rules

**Sources.**
- **Mapped textbooks:** new blocks come first from the textbooks that the reading notes in `notes/` map to the
  chapter, under the consistency rule (T2b).
- **Problem books:**
  - classical mechanics: `kotkin2020exploring`;
  - electromagnetism: `macchi2023problems`, `pierrus2018solved`;
  - thermodynamics: `skacej2019solved`;
  - quantum mechanics: `galitski2013exploring`, `demilio2017problems`, `zettili2009quantum`;
  - quantum field theory: `gelis2021problems`.

  Their problems are restated in the chapter's notation and placed by difficulty in the exercise run. A problem that
  needs notions the chapter has not defined is not used.
- **Readable from the chapter:** every block must be readable from the chapter's own definitions and those of
  earlier chapters, cited by cross-reference.
- **Citations:** each source is cited at the point of use, `[@key, Problem n]`, and listed in the reading note.

**Content rules.**
- **Inline formulas:** they follow the PDF-safety rules that `check_format` enforces.
- **Sage:** plain Sage for figures and for about 40% of the new exercise solutions.
- **Verification boxes:** placeholders only.
- **Prose:** connective prose before every block. It may introduce a short run of related examples.

### X7. Reading flow

The ten examples of a statement sit in its collapsed Examples fold, and the ten exercises in its Exercises fold, so
the main line of the chapter does not get longer when the folds are closed. Within a fold, related examples may share
one introductory paragraph, so the fold does not read as a list.

## Risks / Trade-offs

- **Cost.**
  - **Risk:** about 30M agent tokens.
  - **Mitigation:** one task per chapter, in a fixed order, so the author can stop at any chapter.
- **Repetition.**
  - **Risk:** ten variations of the same computation.
  - **Mitigation:** the grading of X1 and the problem books give variety. Each run's report names the textbook
    sources used, so thin chapters show up.
- **Restructuring main-theme chapters.**
  - **Risk:** broken cross-references or lost exercises when nested parts are flattened.
  - **Mitigation:** identifiers are kept, every existing `exr-` block is kept, and the task checks the
    cross-references and the HTML render.
- **Size.**
  - **Risk:** chapters roughly triple in length.
  - **Mitigation:** the folds keep the reading line short.
- **Exceptions.**
  - **Risk:** some statements, such as a technical lemma, may not support ten good examples.
  - **Mitigation:** the task records each such statement in the chapter's reading-note audit and in the commit
    message. It gets as many as the material supports, never fewer than three, and is listed in `_raised.txt` as an
    exception (`<file> <label>`).
