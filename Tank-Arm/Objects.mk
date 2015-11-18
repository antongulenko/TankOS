
include Tank-Shared/KernelObjects1.mk

objects += $(BUILD_Tank-Arm)/tank_arm_motor.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
        $(BUILD_TankOS)/platform/platform_Avr/twi/slave.kernel.o \
        $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o \
        $(BUILD_TankOS)/twi/services/hardware.kernel.o \
        $(BUILD_TankOS)/twi/services/example.kernel.o \
        $(BUILD_Tank-Arm)/tank_arm_twi.kernel.o \
        $(BUILD_Tank-Arm)/tank_arm_service.kernel.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(BUILD_TankOS)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
