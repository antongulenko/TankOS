LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Tank-IO

MAIN_$(project) ?= Main_empty

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
