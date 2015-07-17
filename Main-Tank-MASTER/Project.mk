
LIBRARY := false
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

USE_TWI := true
USE_PROCESS_EXT := true
USE_SMOOTH_MOTOR_INTERRUPT := true
ld_symbols := __vector_33=__vector_SMOOTH_MOTOR_TIMER_INTERRUPT

include Main.mk
