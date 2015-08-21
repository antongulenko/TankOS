
include Tank-Shared/KernelObjects1.mk

objects += $(BUILD_Tank-Driver)/tank_motor.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
        $(KERNEL)/twi/driver/slave.kernel.o \
        $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
        $(KERNEL)/twi/services/hardware.kernel.o \
        $(KERNEL)/twi/services/test.kernel.o \
        $(BUILD_Tank-Driver)/tank_driver_twi.kernel.o
        # TODO -- add service for Motors operations

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(KERNEL)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
