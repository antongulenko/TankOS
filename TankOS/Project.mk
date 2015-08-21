LIBRARY := true
project := $(get-basedir)
dependencies :=

include Defaults.mk
$(project)_exclusive_platform :=
include Main.mk

KERNEL := $(BUILD_TankOS)/kernel
