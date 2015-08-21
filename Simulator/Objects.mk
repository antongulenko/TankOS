
include Tank-Shared/KernelObjects1.mk

# Simulate Tank IO
objects += \
    $(BUILD_Tank-IO)/tank_led.kernel.o \
    $(BUILD_Tank-IO)/tank_button.kernel.o \
    $(BUILD_Tank-IO)/tank_button_interrupts.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
        $(KERNEL)/twi/driver/slave.kernel.o \
        $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
        $(KERNEL)/twi/services/hardware.kernel.o \
        $(KERNEL)/twi/services/test.kernel.o \
        $(BUILD_Simulator)/simulator_twi.kernel.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(KERNEL)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
