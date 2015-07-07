
COLOR_FLASH := magenta
COLOR_SIZE := cyan

CC := avr-gcc
AR := avr-ar
OBJ-COPY := avr-objcopy
OBJ-DUMP := avr-objdump
OBJ-SIZE := avr-size

MCU := atmega1284p
MCUFLAG := -mmcu=$(MCU)

BASE_FLAGS := $(MCUFLAG) \
	-std=gnu99 \
	-DAVR \
	-DF_CPU=20000000 \
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
	ifneq ($(origin NOOPT), undefined)
		# The -Wno-cpp is to suppress warnings from <util/delay.h>, that optimizations are disabled and delay() won't work correctly.
		# Alternative (which destroys some debug-information): CFLAGS += -O1
		CFLAGS += -Wno-cpp
	endif
endif

LIB_SUFFIX := a
TARGET_SUFFIX := elf

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START := $(MCUFLAG) -Wl,--start-group

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END := -Wl,--end-group -lm
# TODO -- check these linker flags!
# -Wl,--gc-sections --rodata-writable -mrelax -Wl,--defsym=__stack=0x4000

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

ifeq ($(origin LIBRARY), undefined)
	# Aways build the hex-files automatically when linking.
	$(project): hex_$(project)
	ifneq ($(origin LSS), undefined)
		$(project): lss_$(project)
	endif
endif

define OPTIONAL_SIZE_COMMAND
	-$(COLOR) $(COLOR_SIZE)
	$(OBJ-SIZE) $$@ -C --mcu=$(MCU) | grep bytes
	-$(COLOR) off
endef

size_$(project)_%: $(BUILDDIR)/%.$(TARGET_SUFFIX)
	-$(COLOR) $(COLOR_SIZE)
	$(OBJ-SIZE) $< -C --mcu=$(MCU) | grep bytes
	-$(COLOR) off

# =====
# == AVRDUDE commands
# =====

# Define these things just once.
ifeq ($(origin AVRDUDE_COMMAND), undefined)

# -v : for verbose, -v -v : extra verbose.
# -n : do not write anything to device
# -e : perform chip-erase
# -V : do not verify written data
AVRDUDE_COMMAND := avrdude -P usb -c usbasp -p $(MCU)

# This command checks connection to the AVR and prints verbose information.
con:
	@echo Connecting to $(MCU)...
	-$(AVRDUDE_COMMAND) -n

endif

define do_flash
	-$(COLOR) $(COLOR_FLASH)
	@echo Flashing $2
	-$(COLOR) off
	$(AVRDUDE_COMMAND) $1 flash:r:$2
endef

flash_$(project)_%: $(BUILDDIR)/%.hex
	$(call do_flash, -U, $<)

flashv_$(project)_%: $(BUILDDIR)/%.hex
	$(call do_flash, -v -v -U, $<)

flash_$(project): $(BUILDDIR)/$(studio_output).hex
	$(call do_flash, -U, $<)

flashv_$(project): $(BUILDDIR)/$(studio_output).hex
	$(call do_flash, -v -v -U, $<)

.PHONY: flash_$(project) flashv_$(project) con
