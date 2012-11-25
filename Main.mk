
# The following 'flags' are evaluated
# LIBRARY: Causes the creation of a static library (compiling, but no linking). Without this flag, all objects and libraries are linked into a binary.
# (further flags explained in the main makefile called 'Makefile')

# This Makefile expects the following variables:
# - sources: all source-files being compiled
# - objects: all objects being compiled and linked (does not necessarily match the list of source-files)
# - output: filename for linker/archiver-output (without any file-suffix!)
# - includes: (optional) list of directories passed to the compiler to look for include-files
# - dependencies: (optional) list of projects the current project depends on. Used to generate inputs for the linker.
# - PLATFORM: 
# - project: name of project and also directory of the project.

BUILD_DIRNAME := build-$(PLATFORM)
ifneq ($(origin DEBUG), undefined)
BUILD_DIRNAME := $(BUILD_DIRNAME)-debug
# In case both DEBUG and SPEED where specified
undefine SPEED
else
ifneq ($(origin SPEED), undefined)
BUILD_DIRNAME := $(BUILD_DIRNAME)-speed
endif
endif
BUILDDIR := $(project)/$(BUILD_DIRNAME)

target := $(BUILDDIR)/$(output)

# If dependencies are given, create the according -l and -L flags.
LIB_DIRS := $(foreach d, $(dependencies), -L$d/$(BUILD_DIRNAME))
LIB_ARCHIVES := $(foreach d, $(dependencies), -l$d)

# Prepend preprocessor symbol-definitions with -D
DEFINE_FLAGS := $(foreach s, $(symbols), -D$s)

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
CFLAGS += $(DEFINE_FLAGS)
DEPENDENCY_FLAGS += $(DEFINE_FLAGS)

liboutput := lib$(output).$(LIB_SUFFIX)
libtarget := $(BUILDDIR)/$(liboutput)
fulltarget := $(target).$(TARGET_SUFFIX)

objects := $(addprefix $(BUILDDIR)/, $(objects))
sources := $(addprefix $(BUILDDIR)/, $(sources))
unused_objects := $(addprefix $(BUILDDIR)/, $(unused_objects))

ATMEL_STUDIO_FOLDER ?= Debug

# Unused objects (objects which are not archived or linked) are still treated as prerequesites of the project target,
# so that all sources in a project are compiled when the project is made.
ifeq ($(origin LIBRARY), undefined)
$(project): link_$(project) $(unused_objects)
$(project)_projecttarget := $(BUILDDIR)/$(output).$(TARGET_SUFFIX)
studiotarget := $(project)/$(ATMEL_STUDIO_FOLDER)/$(output).$(TARGET_SUFFIX)
.fake_targets/$(fulltarget)_studio := cp $(fulltarget) $(studiotarget)
else
$(project): lib_$(project) $(unused_objects)
studio_$(project): $(project) $(foreach d, $(dependencies), studio_$d)
$(project)_projecttarget := $(BUILDDIR)/$(liboutput)
studiotarget := $(project)/$(ATMEL_STUDIO_FOLDER)/$(liboutput)
.fake_targets/$(fulltarget)_studio := cp $(libtarget) $(studiotarget)
endif

.fake_targets/$(fulltarget)_projecttarget := $($(project)_projecttarget)

$(studiotarget): .fake_targets/$(fulltarget) $($(project)_projecttarget)
	@echo Copying $@
	mkdir -p $(@D)
	$($<_studio)

ifneq ($(origin STUDIO), undefined)
$(project): $(studiotarget)
endif

# Include additional objects required by this project. These objects can be located in other project-folders!
# The Objects.mk script should append file-names to the 'objects' variable. This is optional.
-include $(project)/Objects.mk

# These two fake_target-variables are used by the %.d and %.o targets. Reason: the variables stored here are project-dependent.
# The pattern used here is a little different from the one for fake_targets described below: Here, not the whole recipe is
# stored in the fake_targets-variable, but just the necessary part. It is accessed through a fake-prerequisite, that is then ignored
# in the actual recipe by filtering out just the relevant prerequisite using $(word 2, ...).
.fake_targets/$(fulltarget)_cflags := $(CFLAGS)
.fake_targets/$(fulltarget)_depflags := $(DEPENDENCY_FLAGS)

