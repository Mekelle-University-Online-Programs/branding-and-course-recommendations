# ============================================================
# MU MBA Course Recommendations — Makefile
# ============================================================

SHELL := /bin/bash
.DEFAULT_GOAL := help

LATEX     := pdflatex
LATEXFLAGS := -interaction=nonstopmode -halt-on-error
DOCS      := docs
BUILD     := docs/build
LATEX_DIR := $(DOCS)/latex
MD_FORM   := $(DOCS)/branding-form.md
DOCX_FORM := $(DOCS)/branding-form.docx

.PHONY: help all clean latex word contrast lint test build install-deps

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

all: latex word contrast test ## Build everything

install-deps: ## Install required tools (macOS)
	@command -v pdflatex >/dev/null || brew install --cask mactex-no-gui
	@command -v pandoc   >/dev/null || brew install pandoc
	@command -v python3  >/dev/null || brew install python@3.12
	@echo "Dependencies installed."

latex: $(BUILD) ## Build LaTeX PDFs
	@echo "==> Building LaTeX"
	@cd $(LATEX_DIR) && \
	  for f in *.tex; do \
	    [ -f "$$f" ] || continue; \
	    echo "    $$f"; \
	    $(LATEX) $(LATEXFLAGS) "$$f" >/dev/null 2>&1 || true; \
	    bibtex "$${f%.tex}" >/dev/null 2>&1 || true; \
	    $(LATEX) $(LATEXFLAGS) "$$f" >/dev/null; \
	    $(LATEX) $(LATEXFLAGS) "$$f" >/dev/null; \
	  done
	@cp $(LATEX_DIR)/*.pdf $(BUILD)/ 2>/dev/null || true
	@echo "==> PDFs in $(BUILD)/"

word: $(BUILD) ## Build Word form from Markdown
	@echo "==> Building Word form"
	@if [ -f "$(DOCS)/reference.docx" ]; then \
	  pandoc "$(MD_FORM)" -o "$(DOCX_FORM)" --reference-doc="$(DOCS)/reference.docx"; \
	else \
	  pandoc "$(MD_FORM)" -o "$(DOCX_FORM)"; \
	fi
	@echo "==> $(DOCX_FORM)"

contrast: ## Validate WCAG contrast
	@echo "==> Contrast check"
	@python3 scripts/check_contrast.py tests/fixtures/branding.sample.json

lint: ## Lint Markdown and YAML
	@echo "==> Lint"
	@if command -v markdownlint >/dev/null; then \
	  markdownlint "**/*.md" --ignore node_modules || true; \
	else \
	  echo "    markdownlint not installed (optional)"; \
	fi

test: ## Run Python tests
	@echo "==> Tests"
	@cd tests && python3 -m pytest -q || true

build: latex word ## Alias for latex + word

$(BUILD):
	@mkdir -p $(BUILD)

clean: ## Remove build artifacts
	@echo "==> Cleaning"
	@find . -type f \( \
	  -name '*.aux' -o -name '*.log' -o -name '*.out' \
	  -o -name '*.toc' -o -name '*.bbl' -o -name '*.blg' \
	  -o -name '*.fdb_latexmk' -o -name '*.fls' \
	  -o -name '*.synctex.gz' \
	  \) -delete
	@rm -rf $(BUILD)
	@find . -type d -name '__pycache__' -exec rm -rf {} + 2>/dev/null || true
	@echo "==> Done"