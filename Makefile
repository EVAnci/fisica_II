# Nombre del archivo principal sin extensión
MAIN = main

all:
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

once:
	pdflatex $(MAIN).tex

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot *.fdb_latexmk *.fls *.synctex.gz
