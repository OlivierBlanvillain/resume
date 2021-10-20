.ONESHELL:
.PHONY: FORCE
all: olivier-blanvillain-resume.pdf

%.pdf: %.tex FORCE
	xelatex --file-line-error -interaction=nonstopmode $<

clean: FORCE
	latexmk -C

watch: FORCE
	git ls-files | entr make
