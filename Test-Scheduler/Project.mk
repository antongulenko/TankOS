
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

undefine USE_TWI
# USE_SCHEDULER :=
USE_PROCESS_EXT :=

USE_BUFFER_STDOUT :=

include DefaultTankSymbols.mk
include Main.mk
