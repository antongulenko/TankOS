
LIBRARY := false
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk
include Main.mk
