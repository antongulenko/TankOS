
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include DefaultTankSymbols.mk

USE_TWI:=
USE_PROCESS_EXT:=
USE_SMOOTH_MOTOR_INTERRUPT :=
ld_symbols := __vector_33=__vector_SMOOTH_MOTOR_TIMER_INTERRUPT

include Main.mk
