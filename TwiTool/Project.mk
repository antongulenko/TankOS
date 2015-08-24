LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := twi-tool
endif

include Defaults.mk
$(project)_exclusive_platform := Native
ld_symbols += klog=klog_printf
include Main.mk
