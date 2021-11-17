# Prerequisites: GNU make, pandoc
#
# Usage:
# make (all) -- converts src/*.md into docs/*.html

SRCDIR := src
DESTDIR := docs

SRCS := $(wildcard $(SRCDIR)/*.md)
DOCS := $(SRCS:$(SRCDIR)/%.md=$(DESTDIR)/%.html)

CSS := css/minimal.css
TEMPLATE := templates/github.html
HL_STYLE := breezedark
IN_FMT := markdown
MATHJAX_URI := https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
OUT_FMT := html5

PANDOC_FLAGS := --template=$(TEMPLATE) \
				--toc \
				--mathjax=$(MATHJAX_URI) \
				-f $(IN_FMT) \
				-t $(OUT_FMT) \
				-c $(CSS) \
				--highlight-style=$(HL_STYLE)

.PHONY: all clean start end

all: start ${DOCS} end

start:
	@echo "Converting ..."

$(DESTDIR)/%.html: $(SRCDIR)/%.md
	@sed -r 's;(\[[^]]+\])\(([^.)]+)(\.md)?\);\1(\2.html);g' $< | pandoc $(PANDOC_FLAGS) | sed -r 's/file://g' > $@

end:
	@echo "All done ✓" 

clean:
	@echo "Cleaning $(DESTDIR)/*.html ..."
	@$(RM) $(DESTDIR)/*.html
