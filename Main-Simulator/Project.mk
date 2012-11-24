
undefine LIBRARY
dependencies := AntonAvrLib Tank-Shared Kernel-Simulator

project := $(get-basedir)
include Defaults.mk

# USE_SCHEDULER :=
USE_PROCESS_EXT :=

include DefaultTankSymbols.mk
include Main.mk
