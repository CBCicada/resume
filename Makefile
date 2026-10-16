RESUMES := resume_general resume_systems resume_security
PDFS := $(addsuffix .pdf,$(RESUMES))
AUX_EXTS := aux fdb_latexmk fls log out synctex.gz

.PHONY: all clean

# Build all variants with make, or one with make resume_systems.pdf.
all: $(PDFS)

$(PDFS): %.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $<
	pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f $(PDFS) $(foreach ext,$(AUX_EXTS),$(addsuffix .$(ext),$(RESUMES)))
