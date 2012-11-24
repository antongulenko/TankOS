
undefine LIBRARY
dependencies := AntonAvrLib Tank-Shared Kernel-Tank-MASTER

project := $(get-basedir)
include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
