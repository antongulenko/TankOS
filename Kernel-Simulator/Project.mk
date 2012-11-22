
LIBRARY :=
dependencies := AntonAvrLib Tank-Shared

BASEDIR := $(get-basedir)
include Defaults.mk
include DefaultTankSymbols.mk

# No additional symbols

include Main.mk
