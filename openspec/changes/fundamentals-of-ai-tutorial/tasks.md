# Tasks

## 1. Boundaries (D2, D3)

- [ ] 1.1 Record the boundary with Fundamentals of Machine Learning in the coverage record (task 3.1). List the
  labels of `sec-sup-transformers`, `sec-sup-large-language-models`, `sec-sup-vision-language-models` and
  `sec-rl-imitation-llm` that Fundamentals of AI links to instead of restating. Verify: each listed label resolves
  with `harvest.py`.
- [ ] 1.2 Narrow System Design chapter 13 in the change `complexity-and-system-design-tutorials` to the composition
  view (D3). Edit three places:
  - the chapter-13 scenario of `specs/system-design-tutorial/spec.md`;
  - its row in `openspec/coverage/system-design.md`, so that §3 covers capacity, batching as a service-level knob and
    cost, with derivations linked to Fundamentals of AI;
  - the matching note in that change's tasks (6.2a).

  Verify: `openspec validate complexity-and-system-design-tutorials --strict` passes, and the scenario names
  Fundamentals of AI as the home of the internals.

## 2. Software (D4, D5)

- [ ] 2.1 Create `.venv-ai`: Python 3.12, `scikit-ai[hf]` at a pinned release, CPU `torch`, `transformers`, `tokenizers`, `safetensors`,
  `huggingface_hub`, `peft`, `diffusers`, `accelerate`, NumPy, matplotlib. Write `fundamentals-of-ai/requirements.lock`
  and a one-line setup command in `README.md`. Verify: the environment builds from the lock file, and `import skai, torch,
  transformers, peft, diffusers` succeeds; a `TextToTextGenerator` with a small pinned model answers offline.
- [ ] 2.2 Write `fundamentals-of-ai/_run.sh`. It sets `HF_HOME` (default `~/.cache/tutorials-hf`),
  `HF_HUB_OFFLINE=1`, `TOKENIZERS_PARALLELISM=false` and a fixed thread count, then runs `.venv-ai/bin/python`. Write
  `fundamentals-of-ai/_software.yml` with the Python profile of D4 and that runner. Verify: a sample chapter block run
  by `check_content.py --run` prints its output, and a missing environment reports "not checked" for this tutorial
  only.
- [ ] 2.3 Write `fundamentals-of-ai/models.lock` with the initial models of D5 (repo id, revision hash, licence,
  size) and `fundamentals-of-ai/prefetch_models.py`. Add `*.safetensors`, `*.bin` and `*.gguf` to `.gitignore`.
  Verify:
  - after prefetching, each model loads offline at its pinned revision in under 60 s;
  - `git ls-files` lists no weight file;
  - the report gives the total cache size.
- [x] 2.4a Open scikit-ai issues for the features the chapters need (D4a). Done 2026-11-27: #9-#19 on
  `georgedouzas/scikit-ai`.
- [ ] 2.4b Keep a "scikit-ai" table in the coverage record: per chapter, the components used and the open issues it
  waits on. When an issue is released, bump the pin and move the chapter's code to the feature. Verify: every gap
  that a chapter's report names has an issue number in the table.
- [ ] 2.4 Add `fundamentals-of-ai` to the `machine-learning` group of `_filters/harvest.py`. Verify: `harvest.py`
  reports no problems.

## 3. Sources and coverage (D6, D7)

- [ ] 3.1 Write `openspec/coverage/fundamentals-of-ai.md`:
  - the benchmark books of D6, with tables of contents read from the PDFs;
  - the primary papers, mapped as section sources;
  - the mapping to the proposed chapters of D7;
  - the gaps, classified as proposed chapters or section gaps.

  Verify: every benchmark chapter is mapped or classified, and every topic named in the `ai-tutorial` chapter
  requirement is a chapter or a section, or is left out with a stated reason.
- [ ] 3.2 Check the primary papers of D6 against the Zotero library. Write `references-proposal.md` in this change
  with each missing paper (metadata, tags, collection, PDF source) and show it to the owner. Verify: every D6 paper is
  either found in the library, with its key recorded, or listed in the proposal.
- [ ] 3.3 After approval, add the approved papers to Zotero with PDFs through the desktop connector, with citation
  keys, bib entries in `references/references.bib` (with `zotero` and `zoteropdf`), and `tutorial-reading-note` child
  notes. Rebuild the semantic index incrementally (`update-db --fulltext --no-openai-batch` on a checkpointed copy).
  Verify: each new key resolves with `zotero_search_by_citation_key`, and a topic search finds the new papers.
- [ ] 3.4 The owner approves the chapter list. Record any rejected proposals with their reasons, and update the
  `ai-tutorial` chapter requirement if the list differs from D7. Verify: the record states the approval date and the
  final ordered list.

## 4. Scaffolding (D1, D9)

- [ ] 4.1 Create `fundamentals-of-ai/` from `openspec/templates/tutorial-index.qmd`, with:
  - `_metadata.yml` and `cover.svg`;
  - `index.qmd`, with categories, `order: 6`, prerequisites linked, and a software section naming the pinned versions
    and models;
  - `notation/index.qmd` and `glossary/index.qmd`;
  - one placeholder per approved chapter.

  Verify: `quarto render fundamentals-of-ai` has no WARNING or ERROR, and the sidebar lists notation, the chapters as
  planned, and the glossary.
- [ ] 4.2 Add the sidebar to `_quarto.yml`. Set Complexity Science to `order: 7` and System Design to `order: 8`. Add
  the card to the Machine learning track of the root `index.qmd`. Add Artificial Intelligence to the broad topics in
  `_includes/topics.html`. Verify: on the rendered home page, the Machine learning track lists three tutorials in
  order, and the Artificial Intelligence chip filters to this tutorial and any other carrying the topic.
- [ ] 4.3 Create `_notation/ai.qmd`, included by the tutorial's notation page, with a conventions section. Verify: the
  notation page renders and lists the table.
- [ ] 4.4 Add `fundamentals-of-ai` to the tutorial list in the context of `openspec/config.yaml`. Verify: `openspec
  context --json` shows it.

## 5. Pilot (D8)

- [ ] 5.1 Write chapter 1, modern-architectures, in full:
  - ten examples and ten exercises per statement, with Proof | Python tabs;
  - figures from scripts;
  - three closing exercises;
  - an annotated References section;
  - reading notes in this change's `reading-notes/fundamentals-of-ai.md`;
  - the chapter added to `fundamentals-of-ai/_raised.txt`.

  Verify, in order:
  1. `check_content.py fundamentals-of-ai modern-architectures --run --figures` reports 0 findings;
  2. `harvest.py` is clean;
  3. `quarto render fundamentals-of-ai/modern-architectures/index.qmd` has no WARNING or ERROR.
- [ ] 5.2 The owner reviews the pilot. Record the decisions as D8a in design.md before further chapters start.
  Verify: D8a exists with the review date.

## 6. Remaining chapters

- [ ] 6.1 Write the remaining approved chapters in reading order, one chapter per run, each passing the gates of 5.1.
  Push reading notes to Zotero as each chapter is raised. Verify: every approved chapter is in `_raised.txt`, and no
  placeholder remains.

## 7. Close

- [ ] 7.1 Run the checker on the whole tutorial, then `harvest.py`, then a full site render. Update the landing page,
  glossary and notation for the written chapters, and push the remaining reading notes. Verify: all three are clean,
  and the published site shows the tutorial in the Machine learning track.

## Workflow follow-up

- Archive `complexity-and-system-design-tutorials` before this change, or merge the two `site-design` deltas when
  archiving the second (design, Migration Plan).
