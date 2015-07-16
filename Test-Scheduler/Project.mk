
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

STUDIO:=

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

undefine USE_TWI
USE_SCHEDULER :=
USE_PROCESS_EXT :=

USE_BUFFER_STDOUT :=

include Main.mk
