# Tutorials

Long-form tutorials, published as one Quarto website:

- Fundamentals of Mathematics for Physicists (`posts/fundamentals-of-mathematics-for-physicists/`)
- Fundamentals of Theoretical Physics (`posts/fundamentals-of-theoretical-physics/`)
- Kaluza-Klein Theories (`posts/kaluza-klein-theories/`)
- Fundamentals of Machine Learning (`posts/fundamentals-of-machine-learning/`)
- Fundamentals of Mathematics for Machine Learning (`posts/fundamentals-of-mathematics-for-machine-learning/`)

The specifications and planned changes are in `openspec/`.

## Build

The site uses `freeze: auto`, so code runs only when its source changes. Render one chapter or the whole site:

    quarto render posts/fundamentals-of-theoretical-physics/part-ii-01-classical-mechanics.qmd
    quarto render

Cross-tutorial references are resolved from each post's `cross-references.json`. After adding labels, rebuild the index
with a full render, `python3 posts/fundamentals-of-mathematics-for-physicists/scripts/harvest.py _site .`, and a second
full render. The Python requirements are in `requirements.txt`.

## Deploy

The rendered site is published to Posit Connect Cloud with `quarto publish posit-connect-cloud`.
