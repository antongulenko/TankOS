
# The following flags can be defined to affect the behaviour of this Makefile (flag = variable that is just checked for existence, defined like VERBOSE=)
# VERBOSE: Causes make to print all executed shell-commands
# 

ifeq ($(origin VERBOSE), undefined)
.SILENT:
endif

ifeq ($(origin PLATFORM), undefined)
PLATFORM := Avr
endif

FIND := /cygdrive/c/Dev/Cygwin/bin/find.exe

ProjectMakefiles := $(shell $(FIND) . -maxdepth 2 -name Project.mk)
AllProjects := $(foreach p, $(ProjectMakefiles), $(shell basename $(shell dirname $p)))

all: $(AllProjects)

clean: $(foreach p, $(AllProjects), clean_$p)

# Fake-targets should be always up-to-date to not cause the actual targets to be constantly rebuilt. See Main.mk.
.fake_targets/%:
	mkdir -p $(@D); touch $@

ALL_PLATFORMS := $(shell $(FIND) . -maxdepth 1 -name Build\*.mk | \
						sed -re 's|./Build(.*).mk|\1|g')

# TODO -- this check does not work right.
# Check, if the platform-dependent Makefile is present.
$(if $(wildcard Build$(PLATFORM).mk),,$(fatal Illegal platform $(PLATFORM) (or the platform-Makefile is broken). Available platforms: $(ALL_PLATFORMS)))

# From http://blog.jgc.org/2007/01/what-makefile-am-i-in.html
# Function to query the current makefile. Example: current-makefile = $(call which-makefile)
which-makefile = $(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
get-basedir = $(shell basename $(shell dirname $(call which-makefile)))

include $(ProjectMakefiles)
