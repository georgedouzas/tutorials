# Tasks

## 1. Theme pair and colour tokens

- [x] 1.1 Turn the colours of `theme.scss` into `!default` SCSS tokens emitted as `--site-*` CSS variables (accent, three block colours, figure card), add `theme-dark.scss` with the dark values, and set the light/dark theme pair in `_quarto.yml`; verify a render produces both `bootstrap*.min.css` stylesheets and a navbar toggle
- [x] 1.2 Check the accent and block colours against the page background and block tint in both modes with a contrast script; verify every ratio is at least 4.5:1

## 2. Typography

- [x] 2.1 Set the serif body stack, sans UI elements, 1.65 line height, heading scale, KaTeX size and the grid widths (D1, D2); verify on a rendered chapter that paragraphs use the serif and the column is about 70 characters wide

## 3. Blocks

- [x] 3.1 Replace the block styles with the shared left-border, tint and small-caps label system for statements, Examples and Exercises folds, and subordinate solutions (D4); verify in the gauge theories chapter screenshot in both modes
- [x] 3.2 Update the legend in `kaluza-klein-theories/conventions/index.qmd` to describe the new styling; verify it names the red, green and violet colours and the bordered boxes

## 4. Navigation

- [x] 4.1 Turn on the right-hand TOC (depth 3, "On this page") and search, add one sidebar per tutorial plus the home sidebar, a `_metadata.yml` per tutorial folder selecting its sidebar, and the navbar Tutorials menu; verify a chapter's HTML has `#TOC`, lists only its tutorial in the sidebar, and the navbar has search
- [x] 4.2 Remove `_includes/tutorials-nav.html` and limit the topic chips of `_includes/topics.html` to the home page; verify the home page still filters its cards and chapter sidebars show no chips
- [x] 4.3 Make `_filters/harvest.py` visit each page once and run it; verify it prints "no problems" and the JSON is unchanged apart from ordering-free content
- [x] 4.4 Update `README.md` for the theme pair, the per-tutorial sidebars and the removed include; verify it matches the files

## 5. Landing pages, accents, figures and code

- [x] 5.1 Mark the chapter list of each tutorial landing page with `.chapter-list` and planned chapters with an "In preparation" badge, style them as cards, and update `openspec/templates/tutorial-index.qmd`; verify the theoretical physics landing page shows cards and three badges
- [x] 5.2 Replace the navbar pills, gradients and glows with restrained accent styles and give covers one shape (D7, D6); verify no `linear-gradient` or glow shadow remains in navbar, chip or card styles
- [x] 5.3 Style figures (centred, max width, sans captions, light card in dark mode) and code (quiet highlighting pair, subtle background); verify on a chapter with figures and code in both modes

## 6. Integration

- [x] 6.1 Render the whole site with `quarto render`; verify 0 warnings, no unresolved references, and the home page lists the five tutorials
- [x] 6.2 Check the gauge theories chapter HTML for the TOC, the per-tutorial sidebar, the dark stylesheet and the block classes, and take headless screenshots in light and dark mode; verify the screenshots look polished
- [x] 6.3 Run `openspec validate site-design --strict`; verify it passes

## Workflow follow-up

- Archive the change after the owner reviews the rendered site.
