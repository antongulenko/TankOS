LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Tank-MASTER

ifndef MAIN_$(project)
MAIN_$(project) := Main_empty
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Kernel-Tank-MASTER/KernelSymbols.mk
include Main.mk
