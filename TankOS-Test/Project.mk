LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Unity

include Defaults.mk

ld_symbols += __heap_start=0x200
symbols += RPC_CLIENT_FUNCTION_REGISTRY

# TODO fix tests to compile in Avr platform
$(project)_exclusive_platform := Native
include Main.mk
