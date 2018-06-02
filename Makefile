all: ps

ps:
	latex main
	bibtex main
	latex main
	latex main
	#dvips main -t letter -o main.ps
	#dvips main -Ppdf -G0 -t letter -o main-pdf.ps
	dvips main -Ppdf -G0 -o main-pdf.ps

pdf: ps
	ps2pdf -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dPDFSETTINGS=/prepress main-pdf.ps main.pdf
	rm -f *.dvi *.aux *.ps *.log *.blg *.bbl

clean:
	rm -f *.dvi *.aux *.ps *.log *.blg *.ps *.pdf
