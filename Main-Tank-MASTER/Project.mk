LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Tank-MASTER

MAIN_$(project) ?= test_motors_forward

USE_TWI := true
USE_PROCESS_EXT := true
USE_SMOOTH_MOTOR_INTERRUPT := true

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

ld_symbols += __vector_33=__vector_SMOOTH_MOTOR_TIMER_INTERRUPT

include Main.mk
