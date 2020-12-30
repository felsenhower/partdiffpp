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
