LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := twi-tool
endif

include Defaults.mk

symbols += RPC_CLIENT_FUNCTION_REGISTRY
$(project)_exclusive_platform := Native

include Main.mk
