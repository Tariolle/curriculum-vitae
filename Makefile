MAIN = main
TEX  = $(MAIN).tex
PDF  = $(MAIN).pdf

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX)
	pdflatex $(TEX)
	pdflatex $(TEX)
	pdflatex $(TEX)

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc \
	       $(MAIN).lof $(MAIN).lot $(MAIN).bbl $(MAIN).blg \
	       $(MAIN).fls $(MAIN).fdb_latexmk $(MAIN).synctex.gz
