LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared USB-to-TWI

ifndef MAIN_$(project)
MAIN_$(project) := twi-tool
endif

include Defaults.mk
$(project)_exclusive_platform := Native
$(project)_linkerFlags := -lpthread -L/usr/lib/x86_64-linux-gnu -lusb-1.0
ld_symbols += klog=klog_printf
include Main.mk
