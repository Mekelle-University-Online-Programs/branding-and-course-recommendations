# MU MBA Course Recommendations

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Platform: Open edX Teak](https://img.shields.io/badge/Open%20edX-Teak-blue.svg)](https://docs.openedx.org/)
[![LaTeX](https://img.shields.io/badge/LaTeX-pdflatex-008080.svg)](https://www.latex-project.org/)
[![Pandoc](https://img.shields.io/badge/Pandoc-%E2%89%A53.0-orange.svg)](https://pandoc.org/)

Production, branding, and quality-assurance recommendations for the
14-course online MBA program at **Mekelle University**, running on
**Open edX Teak** under the **e-SHE / MoE / ASU** collaboration.

---

## Overview

This repository contains the analysis, recommendation, and approval
artifacts produced for the pilot course **MU+MBAD7112+DEV_01
(Project Management)** and designed to scale across all 14 MBA
courses.

The work aligns with two program documents:

- `Online-Course-Material-Development.pdf` — problem statement,
  nine-phase roadmap, RACI matrix, and Appendix B branding scope.
- `DIGITAL CONTENT QUALITY ASSURANCE RUBRIC TEMPLATE.pdf` — baseline
  QA rubric, expanded in this repository to 14 categories.

---

## Status

| Component | State |
|---|---|
| Course analysis (DEV_01) | Complete |
| Branding variables table | Draft — awaiting approval |
| Common CSS | Draft — awaiting approval |
| Harmonized formatting guidelines | Draft — awaiting approval |
| Enhanced QA rubric | Draft — awaiting approval |
| Branding variables form | Released — v1.1 |
| Findings video guide | Released — v1.0 |
| Cross-course rollout | Not started |

---

## Quick start

```bash
# Clone the repository
git clone git@github.com:<org>/mu-mba-course-recommendations.git
cd mu-mba-course-recommendations

# Build the LaTeX PDF
make latex

# Build the Word form from Markdown
make word

# Validate the CSS contrast
make contrast

# Build everything
make all