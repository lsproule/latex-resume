FILENAME=main.tex
OUTPUT_DIRECTORY=build

build:
	pdflatex -output-directory=$(OUTPUT_DIRECTORY) $(FILENAME)	



setup:
	mkdir -p $(OUTPUT_DIRECTORY)

show:
	xpdf -rv -remote file $(OUTPUT_DIRECTORY)/main.pdf &
watch:
	while true;do inotifywait -e modify $(FILENAME);make all;xpdf -remote file -reload;done


.PHONY: all setup build watch

all: setup build

