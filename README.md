# Curriculum vitae

Two versions share the content and layout in `cv.tex`:

- `short.pdf`, built from `short.tex`: one-page application CV, emphasizing research experience,
  publications, and selected open-source contributions.
- `full.pdf`, built from `full.tex`: detailed two-page CV, including the full publication
  titles, preparatory education, interests, and references.

Run `make` to build both with pdfLaTeX. Use `make short` or `make full`
to build one version, and `make clean` to remove intermediate LaTeX files.

`main.pdf` is a generated copy of `short.pdf` that preserves the existing portfolio
download integration. It is not a separate CV version. `make` and the publication
workflow refresh this compatibility copy after building the named versions.

The portfolio serves this short version at `/cv.pdf`, under its existing `CV` link.
The full version is retained here for selective use and is not distributed by the
portfolio. Both PDFs retain the original document title, `Florent Tariolle - CV`;
`short` and `full` distinguish the source files and build outputs only.
