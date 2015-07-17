LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Simulator Unity

MAIN_$(project) ?= TestRunner

USE_TWI := false
USE_SCHEDULER := true
USE_PROCESS_EXT := true
USE_BUFFER_STDOUT := true

include Defaults.mk
$(project)_exclusive_platform :=
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
