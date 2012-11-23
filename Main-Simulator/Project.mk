
undefine LIBRARY
dependencies := AntonAvrLib Tank-Shared Kernel-Tank-IO

BASEDIR := $(get-basedir)
include Defaults.mk

# USE_SCHEDULER :=
USE_PROCESS_EXT :=

include DefaultTankSymbols.mk
include Main.mk
