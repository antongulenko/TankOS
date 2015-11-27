LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main_empty
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
ld_symbols += __vector_33=__vector_SMOOTH_MOTOR_TIMER_INTERRUPT
ld_symbols += __vector_13=__vector_ANALOG_INPUT_TIMER_INTERRUPT
include Main.mk
