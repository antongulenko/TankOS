
LIBRARY := false
project := $(get-basedir)
include $(project)/Dependencies.mk

STUDIO := false

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
