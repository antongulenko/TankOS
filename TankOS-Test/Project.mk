
LIBRARY := false
project := $(get-basedir)
include $(project)/Dependencies.mk

USE_TWI := false
USE_SCHEDULER := false
USE_PROCESS_EXT := false
STUDIO := false

include Defaults.mk

$(project)_exclusive_platform :=
includes += TankOS
ld_symbols := __heap_start=0x200

include Main.mk
