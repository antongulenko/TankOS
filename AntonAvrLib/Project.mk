
LIBRARY :=
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

undefine $(project)_exclusive_platform

include DefaultTankSymbols.mk
include Main.mk
