PROJECT=dissertation
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX) 
	$(BIBTEX) $(PROJECT) 
	$(BUILDTEX)
	$(BUILDTEX)

clean:
	rm -f *.aux *.bbl *.blg *.log $(PROJECT).pdf 
