default: all

all: beautify partdiffpp partdiff test testmem

partdiff:
	$(MAKE) -C pde

partdiffpp:
	$(MAKE) -C pde++

clean:
	$(MAKE) -C pde clean
	$(MAKE) -C pde++ clean

test:
	$(MAKE) -C pde test >/dev/null
	$(MAKE) -C pde++ test >/dev/null
	bash -c 'diff <(pde/partdiff -h) <(pde++/partdiff -h | sed "s/pde++/pde/g")'
	bash -c 'diff <(pde/partdiff 1 2 0 2 2 85 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 2 2 85  | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 2 1 1e-4 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 2 1 1e-4 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 1 2 82 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 1 2 82 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 2 0 1 1 1e-4 | grep -v Berechnungszeit) <(pde++/partdiff 1 2 0 1 1 1e-4 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 2 2 48 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 2 2 48 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 2 1 9.2e-5 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 2 1 9.2e-5 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 1 2 47 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 1 2 47 | grep -v Berechnungszeit)'
	bash -c 'diff <(pde/partdiff 1 1 0 1 1 8.7e-5 | grep -v Berechnungszeit) <(pde++/partdiff 1 1 0 1 1 8.7e-5 | grep -v Berechnungszeit)'
	@echo 'All output tests completed!'

testmem:
	$(MAKE) -C pde++ testmem
	# $(MAKE) -C pde testmem

beautify:
	$(MAKE) -C pde++ beautify
	# $(MAKE) -C pde beautify

