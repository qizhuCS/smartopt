BASE = sn-article
TEX = ${BASE}.tex
DVI = ${BASE}.dvi
PS = ${BASE}.ps
PDF = ${BASE}.pdf

LOG = ${BASE}.log
AUX = ${BASE}.aux

.PHONY: all clean view

all:
	pdflatex ${BASE}
	bibtex ${BASE}
	bibtex ${BASE}
	pdflatex ${BASE}
	pdflatex ${BASE}

#all: ${PDF} 

#${PDF}: ${PS}
#	ps2pdf $<

#${PS}: ${DVI}
#	dvips $<

#${DVI}: ${TEX}
#	pdflatex $<

clean:
	rm -f *.dvi *.aux *.log *.bbl ${PDF} *.blg *.out
