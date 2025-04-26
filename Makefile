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

help:
	@echo "Opciones disponibles:"
	@echo "  make all       - Compila el documento (3 pasadas de pdflatex)"
	@echo "  make once      - Compila el documento (1 pasada de pdflatex)"
	@echo "  make clean     - Elimina archivos auxiliares"
	@echo "  make latexmk   - Compila automáticamente usando latexmk en modo silencioso"
	@echo "  make cleanmk   - Limpia archivos generados por latexmk"
	@echo "  make help      - Muestra esta ayuda"