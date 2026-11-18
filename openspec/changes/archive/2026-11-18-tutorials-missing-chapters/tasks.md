# Tasks

Each tutorial goes through the same five steps (design M1-M8), in this order: mathematics for physicists, theoretical
physics, Kaluza-Klein, mathematics for machine learning, machine learning. Each group ends with that tutorial's
placeholders rendered.

## 1. Fundamentals of Mathematics for Physicists

- [x] 1.1 Select three to six benchmark textbooks from Zotero (M1). Verify that each one is listed in
  `coverage/fundamentals-of-mathematics-for-physicists.md` with its citation key and a reason, and that its outline
  or contents pages were read.
- [x] 1.2 Map every benchmark chapter to the tutorial (M2, M3). Verify that every table-of-contents chapter has a row
  with a status, and that each covered row names a page and a `sec-` id that exist.
- [x] 1.3 Classify the uncovered rows as proposed chapters, section gaps or out of scope (M4, M5). Verify that each
  has a reason, and that each proposed chapter has a slug, title, position, dependencies and at least one Zotero
  source.
- [x] 1.4 Show the proposed chapters to the owner and record each decision with its reason (M7). Verify that the
  record has no proposal left undecided.
- [x] 1.5 Add the approved chapters as placeholders, on the landing page and in the sidebar (M8). Verify that
  `.venv/bin/python _filters/harvest.py` reports no problems, and that the landing page and each placeholder render
  without warnings.

## 2. Fundamentals of Theoretical Physics

- [x] 2.1 Select the benchmark textbooks (M1) and verify as in 1.1.
- [x] 2.2 Map every benchmark chapter (M2, M3) and verify as in 1.2.
- [x] 2.3 Classify the uncovered rows (M4, M5). Verify as in 1.3, and also verify that no proposal duplicates a
  chapter approved in group 1.
- [x] 2.4 Get the owner's decisions (M7) and verify as in 1.4.
- [x] 2.5 Add the placeholders (M8) and verify as in 1.5.

## 3. Kaluza-Klein Theories

- [x] 3.1 Select the benchmark reviews and monographs from Publications and Textbooks (M1) and verify as in 1.1.
- [x] 3.2 Map every benchmark chapter (M2, M3) and verify as in 1.2.
- [x] 3.3 Classify the uncovered rows (M4, M5). Verify as in 1.3, and also verify that no proposal duplicates a
  chapter of groups 1 and 2.
- [x] 3.4 Get the owner's decisions (M7) and verify as in 1.4.
- [x] 3.5 Add the placeholders (M8) and verify as in 1.5.

## 4. Fundamentals of Mathematics for Machine Learning

- [x] 4.1 Select the benchmark textbooks (M1) and verify as in 1.1.
- [x] 4.2 Map every benchmark chapter (M2, M3) and verify as in 1.2.
- [x] 4.3 Classify the uncovered rows (M4, M5) and verify as in 1.3.
- [x] 4.4 Get the owner's decisions (M7) and verify as in 1.4.
- [x] 4.5 Add the placeholders (M8) and verify as in 1.5.

## 5. Fundamentals of Machine Learning

- [x] 5.1 Select the benchmark textbooks (M1) and verify as in 1.1.
- [x] 5.2 Map every benchmark chapter (M2, M3) and verify as in 1.2.
- [x] 5.3 Classify the uncovered rows (M4, M5). Verify as in 1.3, and also verify that no proposal duplicates a
  chapter approved in group 4.
- [x] 5.4 Get the owner's decisions (M7) and verify as in 1.4.
- [x] 5.5 Add the placeholders (M8) and verify as in 1.5.

## 6. Whole site

- [x] 6.1 Render the whole site with `quarto render`. Verify that it finishes without warnings, that the main page
  still shows five tutorials, and that each landing page lists its chapters in the same order as the sidebar.

## Workflow follow-up

- Archive the change once every group is done. The coverage records move to the archive, where the chapter-writing
  changes read them.
