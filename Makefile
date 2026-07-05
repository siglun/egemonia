
.SUFFIXES: .pic .ms .pdf .ps .eps .chem .svg
.DEFAULT: .ms.pdf .ps.pdf .eps.pdf .chem.ms .svg.eps

default: essay.pdf

#	cd too-much-modality && $(MAKE)

URI = https://github.com/siglun/egemonia/essay.pdf
PAPER = -dpaper=a4 -P-pa4
OTHERS =  ./references.text ./tmac/dropcap.tmac \
	Makefile fitch-macros.pic  eqn-definitions.ms \
	parameters.ms back-matter.ms

SVENSKA =  -mrefspec

.ms.pdf:
	pdfroff -U -R  -sGtep   -m s  -m pdfmark \
	-mdecorations -m dropcap -M ./tmac  ${SVENSKA} \
	-k  ${PAPER} -Tps  parameters.ms $<  > $*.pdf
	pdftotext $*.pdf ; wc -w $*.txt ; rm  $*.txt

.chem.ms:
	soelim $< | chem  > $*.ms

.svg.eps:
	inkscape $< -o  $*.eps

# -m refspec  -m refspec

qr.eps:
	qrencode -l H -v 1 -s 3 -d300 -t EPS -o qr.eps $(URI)

clean:
	rm -f *~ *.eps

essay.pdf: essay.ms $(OTHERS)

# Remember
#
# inkscape World_line.svg -o  world_line.eps
# 
