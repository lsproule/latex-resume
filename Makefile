FILENAME=main.tex
OUTPUT_DIRECTORY=build
JOBNAME=lucas

build: setup
	pdflatex -output-directory=$(OUTPUT_DIRECTORY) -jobname=$(JOBNAME) $(FILENAME)
	pdflatex -output-directory=$(OUTPUT_DIRECTORY) -jobname=$(JOBNAME) $(FILENAME)

setup:
	mkdir -p $(OUTPUT_DIRECTORY)

show:
	xpdf -rv -remote file $(OUTPUT_DIRECTORY)/$(JOBNAME).pdf &

watch:
	while true; do inotifywait -e modify $(FILENAME); make build; xpdf -remote file -reload; done

clean:
	rm -f $(OUTPUT_DIRECTORY)/*.aux $(OUTPUT_DIRECTORY)/*.log $(OUTPUT_DIRECTORY)/*.out

.PHONY: all setup build show watch clean

all: build
