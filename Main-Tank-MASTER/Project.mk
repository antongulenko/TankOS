LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared Kernel-Tank-MASTER

ifndef MAIN_$(project)
MAIN_$(project) := test_motors_forward
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

ld_symbols += __vector_33=__vector_SMOOTH_MOTOR_TIMER_INTERRUPT

include Main.mk
