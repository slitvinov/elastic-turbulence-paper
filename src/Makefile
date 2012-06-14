
main=elt
${main}.pdf: ${main}.tex ${main}.bib
	/usr/bin/latex  ${main}.tex
	/usr/bin/bibtex  ${main}
	/usr/bin/latex  ${main}.tex
	/usr/bin/latex  ${main}.tex
	/usr/bin/dvipdf  ${main}.dvi

.PHONY: clean
clean:
	-rm \
	${main}.aux  ${main}.blg  ${main}.log \
	${main}.bbl  ${main}.pdf  ${main}.dvi  
