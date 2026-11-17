# Proposal

## Why

The five tutorials' chapter lists come from the drafts they were built from, not from an inventory of their subjects,
and nobody has checked them against the subject as a whole. Fundamentals of Mathematics for Machine Learning, for
example, has two chapters, one of them an appendix, and Fundamentals of Machine Learning has four, each covering a
whole field. The Zotero library already holds the textbooks that define each subject, and it is searchable by content. It is the
benchmark to measure each tutorial against before more chapters are written.

## What Changes

- **Coverage record:** for each of the five tutorials, a coverage record maps the tables of contents of the
  tutorial's benchmark textbooks in Zotero to its existing chapters and sections. It lists every subject topic
  that no chapter covers.
- **Proposed chapters:** each uncovered topic large enough to be a chapter, and in the tutorial's scope, becomes a
  proposed chapter. The record gives its place in the reading order, the existing chapters it depends on, and the
  Zotero sources that cover it. Topics small enough to be a section are recorded as section gaps and are not added
  in this change.
- **Approval:** the proposed chapters are shown to the owner, who approves them before anything is added.
- **Placeholder pages:** each approved chapter is added as a placeholder.
  - It is a `<tutorial>/<chapter-slug>/index.qmd` page with the chapter title and a line saying the chapter is
    in preparation.
  - It is listed in reading order on the tutorial's landing page `index.qmd` and in the sidebar.
  - No chapter content is written in this change.
- **BREAKING (spec):** the fixed chapter counts and lists in the `physics-tutorials` and `ml-tutorials` specs
  are replaced by the approved lists.

## Capabilities

### New Capabilities

- `chapter-coverage`: how a tutorial's chapter list is measured against its subject's reference textbooks.
  - It requires the coverage record per tutorial and approval before a chapter is added.
  - It requires placeholder pages for chapters that are planned but not yet written.

### Modified Capabilities

- `physics-tutorials`: "Complete chapters" no longer fixes 13, 12 and 8 chapters. Each tutorial publishes the
  chapters its landing page lists, including approved placeholders.
- `ml-tutorials`: "Chapters of Fundamentals of Machine Learning" and "Chapters of Fundamentals of Mathematics for
  Machine Learning" no longer fix four and two chapters. The current chapters stay, and approved chapters are added.

## Impact

- **Landing pages:** the five tutorial landing pages, `<tutorial>/index.qmd`.
- **Configuration:** the sidebar in `_quarto.yml`.
- **Pages:** new placeholder pages `<tutorial>/<slug>/index.qmd`.
- **Cross-references:** `_filters/cross-references.json`, rebuilt with `_filters/harvest.py` so that the new chapter
  ids exist.
- **Zotero:** read only. Tables of contents are read through the MCP (`zotero_get_pdf_outline`,
  `zotero_read_pdf_pages`, `zotero_semantic_search`). A missing reference found along the way is handled by
  `tutorials-reference-audit`, not here.
- **Planning record:** coverage records are kept in this change folder
  (`openspec/changes/tutorials-missing-chapters/coverage/<tutorial>.md`), not in the site.
- **Later work:** existing chapter content is unchanged. Writing the new chapters is a later change per tutorial.
