LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator Unity

ifndef MAIN_$(project)
MAIN_$(project) := TestRunner
endif

include Defaults.mk
$(project)_exclusive_platform :=
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
