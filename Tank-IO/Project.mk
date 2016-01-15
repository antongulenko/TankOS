LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
ld_symbols += __vector_33=__vector_LED_CONTROL_INTERRUPT
include Main.mk
