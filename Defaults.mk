
# This is separate from the Main.mk file to keep the Main.mk more flexible.

output := $(BASEDIR)
project := $(BASEDIR)
includes := $(dependencies)

sources := $(shell $(FIND) $(BASEDIR) -name \*.c)
sources := $(subst $(project)/,,$(sources))

ifeq ($(origin LIBRARY), undefined)
unused_suffix := main
else
unused_suffix := kernel
endif

# Only non-kernel and non-main objects are linked/archived automatically.
# Kernel- or Main- objects must be selected separately when linking, using the project-specific Objects.mk script.
used_sources := $(shell $(FIND) $(BASEDIR) -name \*.c -and -not -name \*.$(unused_suffix).c)
used_sources := $(subst $(project)/,,$(used_sources))
objects := $(used_sources:.c=.o)

# These objects are built, even though they are not put into the archive. The purpose is to still compile all sources, when the project is made.
unused_sources := $(shell $(FIND) $(BASEDIR) -name \*.$(unused_suffix).c)
unused_sources := $(subst $(project)/,,$(unused_sources))
unused_objects := $(unused_sources:.c=.o)

# TODO uncovered: tests, selective linking for tests