# From http://www.gnu.org/software/make/manual/make.html#Automatic-Prerequisites
# And  http://scottmcpeak.com/autodepend/autodepend.html
# (Both modified)
# Automatically generates transitive include-dependencies for c-files using the compiler.
# The sed-call fixes the .d-files produced by gcc by prepending the complete path to the .o-files.
$(BUILDDIR)/%.d: .fake_targets/$(fulltarget) $(project)/%.c
	mkdir -p $(@D); \
	set -e; rm -f $@; \
	$(CC) $($<_depflags) $(word 2, $^) > $@.$$$$; \
	sed -e 's|.*:|$(subst .d,.o,$@):|' < $@.$$$$ > $@; \
	rm -f $@.$$$$

ifneq ($(MAKECMDGOALS), clean_$(project))
ifneq ($(MAKECMDGOALS), clean)
# Include the generated dependency-Makefiles for every source-file (only if not 'clean' is invoked)
-include $(sources:.c=.d)
endif
endif

$(BUILDDIR)/%.o: .fake_targets/$(fulltarget) $(project)/%.c
	@echo $(word 2, $^)
	mkdir -p $(@D)
	$(CC) $($<_cflags) -o $@ $(word 2, $^)

MAKE_BUILDDIR := mkdir -p $(BUILDDIR)

# This is defined with =, not :=, so it's evaluated later, when all *_projecttarget variables are defined.
$(project)_dependency_targets = $(foreach d, $(dependencies), $($d_projecttarget))

# The .fake_targets/* targets and variables are a workaround/hack for a limitation of make.
# It is not possible to expand variables inside recipe-commands immediately. They are always expanded when the recipe is actually executed.
# This file (Main.mk) is included multiple times, and variables defined in this file are redefined with each inclusion.
# This means, that all variables must be expanded immediately, before the Main.mk file is included again.
# Otherwise the variables would be redefined and the variables in previous inclusions would expand to the values of the latest inclusion.
# All variables are defined using := (instead of a simple =), so they are expanded immediately. However, variables in recipe-commands are always expanded late.
# The workaround is to define target-specific variables with := (make_target_$(target)_commands), that are expanded early, and use these
# variables as commands for the actual target. Since the recipe-commands cannot even use the $(target) variable correctly, a fake target
# (.fake_targets/...) is created and added as first prerequisite for the actual targets. The recipe-commands can access the name of this prerequisite
# with $< and the $(target) variable in the prerequisite-name is expanded early. By adding _commands to the prerequisite-name, the correct variable can be expanded.
# The same trick is used for several other targets. The files in .fake_targets/ are always up-to-date due to a rule in the main Makefile.

# The order of the linker input is important: first the objects, then the libraries, so that symbols found in objects are preferred and
# objects in libraries can be 'overridden' that way.
.fake_targets/$(fulltarget)_commands := \
	$(MAKE_BUILDDIR); \
	echo Linking $(output).$(TARGET_SUFFIX); \
	$(CC) $(LIB_DIRS) $(LDFLAGS_START) $(objects) $(LIB_ARCHIVES) $(LDFLAGS_END) -o $(fulltarget); \
	$(OBJ-SIZE) $(OBJSIZE_FLAGS) $(fulltarget)

$(fulltarget): .fake_targets/$(fulltarget) $(objects) $(dependencies) $($(project)_dependency_targets)
	$($<_commands)

$(target).map: $(fulltarget)

size_$(project): $(fulltarget)
	$(OBJ-SIZE) $(OBJSIZE_FLAGS) $<

.fake_targets/$(libtarget)_commands := \
	$(MAKE_BUILDDIR); \
	echo Creating $(liboutput); \
	$(AR) $(ARFLAGS) -o $(libtarget) $(objects)

$(libtarget): .fake_targets/$(libtarget) $(objects) $(dependencies)
	$($<_commands)

# Shortcuts for execution from console
map_$(project): $(target).map
link_$(project): $(fulltarget)
$(TARGET_SUFFIX)_$(project): $(fulltarget)
lib_$(project): $(libtarget)
studio_$(project): $(studiotarget) $(foreach d, $(dependencies), studio_$d)
clean_target_$(project): .fake_targets/$(fulltarget)
	rm -f $($<_projecttarget)
relink_$(project): clean_target_$(project) $(project)

ALL_BUILD_DIRS := $(foreach p, $(ALL_PLATFORMS), $(project)/build-$p $(project)/build-$p-debug $(project)/build-$p-speed)

.fake_targets/clean_$(project)_commands := rm -rf $(ALL_BUILD_DIRS)

clean_$(project): .fake_targets/clean_$(project)
	$($<_commands)

.PHONY: clean_$(project) clean_target_$(project)
