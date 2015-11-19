
# This is separate from the Main.mk file to keep the Main.mk more flexible.

ifndef AVR_SYMBOL
$(error AVR_SYMBOL must be defined)
endif

# Reset variables between projects
ld_symbols :=
symbols := PLATFORM_$(PLATFORM) $(AVR_SYMBOL)

# Most projects can only be built for the Avr platform.
$(project)_exclusive_platform := Avr

includes := $(project)
ifdef dependencies
    includes += $(dependencies)
else
    dependencies :=
endif

sources := $(shell $(FIND) $(project) -name \*.c -o -name \*.S)
sources := $(subst $(project)/,,$(sources))

all_objects := $(sources:.c=.o)
all_objects := $(all_objects:.S=.So)

ifneq ($(filter %$(TEST_PROJECT_SUFFIX), $(project)),)
    test_project := true
    # primary_output will not be defined for test projects
else
    test_project := false
endif
tests :=

ifeq ($(LIBRARY), true)
    # Library outputs
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
        primary_output := DONT-DEFINE-STUDIO-FOR-TEST-PROJECTS.NOT-POSSIBLE
    endif

    ifeq ($(DONT_LINK_ALL), true)
        outputs := $(primary_output)
    else
        outputs := $(subst .c,,$(main_sources))
    endif

    # Test-files are handled specially. They end with .test.c
    tests := $(shell $(FIND) $(project) -name \*.test.c)
    tests := $(subst $(project)/,,$(tests))
    tests := $(subst .test.c,,$(tests))
endif

# Only non-kernel and non-main objects are linked/archived automatically.
# kernel.* or main.* objects must be selected separately when linking, using the project-specific Objects.mk script.
default_sources := $(shell $(FIND) $(project) \( -name \*.c  -o -name \*.S \) -and -not -name \*.kernel.c -and -not -name \*.main.c -and -not -name \*.testrunner.c)
default_sources := $(subst $(project)/,,$(default_sources))
objects := $(default_sources:.c=.o)
objects := $(objects:.S=.So)
