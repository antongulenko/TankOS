
LIBRARY :=
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include DefaultTankSymbols.mk

# No additional symbols

include Main.mk
