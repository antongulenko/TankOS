
# The following flags and variables can be defined to affect the behaviour of this Makefile.
# (flag = variable that is just checked for existence, value irrelevant. Defined like this on the command-line: 'VERBOSE=')
# VERBOSE: (flag) Causes make to print all executed shell-commands
# PLATFORM: String identifying target build-platform. A platform-specific Makefile called Build$(PLATFORM).mk is required.
#			Call 'make platforms' for a list of available platforms
# PROJ: String identifying a project. Shortcut-commands will be generated to access commands for that project (like link, hex, lss, flash, etc.)
#			'make clean' will still clean all available projects.
#			Call 'make projects' for a list of available projects
# LSS: (flag) Causes the creation of .lss and .eep files when linking for platform AVR. Excluded by default.
# DEBUG: (flag) Instructs platform-dependent Makefiles to create debug-symbols in archives and objects. Also switches to a separate build-directory.
# SPEED: (flag) Instructs platform-dependent Makefiles to optimize for Speed instead of Size (only for non-DEBUG-builds). Also switches to yet another build-directory. The DEBUG flag takes precedence over the SPEED flag.

ifeq ($(origin VERBOSE), undefined)
.SILENT:
endif

ifeq ($(origin PLATFORM), undefined)
PLATFORM := Avr
endif

FIND := /cygdrive/c/Dev/Cygwin/bin/find.exe

ProjectMakefiles := $(shell $(FIND) . -maxdepth 2 -name Project.mk)
AllProjects := $(foreach p, $(ProjectMakefiles), $(shell basename $(shell dirname $p)))

ALL_PLATFORMS := $(shell $(FIND) . -maxdepth 1 -name Build\*.mk | \
						sed -re 's|./Build(.*).mk|\1|g')

# Include shortcut-commands for the defined project.
# This is above the all-command, to make the build-command the default if PROJ is defined.
ifneq ($(origin PROJ), undefined)
build: $(PROJ)
hex: hex_$(PROJ)
eep: eep_$(PROJ)
lss: lss_$(PROJ)
link: link_$(PROJ)
size: size_$(PROJ)
lib: lib_$(PROJ)
map: map_$(PROJ)
flash: flash_$(PROJ)
endif

all: $(AllProjects)

clean: $(foreach p, $(AllProjects), clean_$p)

projects:
	@echo Available projects: $(AllProjects)

platforms:
	@echo Available platforms: $(ALL_PLATFORMS)

# Fake-targets should be always up-to-date to not cause the actual targets to be constantly rebuilt. See Main.mk.
.fake_targets/%:
	mkdir -p $(@D); touch $@

# Check, if the platform-dependent Makefile is present.
$(if $(wildcard Build$(PLATFORM).mk),,$(error Illegal platform $(PLATFORM). Available platforms: $(ALL_PLATFORMS)))

# From http://blog.jgc.org/2007/01/what-makefile-am-i-in.html
# Function to query the current makefile. Example: current-makefile = $(call which-makefile)
which-makefile = $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
get-basedir = $(shell basename $(shell dirname $(call which-makefile)))

ifneq ($(MAKECMDGOALS), projects)
ifneq ($(MAKECMDGOALS), platforms)
include $(ProjectMakefiles)
endif
endif
