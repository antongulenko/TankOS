
undefine LIBRARY
dependencies := AntonAvrLib Tank-Shared Kernel-Tank-IO

project := $(get-basedir)
include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
