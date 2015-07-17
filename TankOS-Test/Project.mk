LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Unity

USE_TWI := false
USE_SCHEDULER := false
USE_PROCESS_EXT := false

ld_symbols := __heap_start=0x200

include Defaults.mk
# TODO fix tests to compile in Avr platform
$(project)_exclusive_platform := Native
include Main.mk
