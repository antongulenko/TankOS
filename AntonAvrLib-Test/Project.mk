
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

undefine USE_TWI
undefine USE_SCHEDULER
undefine USE_PROCESS_EXT

include DefaultTankSymbols.mk
include Main.mk
