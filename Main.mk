
# The following 'flags' are evaluated
# LIBRARY: Causes the creation of a static library (compiling, but no linking). Without this flag, all objects and libraries are linked into a binary.
# (further flags explained in the main makefile called 'Makefile')

# This Makefile expects the following variables:
# - sources: all source-files being compiled. Dependency .d-files are generated for these.
# - all_objects: all objects that are part of the project.
# - objects: objects that are linked/archived by default, if objects_$(project)_$(output_name) for a given output is not defined.
# - objects_$(project)_$(output_name): objects that are linked/archived for the given output. Does not necessarily match sources/all_objects.
# - outputs: filename(s) for linker/archiver-output (without any file-suffix!). In case of library, the project-objects will be archived in these archives. In case of executable project, the linker is invoked for each output, and an object identified by output will be an additional linker input.
# - studio_output: the one output that will be copied to the Atmel Studio output directory.
# - includes: (optional) list of directories passed to the compiler to look for include-files
# - dependencies: (optional) list of projects the current project depends on. Used to generate inputs for the linker.
# - PLATFORM: platform dependent make-script Build$(PLATFOMRM).mk will be included.
# - project: name of project and also directory of the project.
# - symbols: preprocessor definitions that will be used when compiling.
# - ld_symbols: symbols, that will be defined by the linker. Form: <symbol>=<address or other symbol>. See the linker manual.

# http://code.google.com/p/ansi-color/
COLOR_COMPILE := green
COLOR_LINK := bold cyan
COLOR_SIZE := cyan
COLOR_ARCHIVE := bold magenta
COLOR_COPY := faint yellow
COLOR_GENERATE := faint yellow

BUILD_DIRNAME := build-$(PLATFORM)
ifneq ($(origin DEBUG), undefined)
	BUILD_DIRNAME := $(BUILD_DIRNAME)-debug
endif
ifneq ($(origin NOOPT), undefined)
	BUILD_DIRNAME := $(BUILD_DIRNAME)-noopt
	# In case both NOOPT and SPEED have been defined
	undefine SPEED
else
	ifneq ($(origin SPEED), undefined)
		BUILD_DIRNAME := $(BUILD_DIRNAME)-speed
	endif
endif
BUILDDIR := $(project)/$(BUILD_DIRNAME)

# The $(fake)_* variables and the $(fake) prerequisites are a workaround/hack for a limitation of make.
# It is not possible to expand variables inside recipe-commands immediately. They are always expanded when the recipe is actually executed.
# This file (Main.mk) is included multiple times, and variables defined in this file are redefined with each inclusion.
# This means, that all variables must be expanded immediately, before the Main.mk file is included again.
# Otherwise the variables would be redefined and the variables in previous inclusions would expand to the values of the latest inclusion.
# All variables are defined using := (instead of a simple =), so they are expanded immediately. However, variables in recipe-commands are always expanded late.
# The workaround is to define target-specific variables with := ($(fakse)_BLABLA), that will never be overwritten because the name includes $(project),
# and use these variables inside the recipes for the actual target. Since the recipe-commands cannot even use the $(target) variable correctly, a fake target
# (.fake_targets/...) is created and added as first prerequisite for the actual targets. The recipe-commands can access the name of this prerequisite
# with $< and the $(target) variable in the prerequisite-name is expanded early. By adding _BLABLA to the prerequisite-name, the correct variable can be expanded.
# The same trick is used for several other targets. The files in .fake_targets/ are always up-to-date due to a rule in the main Makefile.
fake := .fake_targets/$(project)

# If dependencies are given, create the according -l and -L flags.
LIB_DIRS := $(foreach d, $(dependencies), -L$d/$(BUILD_DIRNAME))
LIB_ARCHIVES := $(foreach d, $(dependencies), -l$d)

# Prepend linker symbol definitions with --defsym=
LD_SYMBOL_FLAGS := $(foreach s, $(ld_symbols), -Wl,--defsym=$s)

# Prepend preprocessor symbol-definitions with -D
DEFINE_FLAGS := $(foreach s, $(symbols), -D$s)

# Prepend include-directories with the -I switch
INCLUDE_FLAGS := $(foreach d, $(includes), -I$d)

# Include the platform-dependent Makefile. It will set all variables required for the rest of this Makefile.
include Build$(PLATFORM).mk

CFLAGS += $(DEFINE_FLAGS)
DEPENDENCY_FLAGS += $(DEFINE_FLAGS)

$(fake)_cflags := $(CFLAGS)
$(fake)_depflags := $(DEPENDENCY_FLAGS)

DEPENDENCY_DIR ?= .d

all_objects := $(addprefix $(BUILDDIR)/, $(all_objects))
objects := $(addprefix $(BUILDDIR)/, $(objects))
dependency_files := $(addprefix $(DEPENDENCY_DIR)/$(project)/, $(sources))

# Include additional objects required by this project. These objects can be located in other project-folders!
# The Objects.mk script should append file-names to the 'objects' variable. This is optional.
-include $(project)/Objects.mk

# Handle Unity tests. testrunners are generated.
ifneq ($(origin tests), undefined)
TEST_RUNNERS_DIR ?= testrunners
outputs += $(foreach t, $(tests), $(TEST_RUNNERS_DIR)/$t.testrunner)
$(project)/$(TEST_RUNNERS_DIR)/%.testrunner.c: $(project)/%.test.c
	mkdir -p $(@D)
	@echo "$$(color $(COLOR_GENERATE))$@$$(color off) (Generated)"
	ruby Unity/generate_test_runner.rb $< $@
.PRECIOUS: $(project)/$(TEST_RUNNERS_DIR)/%.testrunner.c
endif

ATMEL_STUDIO_FOLDER ?= Debug

