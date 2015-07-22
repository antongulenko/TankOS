LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

MAIN_$(project) ?= twi-tool

include Defaults.mk

$(project)_exclusive_platform := Native

include Main.mk
