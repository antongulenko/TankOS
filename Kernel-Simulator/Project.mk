
LIBRARY :=
dependencies := AntonAvrLib Tank-Shared

project := $(get-basedir)
include Defaults.mk
include DefaultTankSymbols.mk

# No additional symbols

include Main.mk
