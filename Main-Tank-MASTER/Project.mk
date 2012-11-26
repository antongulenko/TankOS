
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

USE_SMOOTH_MOTOR_INTERRUPT :=

include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
