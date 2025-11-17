.PHONY: default all clean beautify

CC = g++
CXX = $(CC)
CFLAGS  = -std=c++23 -Wall -Werror -Wextra -Wpedantic
CFLAGS += -O3 -flto -march=native
ifeq ($(COMPILE_MODE),LEGACY)
	CFLAGS += -DLEGACY
endif
CXXFLAGS = $(CFLAGS)
LDFLAGS = $(CXXFLAGS)
LDLIBS  = -lm
OBJS = partdiff.o askparams.o

default: all

all: beautify partdiff

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~

beautify: partdiff.cpp partdiff.h askparams.cpp
	clang-format --style=file -i partdiff.cpp
	clang-format --style=file -i partdiff.h
	clang-format --style=file -i askparams.cpp
