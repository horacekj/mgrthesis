AUXFILES=*.aux *.log *.nav *.out *.snm *.toc *.vrb
DATA=$(wildcard data/*)

all: all.pdf clean

all.pdf: defense.pdf oponent.pdf
	pdfunite defense.pdf oponent.pdf all.pdf

%.pdf: %.tex Makefile $(DATA)
	rubber --pdf -o $@ $<

clean:
	rm -f $(AUXFILES)

wipe: clean
	rm -f defense.pdf oponent.pdf all.pdf

.PHONY: all clean wipe
