# Proposal

## Why

Citations across the tutorials are uneven:

- The machine-learning tutorials together cite seven works, none of them textbooks, for about 300 statements.
- Some physics and mathematics chapters rest on two or three works: complex analysis has 2, linear algebra 3,
  group theory 4, and the Kaluza-Klein chapter on isometries 2.
- Nothing checks that a cited work covers the material it is cited for, that its PDF and reading note are in Zotero,
  or that every section has a source.

Now that every reference lives in Zotero, with readable PDFs and searchable content, the audit can be done
systematically. It is needed before chapters are extended with more examples and exercises.

## What Changes

- **Per-tutorial audit:** every section of every written chapter in the five tutorials is audited.
  - Which works it cites, and at which locators.
  - Whether each citation is supported by the cited pages, which are read from the Zotero PDF.
  - Whether the section's material is covered by a source at all.
- **Mechanical check:** every bibliography entry is checked.
  - The key is cited, and the entry links to its Zotero item.
  - The citation key is pinned in Better BibTeX.
  - The PDF is attached, or the reason it is missing is recorded.
  - A reading note exists, and an arXiv identifier, where there is one, resolves.
- **New citations:** sections without a supporting source get one, taken from the Zotero library first.
- **More references per chapter:** every written chapter cites at least eight distinct works, at least three of them
  textbooks (owner request, 2026-11-17). Today 24 of 40 written pages fall short. Each added citation must be supported
  by its pages, so the count is reached by citing sources where they support a section, not by padding.
- **New references:** a reference missing from the library is proposed to the owner with its tags. After approval it
  is added to Zotero with its PDF, to `references/references.bib`, and to the reading notes.
- **Disagreements:** where the text disagrees with its source, the audit reports it to the owner and does not
  silently change the text.
- **Stale spec text:** the reading-note and textbook-folder paths in the `bibliography` and `tutorial-content` specs
  are corrected. They still name `references/notes/`, `references/textbooks/` and `scripts/check_bib.py`, which no
  longer exist.

## Capabilities

### New Capabilities

- `reference-coverage`: every written section is supported by sources that were read and that cover it.
  - It requires a per-tutorial audit record.
  - It requires at least eight distinct works per chapter, three of them textbooks.
  - It requires owner approval for new references, and reporting rather than silent correction of disagreements.

### Modified Capabilities

- `bibliography`: "Textbooks are content sources, read before use". Reading notes are Zotero child notes tagged
  `tutorial-reading-note`, and the check is the audit, not `scripts/check_bib.py`.
- `tutorial-content`: "Textbooks supply content, examples and exercises". Textbooks are the Zotero library's
  Textbooks collection, and unused textbooks are recorded in the reading notes, not in
  `references/notes/README.md`.

## Impact

- **Chapters:** citations are added inside the written chapters (`<tutorial>/<slug>/index.qmd`), at the point of use.
  No statement, example or exercise is rewritten.
- **Bibliography:** `references/references.bib` gains entries, and entries no chapter cites are removed or cited.
- **Zotero (writes, after approval):**
  - new items with PDFs, through the local connector;
  - pinned citation keys;
  - reading notes, created or extended.
- **Audit records:** kept in this change folder (`openspec/changes/tutorials-reference-audit/audit/<tutorial>.md`),
  with the check script used to produce them.
- **Related change:** the placeholder chapters of `tutorials-missing-chapters` have no material and are not audited.
  Their planned sources are recorded there.
