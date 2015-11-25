
# TODO HACK fix.
use_twi_tmp := $(USE_TWI)
USE_TWI := false
include Tank-Shared/KernelObjects1.mk
USE_TWI := $(use_twi_tmp)

objects += $(BUILD_USB-to-TWI)/Init.kernel.o
objects += $(BUILD_USB-to-TWI)/usb_twi_protocol.kernel.o
# objects += $(BUILD_USB-to-TWI)/usb_mock.kernel.o

include Tank-Shared/KernelObjects2.mk
