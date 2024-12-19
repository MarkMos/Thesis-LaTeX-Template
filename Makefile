AUX = $(shell find . -name '*.aux*')
DPTH = $(shell find . -name '*.dpth')
LOG = $(shell find . -name '*.log')
XML = $(shell find . -name '*.xml')

FRONT = ./frontmatter
MAIN = ./mainmatter
APP = ./appendix
FIGS = ./figures
TIKZ = ./tikz2pdf

all: main.pdf


main.pdf: main.tex references.bib $(FIGS)/* $(FRONT)/* $(MAIN)/* 
	lualatex -shell-escape $<
	biber main
	lualatex $<
	lualatex $<

clean:
	$(RM) $(AUX) $(DPTH) $(LOG) $(XML) *.bbl *.blg *.bcf *.out *.synctex.gz *.toc *.ilg *.idx *.ind *.lot *.lof main.pdf mainBook.pdf

remake:
	$(RM) $(TIKZ)/* $(AUX) $(DPTH) $(LOG) $(XML) *.bbl *.blg *.bcf *.out *.synctex.gz *.toc *.ilg *.idx *.ind *.md5 *.lot *.lof main.pdf