ifeq ($(origin LIBRARY), undefined)
	projectoutputs := $(foreach o, $(outputs), $o.$(TARGET_SUFFIX))
	studiotarget := $(project).$(TARGET_SUFFIX)
	studio_output := $(studio_output).$(TARGET_SUFFIX)
else
	projectoutputs := $(foreach o, $(outputs), lib$o.$(LIB_SUFFIX))
	studiotarget := lib$(project).$(LIB_SUFFIX)
	studio_output := lib$(studio_output).$(LIB_SUFFIX)
endif

studiotarget := $(project)/$(ATMEL_STUDIO_FOLDER)/$(studiotarget)
projectoutputs := $(foreach o, $(projectoutputs), $(BUILDDIR)/$o)
$(project)_projectoutputs := $(projectoutputs)
$(fake)_projectoutputs := $(projectoutputs)

$(project): $(projectoutputs) $(all_objects)

$(studiotarget): $(BUILDDIR)/$(studio_output)
	@echo "Copying  $$(color $(COLOR_COPY))$<$$(color off) -> $$(color $(COLOR_COPY))$@$$(color off)"
	mkdir -p $(@D)
	cp $< $@
	-color off

ifneq ($(origin STUDIO), undefined)
$(project): $(studiotarget)
endif

# From http://www.gnu.org/software/make/manual/make.html#Automatic-Prerequisites
# And  http://scottmcpeak.com/autodepend/autodepend.html
# (Both modified)
# Automatically generates transitive include-dependencies for c-files using the compiler.
# The sed-call fixes the .d-files produced by gcc by prepending the complete path to the .o-files.
$(DEPENDENCY_DIR)/$(project)/%.d: $(fake) $(project)/%.c
	mkdir -p $(@D); \
	set -e; rm -f $@; \
	$(CC) $($<_depflags) $(word 2, $^) > $@.$$$$; \
	sed -e 's|.*:|$(subst .d,.o,$@):|' < $@.$$$$ > $@; \
	rm -f $@.$$$$

ifneq ($(MAKECMDGOALS), clean_$(project))
ifneq ($(MAKECMDGOALS), clean)
# Include the generated dependency-Makefiles for every source-file (only if not 'clean' is invoked)
-include $(dependency_files:.c=.d)
endif
endif

$(BUILDDIR)/%.o: $(fake) $(project)/%.c
	-color $(COLOR_COMPILE)
	@echo $(word 2, $^)
	mkdir -p $(@D)
	-color off
	$(CC) $($<_cflags) -o $@ $(word 2, $^)

dependency_targets := $(foreach d, $(dependencies), $($d_projectoutputs))

$(fake)_OBJSIZE_FLAGS := $(OBJSIZE_FLAGS)
$(fake)_builddir := $(BUILDDIR)
$(fake)_ARFLAGS := $(ARFLAGS)
$(fake)_fullLinkerFlags1 := $(LIB_DIRS) $(LD_SYMBOL_FLAGS) $(LDFLAGS_START) $(LIB_ARCHIVES) 
$(fake)_fullLinkerFlags2 := $(LDFLAGS_END)

define assign_default_objects
objects_$(project)_$1 ?= $(objects)
endef

define make_output
$(BUILDDIR)/$1.$(TARGET_SUFFIX) $(BUILDDIR)/$1.map: $(fake) $(BUILDDIR)/$1.o $(objects_$(project)_$1) $(dependencies) $(dependency_targets)
	mkdir -p $$($$<_builddir)
	-color $(COLOR_LINK)
	@echo "Linking  $$@"
	-color off
	$(CC) $$($$<_fullLinkerFlags1) $(objects_$(project)_$1) $(BUILDDIR)/$1.o $$($$<_fullLinkerFlags2) -Wl,-Map="$$(subst .o,.map,$$(word 2, $$^))" -o $$@
	-color $(COLOR_SIZE)
	$(OBJ-SIZE) $$($$<_OBJSIZE_FLAGS) $$@ | grep bytes
	-color off

$(BUILDDIR)/lib$1.$(LIB_SUFFIX): $(fake) $(objects_$(project)_$1) $(dependencies)
	mkdir -p $$($$<_builddir)
	-color $(COLOR_ARCHIVE)
	@echo Creating $$@
	-color off
	$(AR) $$($$<_ARFLAGS) -o $$@ $(objects_$(project)_$1)
endef

$(foreach o, $(outputs), $(eval $(call assign_default_objects,$o)))
$(foreach o, $(outputs), $(eval $(call make_output,$o)))

size_$(project)_%: $(fake) $(BUILDDIR)/%.$(TARGET_SUFFIX)
	-color $(COLOR_SIZE)
	$(OBJ-SIZE) $($<_OBJSIZE_FLAGS) $(word 2, $^) | grep bytes; $(COLOR)
	-color off

link_$(project): $(project)
$(TARGET_SUFFIX)_$(project): $(project)
lib_$(project): $(project)
map_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.map)

studio_$(project): $(studiotarget) $(foreach d, $(dependencies), studio_$d)
clean_target_$(project): $(fake)
	rm -f $($<_projectoutputs)
relink_$(project): clean_target_$(project) $(project)

$(fake)_ALL_BUILD_DIRS := $(foreach p, $(ALL_PLATFORMS), \
	$(project)/build-$p $(project)/build-$p-noopt $(project)/build-$p-speed \
	$(project)/build-$p-debug $(project)/build-$p-debug-noopt $(project)/build-$p-debug-speed)

clean_$(project): $(fake)
	rm -rf $($<_ALL_BUILD_DIRS)

# Execute all outputs of the project. Will fail, if they are not actually executable in the native shell.
run_$(project): $(fake) $(project)
	$(foreach o, $($<_projectoutputs), ./$o;)

.PHONY: clean_$(project) clean_target_$(project)
