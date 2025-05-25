# Nombre del archivo principal sin extensión
MAIN = main

all:
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	biber main
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null

silent:
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null

three_pass:
	pdflatex $(MAIN).tex
	biber main
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex

once_pass:
	pdflatex $(MAIN).tex

latexmk:
	latexmk -pdf -silent -halt-on-error -interaction=nonstopmode $(MAIN).tex

clean:
	latexmk -c

clsbib:
	rm main.bbl

bib:
	pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	biber main

help:
	@echo "Opciones disponibles:"
	@echo "  make all           - Compila el documento usando pdflatex silenciosamente (opción por defecto)"
	@echo "  make bib           - Genera las referencias para la bibliografía"
	@echo "  make silent        - Compila el documento en modo silencioso sin generar la bibliografía"
	@echo "  make three_pass    - Compila el documento (3 pasadas de pdflatex, genera la bibliografía automáticamente)"
	@echo "  make once_pass     - Compila el documento (1 pasada de pdflatex sin bibliografía, se recomienda solo para recompilar rápidamente y debugear)"
	@echo "  make clean         - Elimina archivos auxiliares de la compilación"
	@echo "  make latexmk       - Compila automáticamente usando latexmk en modo silencioso (no se genera la bibliografía)"
	@echo "  make clsbib        - Elimina el archivo main.bbl"
	@echo "  make help          - Muestra esta ayuda"