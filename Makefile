
# The following flags and variables can be defined to affect the behaviour of this Makefile.
# (A flag is set if the value is 'true'. Defined like this on the command-line: 'VERBOSE=true')
# VERBOSE: (flag) Causes make to print all executed shell-commands
# PLATFORM: String identifying target build-platform. A platform-specific Makefile called Build$(PLATFORM).mk is required.
#			Defaults to 'Avr'.
#			Call 'make platforms' for a list of available platforms
# PROJ: String identifying a project. Shortcut-commands will be generated to access commands for that project (like link, hex, lss, flash, etc.)
#			'make clean' will still clean all available projects.
#			Call 'make projects' for a list of available projects
# MAIN: Filename (without the .main.c ending) of a main-file in an executable project. This main-file will be the one linked into the executable.
#			The Object.mk files in executable projects have defauls for this.
# LSS: (flag) Causes the creation of .lss and .eep files when linking for platform AVR. Excluded by default.
# DEBUG: (flag) Instructs platform-dependent Makefiles to create debug-symbols in archives and objects. Also switches to a separate build-directory.
# SPEED: (flag) Instructs platform-dependent Makefiles to optimize for Speed instead of Size. Also switches to yet another build-directory.
# NOOPT: (flag) Instructs platform-dependent Makefiles to do no optimizations. Also switches to yet another build-directory. This flag takes precedence over the SPEED flag.
# STUDIO: (flag) If set, the output-artifacts will always be copied to the Atmel Studio output location, to be used in the Atmel Studio simulator. (-> The target 'studio' will be called implicitely).
# AUTO_DISCOVER: (flag) Causes the makefile to automatically find project-makefiles (Project.mk) and projects. The projects might not be in the correct order of their dependencies.
# DONT_LINK_ALL: (flag) Causes only the main output to be produced, not every possible output. For executable objects, this means the linker is invoked only once.
# IGNORE_COLORS: (flag) Causes colors to be omitted from the output.

# A warning about whitespace: this Makefile (and all included *.mk files) mix tabs and spaces as indentation in order to fullfill GNU make requirements.
# When editing, make whitespace visible and leave all indentation in their original state!

VERBOSE := false
DEBUG := false
SPEED := false
NOOPT := false
STUDIO := false
AUTO_DISCOVER := false
DONT_LINK_ALL := false
IGNORE_COLORS := false

MAIN :=
PROJ :=
MAKECMDGOALS :=

ATMEL_STUDIO_FOLDER := Debug
TEST_PROJECT_SUFFIX := -Test
TEST_RUNNERS_DIR := testrunners
FAKE_TARGETS_DIR := .make-fake-targets
GCC_DEP_DIR := .make-dependencies

# Possibility to define global parameters here
include make_parameters

ifneq ($(VERBOSE), true)
    .SILENT:
endif

ifndef OS
    # TODO find better way to check for the OS.
    OS := Linux
endif

ifndef PLATFORM
    PLATFORM := Avr
endif

ifeq ($(IGNORE_COLORS), true)
    COLOR := true
else
    # TODO run $(shell type color &> /dev/null) and check result code
    COLOR := color
endif
FIND ?= find

ifeq ($(AUTO_DISCOVER), true)
    # TODO implement auto discovery ordered by dependencies.
    ProjectMakefiles := $(shell $(FIND) . -maxdepth 2 -name Project.mk)
    AllProjects := $(foreach p, $(ProjectMakefiles), $(shell basename $(shell dirname $p)))
else
    AllProjects := Unity TankOS TankOS-Test Tank-Shared Tank-Driver Tank-IO Simulator Test-Scheduler TwiTool
    ProjectMakefiles := $(foreach p, $(AllProjects), $p/Project.mk)
endif

ALL_PLATFORMS := $(shell $(FIND) . -maxdepth 1 -name Build\*.mk | sed -re 's|./Build(.*).mk|\1|g')

# Include shortcut-commands for the defined project.
# This is above the all-command, to make the build-command the default if PROJ is defined.
ifdef PROJ
    all: $(PROJ)
    build: $(PROJ)
    hex: hex_$(PROJ)
    eep: eep_$(PROJ)
    lss: lss_$(PROJ)
    link: link_$(PROJ)
    size: size_$(PROJ)
    lib: lib_$(PROJ)
    map: map_$(PROJ)
    flash: flash_$(PROJ)
    flashv: flashv_$(PROJ)
    studio: studio_$(PROJ)
    clean_target: clean_target_$(PROJ)
    relink: relink_$(PROJ)
    run: run_$(PROJ)
else
    all: $(AllProjects)
endif

allprojects: $(AllProjects)

clean: $(foreach p, $(AllProjects), clean_$p)

clean_all: clean
	rm -rf $(FAKE_TARGETS_DIR)
	rm -rf $(GCC_DEP_DIR)
	rm -f GNUmakefile # Created by configure script
	find -name $(TEST_RUNNERS_DIR) -type d -exec rm -r {} +
	find -name $(ATMEL_STUDIO_FOLDER) -type d -exec rm -r {} +

projects:
	@echo Available projects: $(AllProjects)

platforms:
	@echo Available platforms: $(ALL_PLATFORMS)

# Fake-targets should be always up-to-date to not cause the actual targets to be constantly rebuilt. See Main.mk.
$(FAKE_TARGETS_DIR)/%:
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

# Each project has two project-specific makefiles: Project.mk and (optionally) Objects.mk

# Project.mk:
# Defines name of the project, type of the project (library or executable), dependencies and symbols for the preprocessor.
# See an existing example

# Objects.mk:
# Projects can define objects (possibly from other projects), that should be included when linking or archiving.
# Following reasons:
#  - Kernel projects should define the kernel-objects they require from other libraries. By default, objects named *.kernel.o are excluded.
#  - Main projects can define additional objects to be linked, that should override symbols defined in libraries
# Take care to APPEND to the 'objects'-variable, as it already contains other objects!
