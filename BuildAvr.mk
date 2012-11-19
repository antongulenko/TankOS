
CC := avr-gcc
AR := avr-ar
OBJ-COPY := avr-objcopy
OBJ-DUMP := avr-objdump
OBJ-SIZE := avr-size

MCU := atmega1284p
MCUFLAG := -mmcu=$(MCU)

BASE_FLAGS := $(MCUFLAG) $(INCLUDE_FLAGS) \
	-std=gnu99 \
	-DAVR \
	-DF_CPU=20000000 \
	-Wall

# Compile & assemble, do not link yet
CFLAGS_RELEASE := $(BASE_FLAGS) -c
ifeq ($(origin SPEED), undefined)
CFLAGS_RELEASE := $(CFLAGS_RELEASE) -Os
else
CFLAGS_RELEASE := $(CFLAGS_RELEASE) -O3
endif
CFLAGS_DEBUG := $(BASE_FLAGS) -O1 -g3 -c

LIB_SUFFIX := a
TARGET_SUFFIX := elf

# the start-group/end-group flags cause the linker to handle circular dependencies.
# The objects/libraries are scanned multiple times, until all dependencies are resolved. Link-time is increased, but this is the only way.
LDFLAGS_START := $(MCUFLAG) \
	-Wl,-Map="$(target).map" \
	-Wl,--start-group \
	$(LIB_FLAGS)

# This part of the linker flags is split off to include the objects of the current project into the start-group/end-group closure
LDFLAGS_END := -Wl,--end-group -lm
# TODO -- check these linker flags!
# -Wl,--gc-sections --rodata-writable -mrelax -Wl,--defsym=__stack=0x4000

DEPENDENCY_FLAGS := $(BASE_FLAGS) -MM
OBJSIZE_FLAGS := -C --mcu=$(MCU)
ARFLAGS := -r

# Time: 130ms
$(target).hex: $(target).elf
	$(OBJ-COPY) -O ihex -R .eeprom -R .fuse -R .lock -R .signature $< $@

# Time: 70ms
$(target).eep: $(target).elf
	$(OBJ-COPY) -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex $< $@

# Time: 670ms (!)
$(target).lss: $(target).elf
	$(OBJ-DUMP) -h -S $< > $@

# Shortcuts for execution from console
hex_$(project): $(target).hex
eep_$(project): $(target).eep
lss_$(project): $(target).lss

# Aways build the hex-files automatically when linking.
link_$(project): hex_$(project)

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
	echo Connecting to $(MCU)...
	$(AVRDUDE_COMMAND) -n

endif

flash_$(project): $(target).hex
	$(AVRDUDE_COMMAND) -U flash:r:$<

flashv_$(project): $(target).hex
	$(AVRDUDE_COMMAND) -v -v -U flash:r:$<

.PHONY: flash_$(project) flashv_$(project)
