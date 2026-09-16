# Build the recommendation PDF
LATEX = pdflatex
BIBTEX = bibtex
MAIN = main

.PHONY: all clean

all:
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	$(LATEX) -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf