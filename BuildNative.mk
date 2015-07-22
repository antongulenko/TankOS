
CC := gcc
AR := ar
OBJ-COPY := objcopy
OBJ-DUMP := objdump
OPTIONAL_SIZE_COMMAND :=

BASE_FLAGS :=  \
    -std=gnu99 \
    -fshort-enums \
    -Wall \
    -Wno-missing-braces # Generated in Unity/unity.c

# Compile & assemble, do not link yet
CFLAGS := $(BASE_FLAGS) -c
ifneq ($(NOOPT), true)
    ifeq ($(SPEED), true)
        CFLAGS += -O3
    else
        CFLAGS += -Os
    endif
endif

ifeq ($(DEBUG), true)
    CFLAGS += -g3
endif

LIB_SUFFIX := a
ifeq ($(OS),Windows_NT)
    TARGET_SUFFIX := exe
else
    TARGET_SUFFIX := out
endif

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START := -Wl,--start-group

ifneq ($(filter arm%,$(shell uname -m)),)
LDFLAGS_START := -Wl,--no-enum-size-warning $(LDFLAGS_START)
endif

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END := -Wl,--end-group -lm

DEPENDENCY_FLAGS := $(BASE_FLAGS) -MM
ARFLAGS := rcs

# Time: 670ms (!)
%.lss: %.$(TARGET_SUFFIX)
	$(OBJ-DUMP) -h -S $< > $@

lss_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.lss)

ifneq ($(LIBRARY), true)
    ifeq ($(origin LSS), true)
        $(project): lss_$(project)
    endif
endif
