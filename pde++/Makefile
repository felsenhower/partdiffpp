.PHONY: default all clean test testout testmem beautify libfmt cleanhard

CC = g++
CXX = $(CC)
FLAGS = -std=c++20 -Wall -Werror -Wextra -Wpedantic
FLAGS += -I./fmt/include
FLAGS += -O3 -flto -march=native
CFLAGS = $(FLAGS)
LDFLAGS = $(FLAGS)
ifeq ($(COMPILE_MODE),LEGACY)
	CFLAGS += -DLEGACY
endif
ifeq ($(POLLY),TRUE)
	POLLY_FLAGS = -polly -polly-parallel -polly-num-threads=8
	CFLAGS += $(foreach arg, $(POLLY_FLAGS),-mllvm $(arg)) -fopenmp
	LDFLAGS += -lgomp
	CC = clang++
	CXX = clang++
endif
CXXFLAGS = $(CFLAGS)

LDLIBS  = -lm -L./fmt/build -lfmt
OBJS = partdiff.o askparams.o

default: all

all: libfmt beautify partdiff

libfmt: fmt/build/libfmt.a fmt/include/fmt/core.h

fmt/build/libfmt.a: fmt/src/format.cc
	mkdir -p fmt/build && \
	cd fmt/build && \
	cmake -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE .. && \
	make

fmt/src/format.cc:
	git submodule update --init

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~

cleanhard: clean
	$(RM) fmt

test: testout testmem

testmem: default
	valgrind --leak-check=full ./partdiff 1 2 0 2 2 85 > /dev/null

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

beautify: partdiff.cpp partdiff.h askparams.cpp
	clang-format --style=file -i partdiff.cpp
	clang-format --style=file -i partdiff.h
	clang-format --style=file -i askparams.cpp
