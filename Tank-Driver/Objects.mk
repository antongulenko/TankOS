
include Tank-Shared/KernelObjects1.mk

objects += $(BUILD_Tank-Driver)/tank_motor.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
        $(BUILD_TankOS)/platform/Avr/twi/slave.kernel.o \
        $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o \
        $(BUILD_TankOS)/twi/services/hardware.kernel.o \
        $(BUILD_TankOS)/twi/services/example.kernel.o \
        $(BUILD_Tank-Driver)/tank_driver_twi.kernel.o \
        $(BUILD_Tank-Driver)/tank_driver_service.kernel.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(BUILD_TankOS)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
