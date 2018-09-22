SCSSC     := sassc
SCSS_PATH := scss/

SCSS_FILES := $(wildcard scss/*.scss)
SCSS_MAIN  := scss/main.scss

tacit.min.css: $(SCSS_FILES)
	$(SCSSC) -t compressed -I $(SCSS_PATH) $(SCSS_MAIN) $@

tacit.css: $(SCSS_FILES)
	$(SCSSC) -t expanded -I $(SCSS_PATH) $(SCSS_MAIN) $@

.PHONY: clean
clean:
	@rm -f tacit.min.css tacit.css
