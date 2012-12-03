
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

undefine USE_TWI
undefine USE_SCHEDULER
undefine USE_PROCESS_EXT
undefine STUDIO

include Defaults.mk

ld_symbols :=
include Main.mk
