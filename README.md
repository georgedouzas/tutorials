# Tutorials

Long-form tutorials, published as one Quarto website:

- Fundamentals of Mathematics for Physicists (`fundamentals-of-mathematics-for-physicists/`)
- Fundamentals of Theoretical Physics (`fundamentals-of-theoretical-physics/`)
- Kaluza-Klein Theories (`kaluza-klein-theories/`)
- Fundamentals of Machine Learning (`fundamentals-of-machine-learning/`)
- Fundamentals of Mathematics for Machine Learning (`fundamentals-of-mathematics-for-machine-learning/`)

A tutorial folder holds only its pages (`.qmd`), its cover and its figures. Everything shared is at the root:

- `_quarto.yml`: the site, the sidebars (one per tutorial, plus the home page's) and the settings of every page.
  Each tutorial folder has a `_metadata.yml` that selects its own sidebar.
- `theme.scss`: the styles: serif text, the colour tokens (`--site-*` CSS variables), and the statement, example and
  exercise blocks. `theme-dark.scss` sets the dark-mode colours; Quarto builds a light and a dark stylesheet from the two
  and adds a toggle to the navbar.
- `_includes/topics.html`: the topic chips that filter the tutorials on the home page.
- `references/references.bib`: the bibliography. Each entry's `zotero` field (and `zoteropdf` when it has a PDF) links
  it to the Zotero library.
- `_filters/`:
  - `pdf-links.lua`: links each citation to the item, or its PDF, in the Zotero web library; a page locator such as
    `[@duff1994, p. 7]` stays in the citation text. Pages print no bibliography; the filter runs citeproc itself, so
    `_quarto.yml` sets `citeproc: false`.
  - `cross-references.lua` and `cross-references.json`: turn a reference to a label on another page into a link.
    The index is split into a physics, a machine-learning and a systems group, and a page resolves labels in its own group.
    `harvest.py` rebuilds the index from the sources; run `.venv/bin/python _filters/harvest.py` after adding,
    removing or renaming a label.
  - `interactive.lua`: the `{{< interactive name >}}` shortcode, which embeds `figures/interactive/<name>.html`.

The specifications and planned changes are in `openspec/`.

## Build

The code cells run in the project's virtual environment. Create it once and install the requirements:

    uv venv .venv
    uv pip install --python .venv/bin/python -r requirements.txt

`_environment` sets `QUARTO_PYTHON=.venv/bin/python`, so Quarto uses this environment without activating it.

## Environments

The solutions and figures of Complexity Science and System Design are checked with their own pinned Python 3.12
environments (`check_content.py <tutorial> --run --figures`); the site build never imports them. Build each with one
command:

    uv venv --python 3.12 .venv-complexity && uv pip install --python .venv-complexity/bin/python -r complexity-science/requirements.lock
    uv venv --python 3.12 .venv-systems && uv pip install --python .venv-systems/bin/python -r system-design/requirements.lock

`.venv-complexity` holds scikit-complexity 0.9.0 and powerlaw (about 2.6 GB); `.venv-systems` holds SimPy, NumPy and
matplotlib. Diagrams need D2 v0.9.0 on the `PATH`. A tutorial whose environment is missing is reported as "not
checked", and the others are still checked.

The site uses `freeze: auto`: a full render reuses the stored results in `_freeze/` and runs code only when its source
changed, while rendering a single page always runs its code. Render one chapter or the whole site:

    quarto render fundamentals-of-theoretical-physics/classical-mechanics/index.qmd
    quarto render

## Deploy

The rendered site is published to Posit Connect Cloud with `quarto publish posit-connect-cloud`.
