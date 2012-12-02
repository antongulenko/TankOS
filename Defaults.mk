
# This is separate from the Main.mk file to keep the Main.mk more flexible.

ifneq ($(origin dependencies), undefined)
includes := $(dependencies)
else
includes :=
dependencies :=
endif

sources := $(shell $(FIND) $(project) -name \*.c)
sources := $(subst $(project)/,,$(sources))

ifeq ($(origin LIBRARY), undefined)
unused_suffix := main
else
unused_suffix := kernel
endif

all_sources := $(shell $(FIND) $(project) -name \*.c)
all_sources := $(subst $(project)/,,$(all_sources))
all_objects := $(all_sources:.c=.o)

# Only non-kernel and non-main objects are linked/archived automatically.
# Kernel- or Main- objects must be selected separately when linking, using the project-specific Objects.mk script.
default_sources := $(shell $(FIND) $(project) -name \*.c -and -not -name \*.$(unused_suffix).c)
default_sources := $(subst $(project)/,,$(default_sources))
objects := $(default_sources:.c=.o)

ifeq ($(origin LIBRARY), undefined)
main_sources := $(shell $(FIND) $(project) -name \*.main.c)
main_sources := $(subst $(project)/,,$(main_sources))
outputs := $(subst .c,,$(main_sources))
else
outputs := $(project)
studio_output := $(project)
endif

# TODO uncovered: tests, selective linking for tests
