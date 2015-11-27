
include Tank-Shared/KernelObjects1.mk

objects += $(BUILD_USB-to-TWI)/Init.kernel.o
objects += $(BUILD_USB-to-TWI)/usb_twi_protocol.kernel.o
# objects += $(BUILD_USB-to-TWI)/usb_mock.kernel.o

include Tank-Shared/KernelObjects2.mk
