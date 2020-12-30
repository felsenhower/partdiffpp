# Common definitions
CC = gcc

# Compiler flags, paths and libraries
CFLAGS  = -std=c11 -Wall -Wextra -Wpedantic -O3 -g
LDFLAGS = $(CFLAGS)
LDLIBS  = -lm

OBJS = partdiff.o askparams.o

# Targets
all: partdiff

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~

test: partdiff
	bash -c 'diff <(./partdiff 1 2 0 2 2 85 | grep -A9 Matrix) <(cat referenz/Jacobi.f2 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 2 0 2 1 1e-4 | grep -A9 Matrix) <(cat referenz/Jacobi.f2 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 2 0 1 2 82 | grep -A9 Matrix) <(cat referenz/Jacobi.f1 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 2 0 1 1 1e-4 | grep -A9 Matrix) <(cat referenz/Jacobi.f1 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 1 0 2 2 48 | grep -A9 Matrix) <(cat referenz/GaussSeidel.f2 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 1 0 2 1 9.2e-5 | grep -A9 Matrix) <(cat referenz/GaussSeidel.f2 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 1 0 1 2 47 | grep -A9 Matrix) <(cat referenz/GaussSeidel.f1 | grep -A9 Matrix)'
	bash -c 'diff <(./partdiff 1 1 0 1 1 8.7e-5 | grep -A9 Matrix) <(cat referenz/GaussSeidel.f1 | grep -A9 Matrix)'
	@echo 'All tests completed!'

testmem: partdiff
	valgrind --leak-check=full ./partdiff 1 2 0 2 2 85 > /dev/null

beautify: partdiff.c partdiff.h askparams.c
	clang-format -i partdiff.c
	clang-format -i partdiff.h
	clang-format -i askparams.c
