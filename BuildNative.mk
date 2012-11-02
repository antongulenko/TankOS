
$(error the native build is not yet operational)

CC = cl
AR = lib
OBJ-SIZE = size

BASE_FLAGS = $(INCLUDE_FLAGS) \
	-save-temps \
	-std=gnu99 \
	-DAVR \
	-DF_CPU=20000000 \
	-Wall

CFLAGS_BASE_RELEASE = $(BASE_FLAGS) -Os
CFLAGS_BASE_DEBUG = $(BASE_FLAGS) -O0 -g3

# Compile & assemble, do not link yet
CFLAGS_RELEASE = $(CFLAGS_BASE_RELEASE) -c
CFLAGS_DEBUG = $(CFLAGS_BASE_DEBUG) -c

LIB_SUFFIX = a
TARGET_SUFFIX = elf

# Create the .eep and .lss files only on demand to reduce build-time (see time measurements below).
# If these files are not built, they are deleted because they might be out-of-date.
ifeq ($(origin LSS), undefined)
platform_all: elf hex size clean_eep_lss
else
platform_all: elf hex size eep lss
endif

ALL_LIB = lib

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START = $(MCUFLAG) \
	-Wl,-Map="$(target).map" \
	-Wl,--start-group \
	$(LIB_FLAGS)

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END = -Wl,--end-group -lm
# TODO -- check these linker flags!
# -Wl,--gc-sections --rodata-writable -mrelax -Wl,--defsym=__stack=0x4000

DEPENDENCY_FLAGS = $(BASE_FLAGS) -MM
OBJSIZE_FLAGS = -C --mcu=$(MCU)
ARFLAGS = -r

# Time: 130ms
$(target).hex: $(target).elf
	$(OBJ-COPY) -O ihex -R .eeprom -R .fuse -R .lock -R .signature $< $@

# Time: 70ms
$(target).eep: $(target).elf
	$(OBJ-COPY) -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex $< $@

# Time: 670ms (!)
$(target).lss: $(target).elf
	$(OBJ-DUMP) -h -S $< > $@

# Shortcuts to invoke from console
hex: $(target).hex
eep: $(target).eep
lss: $(target).lss

clean_eep_lss:
	rm -f $(target).eep $(target).lss

.PHONY: clean_eep_lss
