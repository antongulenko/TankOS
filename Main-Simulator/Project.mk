LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator

MAIN_$(project) ?= test_empty

USE_TWI := false
USE_SCHEDULER := true
USE_PROCESS_EXT := true

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
