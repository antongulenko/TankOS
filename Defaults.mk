
output := $(BASEDIR)
project := $(BASEDIR)
includes := $(dependencies)
sources := $(shell $(FIND) $(BASEDIR) -name \*.c)
sources := $(subst $(project)/,,$(sources))
objects := $(sources:.c=.o)
