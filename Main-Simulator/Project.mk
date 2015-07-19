LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator

MAIN_$(project) ?= test_empty

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
