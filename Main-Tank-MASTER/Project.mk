
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include DefaultTankSymbols.mk

USE_SMOOTH_MOTOR_INTERRUPT :=
ld_symbols := __vector_33=SMOOTH_MOTOR_TIMER_INTERRUPT

include Main.mk
