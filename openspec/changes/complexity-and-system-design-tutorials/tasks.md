# Tasks

## 1. Software profiles and tooling (C3, C4, C5)

- [x] 1.1 Generalise `_filters/check_content.py` to read `<tutorial>/_software.yml` (tab label, fences, runner,
  figure kinds, illustrative class). Accept "Proof" or "Solution" as the first tab. Keep SageMath as the default and
  `--sage` as an alias of `--run`. Verify: the checker reports exactly the same findings as before on every raised
  mathematics chapter.
- [x] 1.2 Add `_filters/figstyle.py`, ported from `_filters/figstyle.sage` (palette, SVG, Plotly interactive). Add D2
  rendering to `--figures`: `figures/<name>.d2` produces light and dark SVGs with site themes and a pinned D2 version.
  Verify: one sample Python figure and one sample D2 diagram regenerate, and both read well in light and dark mode.
  Done 2026-11-22: one light SVG per diagram (`_filters/d2-theme.d2`, imported by each source), shown on the
  site's light figure card in dark mode like every other figure; D2's `--dark-theme` was not used, because its
  `prefers-color-scheme` query follows the OS rather than the site's toggle.
- [x] 1.3 Create `.venv-complexity` (Python 3.12, `scikit-complexity==0.9.0`, powerlaw) and `.venv-systems` (Python
  3.12, SimPy, NumPy, matplotlib). Each gets a pinned `requirements.lock` in its tutorial folder and a one-line setup
  command in `README.md`. Verify: both build on this machine, and a missing environment makes the checker report "not
  checked" for that tutorial only.
- [x] 1.4 Add a "systems" label group to `_filters/harvest.py`. Verify: `harvest.py` reports no problems.

## 2. Sources (C7)

- [x] 2.1 Show `references-proposal.md` to the owner. Approved 2026-11-22: all 20 items, the optional commercial
  books as metadata-only records with a recorded reason, and the Xu vol. 1 fix.
