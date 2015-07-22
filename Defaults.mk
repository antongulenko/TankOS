
# This is separate from the Main.mk file to keep the Main.mk more flexible.

# Reset variables between projects
ld_symbols :=
symbols :=

# Most projects can only be built for the Avr platform.
$(project)_exclusive_platform := Avr

includes := $(project)
ifdef dependencies
    includes += $(dependencies)
else
    dependencies :=
endif

sources := $(shell $(FIND) $(project) -name \*.c)
sources := $(subst $(project)/,,$(sources))

all_objects := $(sources:.c=.o)

ifneq ($(filter %$(TEST_PROJECT_SUFFIX), $(project)),)
    test_project := true
    # primary_output will not be defined for test projects
else
    test_project := false
endif
tests :=

ifeq ($(LIBRARY), true)
    # Library outputs
    unused_suffix := kernel
    outputs := $(project)
    primary_output := $(project)
else
    # Linker outputs
    main_sources := $(shell $(FIND) $(project) -name \*.main.c)
    main_sources := $(subst $(project)/,,$(main_sources))

    ifneq ($(test_project),true)
        ifndef MAIN_$(project)
            $(error MAIN_$(project) is not defined!)
        endif
        primary_output := $(MAIN_$(project)).main
    else
        primary_output := NOT-POSSBILE-FOR-TEST-PROJECTS
    endif

    ifeq ($(DONT_LINK_ALL), true)
        outputs := $(primary_output)
    else
        outputs := $(subst .c,,$(main_sources))
    endif

    ifeq ($(test_project),true)
        unused_suffix := testrunner
    else
        unused_suffix := main
    endif

    # Test-files are handled specially. They end with .test.c
    tests := $(shell $(FIND) $(project) -name \*.test.c)
    tests := $(subst $(project)/,,$(tests))
    tests := $(subst .test.c,,$(tests))
endif

# Only non-kernel and non-main objects are linked/archived automatically.
# Kernel- or Main- objects must be selected separately when linking, using the project-specific Objects.mk script.
default_sources := $(shell $(FIND) $(project) -name \*.c -and -not -name \*.$(unused_suffix).c)
default_sources := $(subst $(project)/,,$(default_sources))
objects := $(default_sources:.c=.o)
