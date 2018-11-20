.PHONY: all clean

mkfilepath := $(abspath $(lastword $(MAKEFILE_LIST)))
dirpath := $(dir $(mkfilepath))

all: vedtaegter.pdf

%.pdf: %.tex
	@$(dirpath)latexrun $<

pdf: all

clean:
	rm -f *.pdf
