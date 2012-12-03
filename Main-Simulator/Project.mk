
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

STUDIO:=

include Defaults.mk

undefine USE_TWI
USE_SCHEDULER :=
USE_PROCESS_EXT :=

include DefaultTankSymbols.mk
include Main.mk
