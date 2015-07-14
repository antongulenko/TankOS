
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

undefine USE_TWI
undefine USE_SCHEDULER
undefine USE_PROCESS_EXT
undefine STUDIO

include Defaults.mk

undefine $(project)_exclusive_platform
includes += TankOS
ld_symbols := __heap_start=0x200

include Main.mk
