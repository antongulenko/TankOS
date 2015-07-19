LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator Unity

MAIN_$(project) ?= TestRunner

include Defaults.mk
$(project)_exclusive_platform :=
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
