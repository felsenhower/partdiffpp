.PHONY: default all partdiff partdiffpp clean test testout testmem beautify

default: all

all: clean test

partdiff:
	$(MAKE) -C pde

partdiffpp:
	$(MAKE) COMPILE_MODE=LEGACY -C pde++

clean:
	$(MAKE) -C pde clean
	$(MAKE) -C pde++ clean

test: testout testmem

testout: partdiff partdiffpp
	$(MAKE) -C pde testout >/dev/null
	$(MAKE) -C pde++ testout >/dev/null
	# Check help
	bash -c 'diff <(pde/partdiff -h) <(pde++/partdiff -h | sed "s/pde++/pde/g")'
	# The following line should cause memory allocation to fail and is there to check the correctness of the resulting error message
	# If you have 100 GB of RAM, you're going to have a bad time :)
	bash -c 'diff <(pde/partdiff 1 2 10240 1 2 1 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 10240 1 2 1  | grep -v Berechnungszeit)'
	# Check batch mode
	bash -c 'diff <(pde/partdiff 1 2 0 2 2 85 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 2 2 85  | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 2 1 1e-4 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 2 1 1e-4 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 1 2 82 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 1 2 82 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 1 1 1e-4 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 1 1 1e-4 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 2 2 48 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 2 2 48 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 2 1 9.2e-5 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 2 1 9.2e-5 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 1 2 47 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 1 2 47 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 1 1 8.7e-5 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 1 1 8.7e-5 | grep -v Berechnungszeit)'
	# Check interactive mode
	bash -c 'diff <((for i in 1 2 0 2 2 85 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 2 0 2 2 85 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 2 0 2 1 1e-4 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 2 0 2 1 1e-4 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 2 0 1 2 82 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 2 0 1 2 82 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 2 0 1 1 1e-4 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 2 0 1 1 1e-4 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 1 0 2 2 48 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 1 0 2 2 48 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 1 0 2 1 9.2e-5 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 1 0 2 1 9.2e-5 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 1 0 1 2 47 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 1 0 1 2 47 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	bash -c 'diff <((for i in 1 1 0 1 1 8.7e-5 ; do echo $$i ; done | pde/partdiff) | grep -v Berechnungszeit) <((for i in 1 1 0 1 1 8.7e-5 ; do echo $$i ; done | pde++/partdiff) | grep -v Berechnungszeit)'
	@echo 'All output tests completed!'

testmem: partdiff partdiffpp
	$(MAKE) -C pde++ testmem
	# $(MAKE) -C pde testmem

beautify:
	$(MAKE) -C pde++ beautify
