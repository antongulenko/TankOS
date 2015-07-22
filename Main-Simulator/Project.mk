LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator

ifndef MAIN_$(project)
MAIN_$(project) := test_empty
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
