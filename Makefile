NAME := resume
TEXS := $(wildcard *.tex)

.PHONY: all clean

all: $(NAME).pdf

$(NAME).pdf: $(TEXS)
	pdflatex -interaction=nonstopmode -halt-on-error $(NAME).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(NAME).tex

clean:
	rm -f $(NAME).aux $(NAME).fdb_latexmk $(NAME).fls $(NAME).log
	rm -f $(NAME).out $(NAME).pdf $(NAME).synctex.gz
