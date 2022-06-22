# $TeX$ Makefile
#TeX

https://github.com/ponyatov/texheader/blob/master/Makefile.mk

## `Makefile`

```Makefile
# \ var
MODULE = $(notdir $(CURDIR))
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

# \ dir
TMP = $(CWD)/tmp

# \ tool
LATEX  = pdflatex -halt-on-error -output-directory=$(TMP)

# \ src
TEX = $(shell find doc -type f -regex .+\\.tex$$)

# doc
pdf: tmp/$(MODULE).pdf
tmp/$(MODULE).pdf: $(TEX) $(FIG)
	cd doc ; $(LATEX) $(MODULE) && $(LATEX) $(MODULE)

# \ rule
tmp/%.png: tex/fig/%.dot
	dot -Tpng -o $@ $<
tmp/build.tex: .git/index
	echo "\date{ver: $(BRANCH)-$(REL)-$(NOW)}" > $@

# \ install
install:
	sudo apt update
	sudo apt install -u `cat apt.txt apt.dev`
```

## `apt.dev`

```
texlive-latex-extra texlive-lang-cyrillic xpdf
pandoc
```
