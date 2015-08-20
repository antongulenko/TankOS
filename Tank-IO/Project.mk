LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main_empty
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
