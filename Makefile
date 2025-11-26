.PHONY: default all clean beautify

CC = g++
CXX = $(CC)
CFLAGS  = -std=c++23 -Wall -Werror -Wextra -Wpedantic
CFLAGS += -O3 -flto=auto -march=native
CXXFLAGS = $(CFLAGS)
LDFLAGS = $(CXXFLAGS)
LDLIBS  = -lm
OBJS = partdiff.o argument_parser.o calculation_arguments.o tensor.o

default: all

all: partdiff

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~
