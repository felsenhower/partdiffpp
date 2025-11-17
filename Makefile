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

all: partdiff

partdiff: $(OBJS)

clean:
	$(RM) partdiff
	$(RM) *.o
	$(RM) *~
