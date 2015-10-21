LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
ld_symbols += __vector_13=__vector_STEP_MOTOR_TIMER_INTERRUPT
include Main.mk
