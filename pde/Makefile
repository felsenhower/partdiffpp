.PHONY: default all clean test testout testmem beautify

CC = gcc
CFLAGS  = -std=c11 -Wall -Wextra -Wpedantic
CFLAGS += -O3 -march=native
LDFLAGS = $(CFLAGS)
LDLIBS  = -lm
OBJS = partdiff.o askparams.o

default: all

all: partdiff

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~

test: testout testmem

testout: testbatch testinteractive
	@echo 'All tests completed!'

testbatch: default
	bash -c 'diff <(./partdiff 1 2 0 2 2 85 | grep -A9 "Matrix:") <(cat referenz/Jacobi.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 2 0 2 1 1e-4 | grep -A9 "Matrix:") <(cat referenz/Jacobi.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 2 0 1 2 82 | grep -A9 "Matrix:") <(cat referenz/Jacobi.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 2 0 1 1 1e-4 | grep -A9 "Matrix:") <(cat referenz/Jacobi.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 1 0 2 2 48 | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 1 0 2 1 9.2e-5 | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 1 0 1 2 47 | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <(./partdiff 1 1 0 1 1 8.7e-5 | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f1 | grep -A9 "Matrix:")'

testinteractive: default
	bash -c 'diff <((for i in 1 2 0 2 2 85 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/Jacobi.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 2 0 2 1 1e-4 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/Jacobi.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 2 0 1 2 82 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/Jacobi.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 2 0 1 1 1e-4 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/Jacobi.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 1 0 2 2 48 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 1 0 2 1 9.2e-5 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f2 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 1 0 1 2 47 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f1 | grep -A9 "Matrix:")'
	bash -c 'diff <((for i in 1 1 0 1 1 8.7e-5 ; do echo $$i ; done | ./partdiff) | grep -A9 "Matrix:") <(cat referenz/GaussSeidel.f1 | grep -A9 "Matrix:")'

testmem: partdiff
	valgrind --leak-check=full ./partdiff 1 2 0 2 2 85 > /dev/null
