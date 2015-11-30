LIBRARY := false
project := $(get-basedir)
dependencies := TankOS Tank-Shared

ifndef MAIN_$(project)
MAIN_$(project) := Main
endif

include Defaults.mk
include Tank-Shared/DefaultTankSymbols.mk

# The entire project (usbdrv/ subfolder) has to be rebuilt when changing this!
ifeq ($(MAIN_$(project)),Main_mouse)
symbols += USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH=52
else
symbols += USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH=22
endif

include Main.mk
