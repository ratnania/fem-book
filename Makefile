.suffixes: .lhs .tex .bib .bbl .dvi .fig .eps .ps .gz .pdf

MAIN = main

all: 
	pdflatex ${MAIN} 
	makeindex ${MAIN}.idx -s StyleInd.ist
	biber ${MAIN}
	pdflatex ${MAIN}
	pdflatex ${MAIN}

clean:
	@rm -f *~ *.bak *.log *.toc *.aux */*.aux *.ilg \#*\# *.dvi 
	@rm -f *.ind *.idx *.bbl *.blg *.ptb *.pdf *.lof *.out *.lot *.dot *.bcf *.ptc *.run.xml 
