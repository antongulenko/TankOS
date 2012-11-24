
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
