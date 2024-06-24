OUTPUT_DIR=build
SOURCES=$(wildcard *.tex)
pdf: 
	pdflatex --output-directory=./$(OUTPUT_DIR) $(SOURCES)

clean:
	rm -f $(OUTPUT_DIR)/*.aux $(OUTPUT_DIR)/*.log $(OUTPUT_DIR)/*.out $(OUTPUT_DIR)/*.pdf

show:
	 open $(OUTPUT_DIR)/*.pdf
.PHONY: all clean pdf

all: clean pdf show
