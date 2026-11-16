# Tutorials

Long-form tutorials, published as one Quarto website:

- Fundamentals of Mathematics for Physicists (`fundamentals-of-mathematics-for-physicists/`)
- Fundamentals of Theoretical Physics (`fundamentals-of-theoretical-physics/`)
- Kaluza-Klein Theories (`kaluza-klein-theories/`)
- Fundamentals of Machine Learning (`fundamentals-of-machine-learning/`)
- Fundamentals of Mathematics for Machine Learning (`fundamentals-of-mathematics-for-machine-learning/`)

A tutorial folder holds only its pages (`.qmd`), its cover and its figures. Everything shared is at the root:

- `_quarto.yml`: the site, the sidebar and the settings of every page.
- `theme.scss`: the styles, including the coloured statement, example and exercise blocks.
- `_includes/`: the topic chips and the tutorials tree.
- `references/references.bib`: the bibliography. Each entry's `zotero` field (and `zoteropdf` when it has a PDF) links
  it to the Zotero library.
- `_filters/`:
  - `pdf-links.lua`: links each citation to the item, or its PDF, in the Zotero web library; a page locator such as
    `[@duff1994, p. 7]` stays in the citation text. Pages print no bibliography; the filter runs citeproc itself, so
    `_quarto.yml` sets `citeproc: false`.
  - `cross-references.lua` and `cross-references.json`: turn a reference to a label on another page into a link.
    The index is split into a physics and a machine-learning group, and a page resolves labels in its own group.
  - `interactive.lua`: the `{{< interactive name >}}` shortcode, which embeds `figures/interactive/<name>.html`.

The specifications and planned changes are in `openspec/`.

## Build

The site uses `freeze: auto`, so code runs only when its source changes. Render one chapter or the whole site:

    quarto render fundamentals-of-theoretical-physics/part-ii-01-classical-mechanics.qmd
    quarto render

The Python requirements of the machine-learning code cells are in `requirements.txt`.

## Deploy

The rendered site is published to Posit Connect Cloud with `quarto publish posit-connect-cloud`.
