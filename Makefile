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

silent:
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null

latexmk:
	latexmk -pdf -silent -halt-on-error -interaction=nonstopmode $(MAIN).tex

cleanmk:
	latexmk -c