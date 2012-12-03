
COLOR_FLASH := magenta

CC := gcc
AR := ar
OBJ-COPY := objcopy
OBJ-DUMP := objdump
OPTIONAL_SIZE_COMMAND :=

BASE_FLAGS :=  \
	-std=gnu99 \
	-fshort-enums \
	-Wall

# Compile & assemble, do not link yet
CFLAGS := $(BASE_FLAGS) -c
ifeq ($(origin NOOPT), undefined)
	ifeq ($(origin SPEED), undefined)
		CFLAGS += -Os
	else
		CFLAGS += -O3
	endif
endif

ifneq ($(origin DEBUG), undefined)
	CFLAGS += -g3
endif

LIB_SUFFIX := a
TARGET_SUFFIX := exe

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START := -Wl,--start-group

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END := -Wl,--end-group -lm

DEPENDENCY_FLAGS := $(BASE_FLAGS) -MM
ARFLAGS := rcs

# Time: 670ms (!)
%.lss: %.exe
	$(OBJ-DUMP) -h -S $< > $@

lss_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.lss)

ifeq ($(origin LIBRARY), undefined)
ifneq ($(origin LSS), undefined)
$(project): lss_$(project)
endif
endif
