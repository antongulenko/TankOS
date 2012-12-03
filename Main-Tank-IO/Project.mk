
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

undefine STUDIO

include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
