# Brief for a chapter or section run (maths-physicists-content)

You raise one part of a chapter of **Fundamentals of Mathematics for Physicists**, a long-form Quarto tutorial at
`/Volumes/T7/Projects/Personal/tutorials`. Read `openspec/changes/maths-physicists-content/design.md` (decisions
M1-M11) and `openspec/templates/chapter.qmd` (the block layout) before writing anything. The run's own message names the
chapter file, the part to raise (one `##` section, or a new section to write), the sources, and anything specific.

## What "raised" means for every statement in your part

Every `def-`, `thm-`, `lem-`, `prp-` and `cor-` block is followed by:

1. **One Examples fold** (`:::: {.callout-note .examples-fold collapse="true" title="Examples"}`) holding **exactly
   ten** `exm-` blocks, graded:
   - the simplest instances first;
   - then the standard cases;
   - then cases from physics (S^1, S^2, SU(2), the harmonic oscillator, the hydrogen atom, Minkowski space, ...);
   - then limits and counterexamples.
2. **One Exercises fold** (`... .exercises-fold ... title="Exercises"`) holding **exactly ten** `exr-` blocks, graded
   from direct checks, to computations, to proofs, to problems that combine the statement with earlier ones.

**Existing blocks.** They count towards the ten. Keep them and their labels unless they are weaker than the
alternatives; a removed block's label must have no remaining `@` reference. Fix one if it is wrong. New blocks go
around them in the grading order. **Ten, never eleven.**

**Prose.** Every block is introduced by at least two sentences (20+ words) of running text: what it shows or asks, and
why it comes there. Two blocks never follow each other directly. A solution belongs to its exercise, so it may follow
it directly.

## Solutions: two tabs, always

Every exercise solution has exactly this form (design M3):

````markdown
::: {.callout-note .solution collapse="true" title="Solution"}
:::: {.panel-tabset .solution-tabs}
## Proof

<the complete theoretical solution, citing the statements it uses by cross-reference>

## SageMath

<one sentence on what the code computes>

```{.python .sage}
<Sage code that prints its results>
```

```{.text .sage-output}
<placeholder; filled by the checker>
```
::::
:::
````

- **Proof tab.** It is complete on its own and never refers to the SageMath tab for a step.
- **SageMath tab.** The code must run in a fresh SageMath 10.9 session (nothing carried over from other blocks), finish
  in a few seconds, and print every result it shows. Use exact rings (`QQ`, `ZZ`, `QQbar`, `SR`) wherever possible.
- **Proof exercises.** The SageMath tab starts "Check on <instance>:", builds a concrete instance (a specific matrix,
  space, group or function), and prints the compared values or a boolean. It never claims to prove the statement.
