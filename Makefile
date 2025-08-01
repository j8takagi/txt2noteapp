OSACOMPILE := osacompile
INSTALL := install
INSTALLDIR := ~/Library/Scripts
TARGET := txt2noteapp.scpt

all: $(TARGET)

install: $(TARGET)
	$(INSTALL) $< $(INSTALLDIR)/

%.scpt: %.applescript
	$(OSACOMPILE) -o $@ $<

distclean:
	$(RM) $(TARGET)
