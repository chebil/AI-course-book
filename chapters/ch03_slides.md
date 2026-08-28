---
title: "Chapter 3 — Presentation Slides"
short_title: Slides (Offline)
downloads:
  - file: slides/ch03_multiagent_slides.pdf
    title: Chapter 3 Slides (PDF)
---

# Chapter 3 — Presentation Slides

:::{admonition} Offline Presentation
:class: tip
This is the **offline slide deck** for Chapter 3, generated in LaTeX (Beamer) using
the course theme. Click the preview to open the full slides in your browser, or use
the download button for offline use, printing, and lecturing.
:::

## View the slides

[![Chapter 3 — Multiagent Search: title slide preview](images/ch3/ch03_slides_preview.png)](slides/ch03_multiagent_slides.pdf)

:::{tip}
Click the preview above to open the **full slide deck** in a new browser tab.
:::

## Download

{download}`⬇ Download Chapter 3 Slides (PDF) <slides/ch03_multiagent_slides.pdf>`

You can also open the file directly:
[ch03_multiagent_slides.pdf](slides/ch03_multiagent_slides.pdf).

## About this deck

The slides cover:

- **Multiagent environments** — competitive, independent, cooperative; strategy vs. plan
- **AND-OR search trees** — OR/AND nodes, AO-search, more than two agents
- **Evaluation & depth-limited search** — heuristics for non-terminal states
- **Minimax** — MAX/MIN recursion with a worked example tree
- **Alpha-beta pruning & MCTS** — pruning bounds and the UCT simulation loop

:::{note}
The LaTeX source is available in the repository under `latex/ch03.tex` and shares the
common Beamer theme in `latex/theme.tex`. Rebuild with:

```bash
cd latex && pdflatex ch03.tex
```
:::