- **Existing solutions.** Every existing solution in your part is converted to this form. Its theoretical text goes in
  Proof (completed if it only gestured at the answer), and its old ```` ```python ```` code with its `*Output:*` block
  becomes the SageMath tab.
- **Recording the outputs.** The checker writes them:
  `python3 _filters/check_content.py fundamentals-of-mathematics-for-physicists <chapter> --update`
  Then read the diff of every output block it wrote. If an output shows the code is wrong, or contradicts the Proof
  tab, fix the code or the proof and run it again. A Sage block that fails is reported with its error; fix it.
- **Sage examples.** An `exm-` example that shows Sage code uses the same `{.python .sage}` and
  `{.text .sage-output}` pair.

## Sources (design M8)

- **What to use.** Use the textbooks that the Zotero reading notes map to the chapter. Search them with the Zotero MCP
  tools: `zotero_search_notes` for the chapter slug, then `zotero_search_by_citation_key`, `zotero_get_pdf_outline`
  and `zotero_read_pdf_pages` to read the pages.
- **Adapting.**
  - Adapt the problems and worked examples; do not copy them.
  - Restate them in the site notation (`_notation/*.qmd`, and the tutorial's `notation/index.qmd`), in the tutorial's
    voice.
  - Cite at the point of use: `[@key, Problem 3.12]`, `[@key, Example 2.4]`, `[@key, Sec. 5B]`.
- **Keys.** Every cited key must exist in `references/references.bib`.
- **Zotero is read-only for you.** Never call a Zotero tool that writes (add, update, create, delete, batch).
- **Reading notes.** Record what you used in `openspec/changes/maths-physicists-content/reading-notes/<chapter>.md`
  (append; one `## <bib key>` heading per source, then the sections, examples and problems used, and the labels of the
  blocks they became). The owner reviews these notes before anything goes into Zotero.
- **Missing sources.** If the mapped sources cannot supply enough good material for a statement, use well-known
  standard material and say so in your report. Do not invent citations.

## Notation, labels and references

- **Symbols.** Follow the notation pages exactly, whatever the source writes. If a new symbol is needed, report it;
  do not edit `_notation/`.
- **Bold.** Column vectors of $\mathbb R^n$ and $\mathbb C^n$ are bold ($\mathbf v$, $\mathbf e_i$, $\mathbf 0$),
  matrices are bold uppercase ($\mathbf A$, $\mathbf I_n$). Abstract vectors, linear maps and elements of spaces with no
  chosen basis stay plain ($v \in V$, $T$). Named matrices of physics keep their symbols ($\eta$, $\Lambda$,
  $\sigma_a$, $\gamma^\mu$, $g$). Convert the existing text of your part to this rule. Never change text inside Sage
  code or output blocks.
- **Labels.** Labels are descriptive, number-free slugs, unique across the tutorial: `exm-<topic>-<what>`,
  `exr-<topic>-<what>`. Check uniqueness with `grep -rn "{#<label>}" fundamentals-of-mathematics-for-physicists/`.
- **References.** Use earlier statements by cross-reference (`@def-...`, `@thm-...`). Never use a notion before it is
  defined in this chapter or an earlier chapter of the sidebar order. A statement or proof never uses a later result
  as a step; a remark, example or exercise may link forward for a familiar fact and say where it is proved (design
  M11). If a proof needs a special case of a later theorem, prove the case and name the later theorem.

## Figures

- **New figures.** A statement whose object can be drawn and that has no figure gets one in one of its examples.
  Drawable means a set in the plane, a curve, a surface, a vector field, a spectrum, a distribution, a group orbit.
- **Scripts.** Each figure has a script `<chapter>/figures/<name>.sage`. It starts with
  `load("../../_filters/figstyle.sage")` and saves with `save_figure`, `save_matplotlib`, `save_plotly` or
  `save_threejs`. See the four scripts in `linear-algebra/figures/` as models. Run it from the chapter folder:
  `sage figures/<name>.sage`.
- **Reading the figure.** Look at it: rasterise it with `rsvg-convert -w 500 -b white figures/<name>.svg -o /tmp/x.png`
  and read the PNG. No label may overlap a line or another label.
- **Captions.** At most two sentences, saying what the figure shows. Never name a script, file or tool.
- **Interactive versions.** For surfaces and vector fields, also save an interactive version and add
  `{{< interactive <name> <height> >}}`.

## Gates before you report

Run all of these from the repo root:

1. `python3 _filters/check_content.py fundamentals-of-mathematics-for-physicists <chapter> --sage`
   - It must report nothing for your part: counts, tabs, Sage outputs, captions.
   - Findings in parts of the chapter you were not asked to raise are expected; ignore them.
   - For the counts it treats the chapter as raised only when it is listed in `_raised.txt`. To check your part,
     temporarily add the chapter there, run the checker, and remove the line again. The orchestrator adds the chapter
     for good.
2. `.venv/bin/python _filters/harvest.py` must say "no problems".
3. `quarto render fundamentals-of-mathematics-for-physicists/<chapter>/index.qmd` must print no WARNING or ERROR.

## Do not

- commit, push or publish;
- edit files outside the chapter folder, except your reading-notes file;
- touch other sections of the chapter beyond what the run's message asks.

## Report

Write at most 300 words:

- the statements raised, with their example and exercise counts;
- the new statements, sections and figures;
- the sources used, with the number of blocks from each;
- any statement where ten good items were not possible (it then has three to nine), with the reason;
- anything you were unsure about.
