THESIS=thesis
BIB=bibliography.bib
PDFLATEX=pdflatex --shell-escape
AUXFILES=*.aux *.log *.out *.toc *.lot *.lof *.bcf *.blg *.run.xml \
         *.bbl *.idx *.ind *.ilg *.markdown.* *.acn *.acr *.alg *.glg *.glo \
         *.gls *.glsdefs *.ist
PARTS=
DATA=$(wildcard data/*)

.PHONY: all clean wipe

all: $(THESIS).pdf clean

$(THESIS).pdf: $(THESIS).tex $(BIB) $(PARTS) $(GRAPHS) $(DATA)
	$(PDFLATEX) -interaction=batchmode $< # The initial typesetting.
	biber $(basename $<).bcf
	makeglossaries $(THESIS)
	$(PDFLATEX) -interaction=batchmode $< # Update the index after the bibliography insertion.
	# texindy -I latex -C utf8 -L english $(basename $<).idx
	texfot $(PDFLATEX) $< # The final typesetting, now also with index.

clean:
	rm -f $(AUXFILES)

wipe: clean
	rm -f $(THESIS).pdf
