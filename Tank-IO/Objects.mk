
include Tank-Shared/KernelObjects1.mk

objects += \
    $(BUILD_Tank-IO)/tank_led.kernel.o \
    $(BUILD_Tank-IO)/tank_button.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/avr_atmega1284p/pin_change.kernel.o \
    $(BUILD_Tank-IO)/tank_button_interrupts.kernel.o \
    $(BUILD_Tank-IO)/led_info.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
    	$(BUILD_TankOS)/platform/platform_Avr/avr_atmega1284p/twi/slave.kernel.o \
        $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o \
        $(BUILD_TankOS)/twi/services/hardware.kernel.o \
        $(BUILD_TankOS)/twi/services/example.kernel.o \
        $(BUILD_Tank-IO)/tank_io_twi.kernel.o \
        $(BUILD_Tank-IO)/tank_io_service.kernel.o \
        $(BUILD_Tank-Driver)/tank_driver_service.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(BUILD_TankOS)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
