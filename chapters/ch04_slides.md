---
title: "Chapter 4 — Presentation Slides"
short_title: Slides (Offline)
downloads:
  - file: slides/ch04_propositional_slides.pdf
    title: Chapter 4 Slides (PDF)
---

# Chapter 4 — Presentation Slides

:::{admonition} Offline Presentation
:class: tip
This is the **offline slide deck** for Chapter 4, generated in LaTeX (Beamer) using
the course theme. Click the preview to open the full slides in your browser, or use
the download button for offline use, printing, and lecturing.
:::

## View the slides

[![Chapter 4 — Propositional Logic: title slide preview](images/ch4/ch04_slides_preview.png)](slides/ch04_propositional_slides.pdf)

:::{tip}
Click the preview above to open the **full slide deck** in a new browser tab.
:::

## Download

{download}`⬇ Download Chapter 4 Slides (PDF) <slides/ch04_propositional_slides.pdf>`

You can also open the file directly:
[ch04_propositional_slides.pdf](slides/ch04_propositional_slides.pdf).

## About this deck

The slides cover:

- **Foundations & syntax** — propositions, connectives, well-formed formulas
- **Semantics & truth tables** — models, equivalences, CNF conversion
- **Inference** — model checking, resolution refutation, and DPLL for SAT
- **Horn clauses & chaining** — forward vs. backward chaining
- **Method comparison** — soundness, completeness, and complexity

:::{note}
The LaTeX source is available in the repository under `latex/ch04.tex` and shares the
common Beamer theme in `latex/theme.tex`. Rebuild with:

```bash
cd latex && pdflatex ch04.tex
```
:::
