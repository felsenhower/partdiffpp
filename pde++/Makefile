# Common definitions
CC = g++

# Compiler flags, paths and libraries
CFLAGS  = -std=c++20 -Wall -Wextra -Wpedantic -O3 -g
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
