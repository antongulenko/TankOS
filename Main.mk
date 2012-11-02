
# The following 'flags' are evaluated (flags = variables that are just tested for existence, their value is irrelevant)
# VERBOSE: Causes make to print all commands that are executed to the console.
# LIBRARY: Causes the creation of a static library (compiling, but no linking). Without this flag, all objects and libraries are linked into a binary.
# DEBUG: Enables the debug-build. Turns on debug-flags for the compiler and selects a different build-directory.
# LSS: Only for non-LIBRARY builds. Causes the creation of .lss and .eep files (excluded by default to reduce build-time).

# This Makefile expects the following variables:
# - sources: all source-files being compiled
# - objects: all objects being compiled and linked (does not necessarily match the list of source-files)
# - output: filename for linker/archiver-output (without any file-suffix!)
# - includes: (optional) list of directories passed to the compiler to look for include-files
# - dependencies: (optional) list of projects the current project depends on. Used to generate inputs for the linker.

BUILD_DIRNAME := build-$(PLATFORM)
ifneq ($(origin DEBUG), undefined)
BUILD_DIRNAME := $(BUILD_DIRNAME)-debug
endif
BUILDDIR := $(BASEDIR)/$(BUILD_DIRNAME)

target := $(BUILDDIR)/$(output)

# If dependencies are given, create the according -l and -L flags.
LIB_FLAGS := $(foreach d, $(dependencies), -L$d/$(BUILD_DIRNAME)) $(foreach d, $(dependencies), -l$d)
#LIB_FLAGS := $(foreach d, $(dependencies), $(shell $(FIND) $d/$(BUILD_DIRNAME) -name *.o))

# Prepend include-directories with the -I switch
INCLUDE_FLAGS := $(foreach d, $(includes), -I$d)

# Include the platform-dependent Makefile. It will set all variables required for the rest of this Makefile.
include Build$(PLATFORM).mk

# To enable debugging, the variable DEBUG has to be defined to something (-D DEBUG=).
ifeq ($(origin DEBUG), undefined)
CFLAGS := $(CFLAGS_RELEASE)
else
CFLAGS := $(CFLAGS_DEBUG)
endif

ifeq ($(origin LIBRARY), undefined)
$(project): link_$(project)
else
$(project): lib_$(project)
endif

liboutput := lib$(output).$(LIB_SUFFIX)
libtarget := $(BUILDDIR)/$(liboutput)

TEMPSDIR := $(BUILDDIR)/temps
prefixed_objects := $(addprefix $(BUILDDIR)/, $(objects))
prefixed_sources := $(addprefix $(BUILDDIR)/, $(sources))

# From http://www.gnu.org/software/make/manual/make.html#Automatic-Prerequisites
# And  http://scottmcpeak.com/autodepend/autodepend.html
# (Both modified)
# Automatically generates transitive include-dependencies for c-files using the compiler.
# The sed-call fixes the .d-files produced by gcc by prepending the complete path to the .o-files.
$(BUILDDIR)/%.d: $(BASEDIR)/%.c
	mkdir -p $(@D); \
	set -e; rm -f $@; \
	$(CC) $(DEPENDENCY_FLAGS) $< > $@.$$$$; \
	sed -e 's|.*:|$(subst .d,.o,$@):|' < $@.$$$$ > $@; \
	rm -f $@.$$$$

ifneq ($(MAKECMDGOALS), clean_$(project))
ifneq ($(MAKECMDGOALS), clean)

# Include the generated dependency-Makefiles for every source-file (only if not 'clean' is invoked)
-include $(prefixed_sources:.c=.d)
endif
endif

$(BUILDDIR)/%.o: $(BASEDIR)/%.c
	@echo $<
	mkdir -p $(@D)
	$(CC) $(CFLAGS) -o $@ $<

MAKE_BUILDDIR := mkdir -p $(BUILDDIR)

# Move temporary files created by the compiler. Prefixed with '-' to ignore when this failed,
# stderr redirected to /dev/null.
MOVE_TEMPS := mkdir -p $(TEMPSDIR) && (mv -f *.s *.i $(TEMPSDIR) 2> /dev/null || true)

fulltarget := $(target).$(TARGET_SUFFIX)

# The fake_targets/* targets and variables are a workaround/hack for a limitation of make.
# It is not possible to expand variables inside recipe-commands immediately. They are always expanded when the recipe is actually executed.
# This file (Main.mk) is included multiple times, and variables defined in this file are redefined with each inclusion.
# This means, that all variables must be expanded immediately, before the Main.mk file is included again.
# Otherwise the variables would be redefined and the variables in previous inclusions would expand to the values of the latest inclusion.
# All variables are defined using := (instead of a simple =), so they are expanded immediately. However, variables in recipe-commands are always expanded late.
# The workaround is to define target-specific variables with := (make_target_$(target)_commands), that are expanded early, and use these
# variables as commands for the actual target. Since the recipe-commands cannot even use the $(target) variable correctly, a fake target
# (make_target_$(target)) is created and added as first prerequisite for the actual targets. The recipe-commands can access the name of this prerequisite
# with $< and the $(target) variable in the prerequisite-name is expanded early. By adding _commands to the prerequisite-name, the correct variable can be expanded.
# The same trick is used for the clean_* targets below. Fake-targets are always up-to-date due to a rule in the main Makefile.

fake_targets/$(fulltarget):
fake_targets/$(fulltarget)_commands := \
	$(MAKE_BUILDDIR); \
	echo Linking $(output).$(TARGET_SUFFIX); \
	$(CC) $(LDFLAGS_START) $(prefixed_objects) $(LDFLAGS_END) -o $(fulltarget) && $(MOVE_TEMPS)

$(fulltarget): fake_targets/$(fulltarget) $(prefixed_objects)
	$($<_commands)

$(target).map: $(fulltarget)

$(target).size: $(fulltarget)
	$(OBJ-SIZE) $(OBJSIZE_FLAGS) $< | tee $@

fake_targets/$(libtarget):
fake_targets/$(libtarget)_commands := \
	$(MOVE_TEMPS); \
	echo Creating $(liboutput); \
	$(AR) $(ARFLAGS) -o $(libtarget) $(prefixed_objects); \
	$(MAKE_BUILDDIR)

$(libtarget): fake_targets/$(libtarget) $(prefixed_objects)
	$($<_commands)

# Shortcuts for execution from console
map_$(project): $(target).map
size_$(project): $(target).size
link_$(project): $(fulltarget)
$(TARGET_SUFFIX)_$(project): $(fulltarget)
lib_$(project): $(libtarget)

fake_targets/clean_temps_$(project):
fake_targets/clean_temps_$(project)_commands := rm -rf $(BASEDIR)/*.i $(BASEDIR)/*.s

# These should be moved after the build, but might still be there because of a failed build.
clean_temps_$(project): fake_targets/clean_temps_$(project)
	$($<_commands)

ALL_BUILD_DIRS := $(foreach p, $(ALL_PLATFORMS), $(BASEDIR)/build-$p $(BASEDIR)/build-$p-debug)

fake_targets/clean_$(project):
fake_targets/clean_$(project)_commands := rm -rf $(ALL_BUILD_DIRS)

clean_$(project): fake_targets/clean_$(project) clean_temps_$(project)
	$($<_commands)

.PHONY: clean_temps_$(project) clean_$(project)
