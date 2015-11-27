
COLOR_FLASH := magenta
COLOR_SIZE := cyan

CC := avr-gcc
AR := avr-ar
OBJ-COPY := avr-objcopy
OBJ-DUMP := avr-objdump
OBJ-SIZE := avr-size

ifndef AVR_MCU
	$(error AVR_MCU must be defined)
endif
ifndef AVR_FREQ
	$(error AVR_FREQ must be defined)
endif

MCU := $(AVR_MCU)
MCUFLAG := -mmcu=$(MCU)

BASE_FLAGS := $(MCUFLAG) \
	-std=gnu99 \
	-DAVR \
	-DF_CPU=$(AVR_FREQ) \
	-fshort-enums \
	-Wall \
    -Wno-missing-braces

ifndef __BUILDDIR_MODIFIED__
# Frequency and MCU also impact the binary outputs.
BUILDDIR := $(BUILDDIR)-$(AVR_FREQ)-$(MCU)
BUILD_DIRNAME := $(BUILD_DIRNAME)-$(AVR_FREQ)-$(MCU)
__BUILDDIR_MODIFIED__ := true
endif

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
    ifeq ($(NOOPT), true)
        # The -Wno-cpp is to suppress warnings from <util/delay.h>, that optimizations are disabled and delay() won't work correctly.
        # Alternative (which destroys some debug-information): CFLAGS += -O1
        CFLAGS += -Wno-cpp
    endif
endif
CFLAGS += -ffunction-sections -fdata-sections # Enable linker to garbage collect functions

LIB_SUFFIX := a
TARGET_SUFFIX := elf

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START := $(MCUFLAG) -Wl,--start-group

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END := -Wl,--end-group -lm -Wl,--gc-sections
# TODO -- check these linker flags!
# --rodata-writable -mrelax -Wl,--defsym=__stack=0x4000

DEPENDENCY_FLAGS := $(BASE_FLAGS) -MM
ARFLAGS := rcs

# Time: 130ms
%.hex: %.elf
	$(OBJ-COPY) -O ihex -R .eeprom -R .fuse -R .lock -R .signature $< $@

# Time: 70ms
%.eep: %.elf
	$(OBJ-COPY) -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex $< $@

# Time: 670ms (!)
%.lss: %.elf
	$(OBJ-DUMP) -h -S $< > $@

hex_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.hex)
eep_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.eep)
lss_$(project): $(foreach o, $(outputs), $(BUILDDIR)/$o.lss)

ifneq ($(LIBRARY), true)
    # Aways build the hex-files automatically when linking.
    $(project): hex_$(project)
    ifeq ($(LSS), true)
        $(project): lss_$(project)
    endif
endif

define OPTIONAL_SIZE_COMMAND
    -$(COLOR) $(COLOR_SIZE); $(OBJ-SIZE) $$@ -C --mcu=$(MCU) | grep bytes; $(COLOR) off
endef

size_$(project)_%: $(BUILDDIR)/%.$(TARGET_SUFFIX)
	-$(COLOR) $(COLOR_SIZE)
	$(OBJ-SIZE) $< -C --mcu=$(MCU) | grep bytes
	-$(COLOR) off

# =====
# == AVRDUDE commands
# =====

# Define these things just once.
ifndef AVRDUDE_COMMAND

# -v : for verbose, -v -v : extra verbose.
# -n : do not write anything to device
# -e : perform chip-erase
# -V : do not verify written data
AVRDUDE_COMMAND := avrdude -P usb -c usbasp -p $(MCU)

# This command checks connection to the AVR and prints verbose information.
con:
	@echo "Connecting to $(MCU)..."
	$(AVRDUDE_COMMAND) -n

endif

define do_flash
	@echo "$$($(COLOR) $(COLOR_FLASH))Flashing $1$$($(COLOR) off)"
	$(AVRDUDE_COMMAND) $2 -e # Chip erase
	$(AVRDUDE_COMMAND) $2 -U flash:w:$1
endef

flash_$(project)_%: $(BUILDDIR)/%.hex
	$(call do_flash,$<, )

flashv_$(project)_%: $(BUILDDIR)/%.hex
	$(call do_flash,$<, -v -v)

flash_$(project): $(BUILDDIR)/$(primary_output).hex
	$(call do_flash,$<, )

flashv_$(project): $(BUILDDIR)/$(primary_output).hex
	$(call do_flash,$<, -v -v)

EEPROM_OUT := out.eepr

eeprom_$(project):
	@echo "$$($(COLOR) $(COLOR_FLASH))Reading raw EEPROM to $(EEPROM_OUT)$$($(COLOR) off)"
	$(AVRDUDE_COMMAND) -U eeprom:r:$(EEPROM_OUT):r

.PHONY: flash_$(project) flashv_$(project) con
