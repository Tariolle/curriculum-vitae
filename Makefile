PDFS = short.pdf full.pdf
LATEX = pdflatex -interaction=nonstopmode -halt-on-error -file-line-error

.PHONY: all short full clean

all: $(PDFS) main.pdf

short: short.pdf

full: full.pdf

short.pdf: short.tex cv.tex
	$(LATEX) short.tex
	$(LATEX) short.tex

full.pdf: full.tex cv.tex
	$(LATEX) full.tex
	$(LATEX) full.tex

# Keep the existing portfolio's download source compatible.
main.pdf: short.pdf
	cp short.pdf main.pdf

clean:
	rm -f $(foreach name,short full,$(addprefix $(name).,aux log out toc \
	       lof lot bbl blg fls fdb_latexmk synctex.gz))
