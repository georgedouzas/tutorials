# Tutorials

Long-form tutorials, published as one Quarto website:

- Fundamentals of Mathematics for Physicists (`fundamentals-of-mathematics-for-physicists/`)
- Fundamentals of Theoretical Physics (`fundamentals-of-theoretical-physics/`)
- Kaluza-Klein Theories (`kaluza-klein-theories/`)
- Fundamentals of Machine Learning (`fundamentals-of-machine-learning/`)
- Fundamentals of Mathematics for Machine Learning (`fundamentals-of-mathematics-for-machine-learning/`)

The specifications and planned changes are in `openspec/`.

## References

All tutorials share `references/`:

- `references.bib`: the bibliography. An entry's `file` field names its PDF, relative to `references/`.
- `papers/`, `textbooks/`: the PDFs, named after their titles. They are ignored by git and deployed with the site.
- `pdf-links.lua`: makes each citation link to its PDF; a page locator such as `[@duff1994, p. 7]` stays in the
  citation text. Chapters print no bibliography; the filter removes it after linking. The filter runs citeproc itself, so
  each tutorial's `_metadata.yml` sets `citeproc: false`.

## Build

The site uses `freeze: auto`, so code runs only when its source changes. Render one chapter or the whole site:

    quarto render fundamentals-of-theoretical-physics/part-ii-01-classical-mechanics.qmd
    quarto render

Cross-tutorial references are resolved from each post's `cross-references.json`. After adding labels, rebuild the index
with a full render, `python3 fundamentals-of-mathematics-for-physicists/scripts/harvest.py _site .`, and a second
full render. The Python requirements are in `requirements.txt`.

## Deploy

The rendered site is published to Posit Connect Cloud with `quarto publish posit-connect-cloud`.
