
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

# USE_SCHEDULER :=
USE_PROCESS_EXT :=

include DefaultTankSymbols.mk
include Main.mk
