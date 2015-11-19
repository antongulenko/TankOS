LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

symbols += STDOUT_BUFFER_SIZE=64

include Main.mk
