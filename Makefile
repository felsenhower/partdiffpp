.PHONY: default all partdiffpp clean beautify

default: all

all: partdiffpp

partdiffpp:
	$(MAKE) COMPILE_MODE=LEGACY -C pde++

clean:
	$(MAKE) -C pde++ clean

beautify:
	$(MAKE) -C pde++ beautify
