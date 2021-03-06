PREFIX ?= .

INSTALL = install
ANT = ant

.PHONY: build clean distclean install

build:
	$(ANT) opendap-olfs-experiments

clean distclean:
	$(ANT) clean

install: build
	$(INSTALL) -d $(PREFIX)/lib
	$(INSTALL) -m 0644 build/lib/opendap-olfs-experiments.jar $(PREFIX)/lib

