
LIBRARY :=
dependencies := AntonAvrLib Tank-Shared

project := $(get-basedir)
include DefaultTankSymbols.mk

# == Motor adjustment step ==
# Resolution is 16 bit (65535), one adjustment each millisecond
# -> acceleration from min to max in 500 ms.
symbols += MOTOR_ADJUSTMENT_STEP=130

include Defaults.mk
include Main.mk
