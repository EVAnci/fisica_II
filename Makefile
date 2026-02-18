# Nombre del archivo principal sin extensión
MAIN = main

all:
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	biber main
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null

silent:
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex &> /dev/null

three_pass:
	lualatex $(MAIN).tex
	biber main
	lualatex $(MAIN).tex
	lualatex $(MAIN).tex

once_pass:
	lualatex $(MAIN).tex

latexmk:
	latexmk -pdf -silent -halt-on-error -interaction=nonstopmode $(MAIN).tex

clean:
	latexmk -c

clsbib:
	rm main.bbl

bib:
	lualatex -interaction=nonstopmode -halt-on-error -file-line-error -draftmode $(MAIN).tex &> /dev/null
	biber main

help:
	@echo "Opciones disponibles:"
	@echo "  make all           - Compila el documento usando lualatex silenciosamente (opción por defecto)"
	@echo "  make bib           - Genera las referencias para la bibliografía"
	@echo "  make silent        - Compila el documento en modo silencioso sin generar la bibliografía"
	@echo "  make three_pass    - Compila el documento (3 pasadas de lualatex, genera la bibliografía automáticamente)"
	@echo "  make once_pass     - Compila el documento (1 pasada de lualatex sin bibliografía, se recomienda solo para recompilar rápidamente y debugear)"
	@echo "  make clean         - Elimina archivos auxiliares de la compilación"
	@echo "  make latexmk       - Compila automáticamente usando latexmk en modo silencioso (no se genera la bibliografía)"
	@echo "  make clsbib        - Elimina el archivo main.bbl"
	@echo "  make help          - Muestra esta ayuda"