- [x] 2.2 Add the approved items to Zotero with PDFs through the desktop connector, set their citation keys, add bib
  entries with `zotero = {KEY}`, and fix `UBAGKN6G`. Verify: each new key resolves with
  `zotero_search_by_citation_key`, and each PDF opens.
  Added 2026-11-22 (owner-approved with the chapter list, task 3.3): Brunton, Proctor & Kutz 2016 (SINDy), Zotero
  `XEVET4UW`, citation key `brunton2016discovering`, PDF `NSQL6E99` (the authors' arXiv version 1509.03580v1) through
  the desktop connector into Publications, tags Complexity Science and Machine Learning, bib entry with
  `zotero`/`zoteropdf`, and a `tutorial-reading-note` child note. The key resolves. Thurner's record `233Q4D2M` now
  lists Thurner, Hanel, Klimek.
  Added 2026-11-27 for System Design (owner-approved with the chapter list, task 3.3), through the desktop connector,
  tags Computer Science plus existing subfield tags, each with its citation key, a bib entry and a
  `tutorial-reading-note` child note: `zukerman2013introduction` (`7EYVLVB5`, Textbooks, PDF `4BU53CJJ`),
  `fischer1985impossibility` (`42SA3BV8`, PDF `X5XLVUIF`), `mattern1988virtual` (`45CZ9XKZ`, PDF `P884B9GR`),
  `karger1997consistent` (`ZUEJZYGK`, PDF `CA685T3H`), `bloom1970space` (`A7ZGRBZJ`, metadata only: the ACM
  open-access PDF refuses automated download and there is no author copy), `broder2004network` (`YCR6IT32`, PDF
  `E9BBSTID`), `cormode2005improved` (`BQN95LQ6`, PDF `E8D7HJ5A`) and `dean2013tail` (`LKLVUIML`, PDF `48WKQDCF`),
  all in Publications except Zukerman. Fidge 1988 was not added (no legal free copy reachable). The keys resolve.
- [x] 2.3 Rebuild the semantic index incrementally for the new items. Verify: a topic search finds them.
  2026-11-22: re-run for Brunton-Proctor-Kutz 2016 (`update-db --fulltext`): 992 items, the new paper indexed with 59
  full-text chunks. The indexer reads `zotero.sqlite` without its write-ahead log, so a just-added item is missed until
  Zotero checkpoints; the run used a checkpointed copy (`--db-path`). The running MCP server keeps its old index
  handle, so topic searches find the paper after the server restarts.
  2026-11-27: re-run for the eight System Design items (`update-db --fulltext --no-openai-batch` on a checkpointed
  copy, no rebuild): 1001 items, 9 added (the eight items and one other new library item), 0 errors. Chunks:
  Zukerman 7 (a book, so metadata and table of contents only), FLP 25, Mattern 45, Karger 57, Bloom 1 (metadata),
  Broder-Mitzenmacher 53, Cormode-Muthukrishnan 45, Dean-Barroso 30. `update-db --db-path` saves that path into
  `~/.config/zotero-mcp/config.json`; it was reset to `/Volumes/T7/Zotero/zotero.sqlite` afterwards.

## 3. Coverage records and chapter lists (C6)

- [x] 3.1 Complexity Science: write `openspec/coverage/complexity-science.md`, with the benchmarks, tables of contents
  read from the PDFs, the mapping to the proposed chapters, and the gaps classified as proposed chapters or section
  gaps. Verify: every benchmark chapter is mapped or classified.
- [x] 3.2 System Design: write `openspec/coverage/system-design.md` the same way, including the classic papers as
  section sources. Verify as in 3.1.
  Done 2026-11-27: benchmarks Xu vol. 1, Tan, Sinha-Chopra and Liu (TOCs from the PDFs); van Steen-Tanenbaum and the
  SRE book listed as metadata only; the four architecture books and the 13 classic papers mapped as section sources.
  Every benchmark chapter is mapped or classified. Proposed list of 14 chapters (two new chapters, two splits), awaiting
  owner approval (task 3.3). Source gaps recorded, chiefly queueing theory.
- [x] 3.3 The owner approves the two chapter lists. Record rejected proposals with their reasons, and update the
  chapter-list requirements in this change if the lists differ from the proposal.
  - [x] Complexity Science: approved 2026-11-22, all 17 chapters in the coverage record's order and slugs, none
    rejected; recorded in `openspec/coverage/complexity-science.md`, with the decision that physics results are linked
    to the physics tutorial, not restated. The chapter-list requirement in
    `specs/complexity-science-tutorial/spec.md` now names the 17 chapters.
  - [x] System Design: approved 2026-11-27, all 14 chapters in the coverage record's order and slugs, none rejected;
    recorded in `openspec/coverage/system-design.md`, with the source-gap items approved and added (task 2.2). The
    chapter-list requirement in `specs/system-design-tutorial/spec.md` now names the 14 chapters in a scenario.

## 4. Scaffolding (C1, C9, C10)

- [x] 4.1 Create `complexity-science/` and `system-design/` from `openspec/templates/tutorial-index.qmd`, each with:
  - `_metadata.yml`;
  - `cover.svg`;
  - `index.qmd`, with categories, `order`, and a software section naming the pinned versions;
  - `notation/index.qmd`;
  - `glossary/index.qmd`;
  - `_software.yml`;
  - `_raised.txt`.

  Verify: both landing pages render.
  - [x] Complexity Science (2026-11-22): all seven files; categories, `order: 6`, prerequisites, and a software section
    with scikit-complexity 0.9.0 and the setup command. The landing page renders without warnings.
  - [x] System Design (2026-11-27): all seven files; categories (Computer Science plus subfields), `order: 7`,
    prerequisites (maths probability, sets-relations-topology), and a software section with SimPy 4.1.2, `sqlite3`,
    NumPy, matplotlib, D2 v0.9.0 and the `.venv-systems` setup command. The landing page renders without warnings.
- [x] 4.2 Add placeholder pages for every approved chapter ("in preparation", with sources and the coverage record in
  a comment). Add both sidebars to `_quarto.yml` with "planned" marks. Verify: each sidebar lists the notation page,
  the chapters in order and the glossary.
  - [x] Complexity Science (2026-11-22): 17 placeholders and the sidebar (notation, 17 planned chapters, glossary).
  - [x] System Design (2026-11-27): 14 placeholders and the sidebar (notation, 14 planned chapters, glossary).
- [x] 4.3 Add the "Complexity science" and "Computer science" tracks and their listings to the root `index.qmd`. Add Complexity Science and
  Computer Science to the broad topics in `_includes/topics.html`. Verify: the home page shows four tracks, and the
  site-design scenarios hold, including the "2 of 7 tutorials" count.
  - [x] Complexity Science (2026-11-22): track and listing after Machine learning; Complexity Science and Computer
    Science added to the broad topics. The "x of N tutorials" count is computed from the cards, so it needed no edit
    (it reads "of 6" until System Design exists).
  - [x] Computer science track and System Design listing (2026-11-27), after Complexity science; Computer Science was
    already a broad topic. The count now reads "of 7".
- [x] 4.4 Add `_notation/complex-systems.qmd` and `_notation/systems.qmd`. List symbol clashes for the owner (λ,
  ρ, N), and record the decisions. Verify: both notation pages render the shared and new tables.
  - [x] Complexity Science (2026-11-22): `_notation/complex-systems.qmd`, included by
    `complexity-science/notation/index.qmd`; the clashes are listed in design C9. Decided by the owner on 2026-11-22:
    keep the field's standard symbols, list each clash with its meaning in "Conventions specific to this tutorial" on
    the notation page, and use a subscript where two meanings meet in one chapter (recorded in design C9).
  - [x] System Design (2026-11-27): `_notation/systems.qmd`, included by `system-design/notation/index.qmd` with the
    sets-logic and probability tables; the clashes are listed in its "Conventions specific to this tutorial" section
    and in design C9, following the owner's Complexity Science decision. The one clash inside the table ($W$ as mean
    time in the system and as write quorum) is resolved by $q_R$, $q_W$ where both meet.
