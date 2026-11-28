# Tasks

## 1. Boundaries (D2)

- [ ] 1.1 Write the ownership table into the coverage record (task 3.1): every topic that System Design and this
  tutorial both touch, with its owner and the link the other one gives. Verify: each System Design label it names
  resolves with `harvest.py`.
- [ ] 1.2 In the change `complexity-and-system-design-tutorials`, update the coverage rows of System Design chapters 11
  and 12 in `openspec/coverage/system-design.md`:
  - narrow 12 §5 to the operational view;
  - move technical debt and fitness functions out of 11 §7;
  - add links to this tutorial.

  Verify: `openspec validate complexity-and-system-design-tutorials --strict` passes, and neither row lists a topic
  that this tutorial owns.

## 2. Software (D3, D4)

- [ ] 2.1 Create `.venv-swe` (Python 3.12, pytest, hypothesis, networkx, simpy, numpy, matplotlib), write
  `fundamentals-of-software-engineering/requirements.lock` and add a one-line setup to `README.md`. Verify: the
  environment builds from the lock file.
- [ ] 2.2 Write `fundamentals-of-software-engineering/_software.yml` with the profile of D3. Verify on three sample
  blocks run with `check_content.py --run`, each printing deterministic output twice in a row:
  - one Git block in a temporary repository;
  - one loopback socket block;
  - one in-process pytest block.

  Also verify that a missing environment reports "not checked" for this tutorial only.
- [ ] 2.3 Add `fundamentals-of-software-engineering` to the `systems` group of `_filters/harvest.py`. Verify:
  `harvest.py` reports no problems.

## 3. Sources and coverage (D5, D6)

- [ ] 3.1 Write `openspec/coverage/fundamentals-of-software-engineering.md`:
  - the benchmark books of D5, with tables of contents read from the PDFs;
  - the section sources;
  - the mapping to the proposed chapters of D6;
  - the gaps, classified;
  - the ownership table of task 1.1.

  Verify: every benchmark chapter is mapped or classified, and every topic named in the chapter requirement is a
  chapter or a section, or is left out with a reason.
- [ ] 3.2 Check the gap sources of D5 against the Zotero library. Write `references-proposal.md` in this change, giving
  for each missing item its metadata, tags, collection and PDF source, and marking which items are metadata-only
  commercial books. Show it to the owner. Verify: every D5 gap is either found, with its key recorded, or listed in
  the proposal.
- [ ] 3.3 After approval, add the approved items to Zotero with PDFs through the desktop connector, with:
  - citation keys;
  - bib entries with `zotero` and `zoteropdf`;
  - `tutorial-reading-note` child notes.

  Then rebuild the semantic index incrementally. Verify: each new key resolves with `zotero_search_by_citation_key`.
- [ ] 3.4 The owner approves the chapter list. Record any rejected proposals with their reasons, and update the chapter
  requirement if the list differs from D6. Verify: the record states the approval date and the final ordered list.

## 4. Scaffolding (D1, D8)

- [ ] 4.1 Create `fundamentals-of-software-engineering/` from `openspec/templates/tutorial-index.qmd`, with:
  - `_metadata.yml` and `cover.svg`;
  - `index.qmd`, with categories, `order`, prerequisites and the software section;
  - `notation/index.qmd` and `glossary/index.qmd`;
  - one placeholder per approved chapter.

  Verify: `quarto render fundamentals-of-software-engineering` has no WARNING or ERROR, and the sidebar lists the
  notation page, the planned chapters and the glossary.
- [ ] 4.2 Add the sidebar to `_quarto.yml`, the card to the Computer science track of the root `index.qmd`, and
  Software Engineering to the broad topics in `_includes/topics.html`. Verify: the rendered home page's Computer science
  track lists System Design and then this tutorial, and the Software Engineering chip filters to it.
- [ ] 4.3 Create `_notation/software-engineering.qmd`, included by the notation page, with a conventions section.
  Verify: the notation page renders with the table.
- [ ] 4.4 Add the tutorial to the context of `openspec/config.yaml`. Verify: `openspec context --json` shows it.

## 5. Pilot (D7)

- [ ] 5.1 Write chapter 7, computer-networks, in full:
  - ten examples and ten exercises per statement, with Proof or Solution | Python tabs;
  - D2 and Python figures;
  - three closing exercises;
  - an annotated References section;
  - reading notes in this change's `reading-notes/fundamentals-of-software-engineering.md`;
  - the chapter added to `_raised.txt`.

  Verify, in order:
  1. `check_content.py fundamentals-of-software-engineering computer-networks --run --figures` reports 0 findings;
  2. `harvest.py` is clean;
  3. `quarto render` of the chapter has no WARNING or ERROR.
- [ ] 5.2 The owner reviews the pilot. Record the decisions as D7a in design.md before further chapters start. Verify:
  D7a exists with the review date.

## 6. Remaining chapters

- [ ] 6.1 Write the other approved chapters in reading order from chapter 1, one chapter per run, each passing the
  gates of 5.1. Push reading notes to Zotero as each chapter is raised, and flag every standard definition that has no
  source read. Verify: every approved chapter is in `_raised.txt`, and no placeholder remains.

## 7. Close

- [ ] 7.1 Run the checker on the whole tutorial, then `harvest.py`, then a full site render. Update the landing page,
  glossary and notation, and push the remaining reading notes. Verify: all three runs are clean, and the published
  site shows the tutorial in the Computer science track.

## Workflow follow-up

- Archive `complexity-and-system-design-tutorials` and `fundamentals-of-ai-tutorial` before this change, or merge
  the three `site-design` deltas when archiving the last (design, Migration Plan).
