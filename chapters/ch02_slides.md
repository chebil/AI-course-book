---
title: "Chapter 2 — Presentation Slides"
short_title: Slides (Offline)
downloads:
  - file: slides/ch02_search_slides.pdf
    title: Chapter 2 Slides (PDF)
---

# Chapter 2 — Presentation Slides

:::{admonition} Offline Presentation
:class: tip
This is the **offline slide deck** for Chapter 2, generated in LaTeX (Beamer) using
the course theme. Click the preview to open the full slides in your browser, or use
the download button for offline use, printing, and lecturing.
:::

## View the slides

[![Chapter 2 — Searching State Spaces: title slide preview](images/ch2/ch02_slides_preview.png)](slides/ch02_search_slides.pdf)

:::{tip}
Click the preview above to open the **full slide deck** in a new browser tab.
:::

## Download

{download}`⬇ Download Chapter 2 Slides (PDF) <slides/ch02_search_slides.pdf>`

You can also open the file directly:
[ch02_search_slides.pdf](slides/ch02_search_slides.pdf).

## About this deck

The slides cover:

- **Search problems & state spaces** — graphs, search trees, classic examples
- **Uninformed search** — BFS, DFS, UCS, bidirectional search
- **Informed search** — heuristics, greedy best-first, and A\*
- **Local search** — hill climbing, simulated annealing, tabu search
- **Genetic algorithms** — evolutionary optimization

:::{note}
The LaTeX source is available in the repository under `latex/ch02.tex` and shares the
common Beamer theme in `latex/theme.tex`. Rebuild with:

```bash
cd latex && pdflatex ch02.tex
```
:::
