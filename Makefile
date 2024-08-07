
COMPILER=sass
SCSSIN=./src
CSSOUT=./static/css

all: mini

dev: $(CSSOUT)/theme.css

mini: $(CSSOUT)/theme.min.css

$(CSSOUT)/theme.min.css: $(SCSSIN)/theme.scss
	$(COMPILER) --style compressed  $< > $@

$(CSSOUT)/theme.css: $(SCSSIN)/theme.scss
	$(COMPILER)  $< > $@
	
clean:
	rm -f static/css/*

.PHONY: clean all dev mini


