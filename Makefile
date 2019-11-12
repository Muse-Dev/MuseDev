# ---------------------------------------------------------------------------
# Filename:    makefile
# Platform:    GNU Make for C and Objective-C on Mac OS X
# Application: Point
# Author:      Matthew S. Bauer
# Created:     01-Nov-2019

# ---------------------------------------------------------------------------
# Definitions
# ---------------------------------------------------------------------------

# Suffix definitions
.SUFFIXES:
.SUFFIXES: .c .m .o .a

# Directory layout
HDRDIR=./hdr/
SRCDIR=./src/
OBJDIR=./bin/
C_SRC=./c-src/

vpath %.h $(HDRDIR)
vpath %.c $(SRCDIR)
vpath %.o $(OBJDIR)
vpath %.a $(OBJDIR)

# Build definitions
CC=gcc
CCFLAGS=-Wall -std=gnu11 -g -I$(HDRDIR)
DEFINES=
LDFLAGS=

# Project definitions
EXEC=point
FILES=point.c
OBJFILES=$(addprefix $(OBJDIR),$(FILES:.c=.o))

# ---------------------------------------------------------------------------
# Targets
# ---------------------------------------------------------------------------

.PHONY: build rebuild clean

build: 	setup compile

setup:
	mkdir -p $(OBJDIR)

compile: $(EXEC)

rebuild: clean build

clean:
	rm -f $(EXEC) $(OBJFILES)

# ---------------------------------------------------------------------------
# Build rules
#
# $@ is the name of the file to be made.
# $? is the names of the changed dependents.
# $< the name of the related file that caused the action.
# $* the prefix shared by target and dependent files.
# ---------------------------------------------------------------------------

$(EXEC): $(OBJFILES)
	$(CC) $(LDFLAGS) -o $@ $(OBJFILES) $(LIBS)

# Compile C files
$(OBJDIR)%.o : $(C_SRC)%.c
	$(CC) $(CCFLAGS) $(DEFINES) -c $< -o $@

# Compile Objective-C files
$(OBJDIR)%.o : %.m
	$(CC) $(CCFLAGS) $(DEFINES) -c $< -o $@