- [x] 4.5 Add both tutorials to the context list in `openspec/config.yaml`.
  - [x] complexity-science added (2026-11-22); system-design listed as planned.
  - [x] "planned" mark dropped for system-design (2026-11-27).

## 5. Pilot chapters (C2, C8)

- [x] 5.1 Write the Complexity Science pilot, "Complex systems and emergence", from `openspec/templates/chapter.qmd`:
  ten and ten per statement, two-tab solutions run with `.venv-complexity`, scripted figures, three closing exercises,
  References. Verify: checker `--run --figures` reports 0 findings, harvest is clean, the render is clean.
  Done 2026-11-22 (Complexity Science part): four sections, ten statements (`def-interacting-system`,
  `def-complex-system`, `def-coarse-graining`, `prp-additive-fluctuations`, `def-emergent-property`,
  `def-order-parameter`, `def-minimal-model`, `prp-mean-field-majority`, `prp-logistic-period-doubling`,
  `def-lyapunov-exponent`), each with ten examples and ten exercises, three closing exercises, a References section,
  four scripted figures (one interactive), eight cited works (seven tagged `textbook`); reading notes in
  `reading-notes/complexity-science.md`; added to `_raised.txt`. Gates passed: checker, harvest, render.
- [x] 5.2 Write the System Design pilot, "Estimation and the design process", in the same way, with D2 diagrams and
  runnable Python estimates. Verify as in 5.1.
  Done 2026-11-27 (System Design part): six sections (§6 cost is the recorded section gap), ten statements
  (`def-requirements-specification`, `def-design-process`, `def-architectural-characteristic`, `prp-latency-budget`,
  `def-load-estimate`, `prp-estimate-error`, `def-availability`, `prp-series-parallel-availability`, `prp-fan-out-tail`,
  `def-total-cost-of-ownership`), each with ten examples and ten exercises, three closing exercises, a References section,
  five figures (three D2 diagrams, one of them the solution of a diagram exercise with its source in the tab, and two
  Python plots), eight cited works (six books tagged `textbook`, bib entries added for the six with their Zotero keys);
  runs in `.venv-systems` (NumPy, `sqlite3`, SimPy), one illustrative block; notation symbols added to
  `_notation/systems.qmd` with their clashes in the conventions section; glossary entries; reading notes in
  `reading-notes/system-design.md`; added to `_raised.txt`, "planned" badge removed. Fan-out amplification, mapped to
  performance-and-queueing §1 by the coverage record, is proved here (§5) and should be recalled there. Gates passed:
  checker `--run --figures`, harvest, render.
- [x] 5.3 The owner reviews both pilots. Fold the decisions into design.md and the template notes before the
  remaining chapters start.
  - [x] Complexity Science: pilot approved as written (2026-11-22): "complex system" in the strict co-evolution
    sense with the wider usage flagged in prose; a short annotated References section with locators closes every
    chapter.
  - [x] System Design: pilot approved as written (2026-11-27, "go with system design"); chapters 2-14 start.

## 6. Remaining chapters (C2, C8)

- [ ] 6.1 Write the remaining Complexity Science chapters in reading order, one section per run, each section passing
  the gates of 5.1. Write reading notes to Zotero as each chapter is raised. Verify: every approved chapter is
  written, and `complexity-science` is in `_raised.txt`.
- [ ] 6.2 Write the remaining System Design chapters the same way. Verify as in 6.1.

## 7. Close

- [ ] 7.1 Run the checker on all tutorials, `harvest.py`, and a full site render with no warnings. Push the remaining
  reading notes to Zotero. Verify: everything is clean, and the published site shows both tutorials once the owner
  asks for publication.
