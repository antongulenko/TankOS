
include Tank-Shared/KernelObjects1.mk

OWN := Kernel-Tank-IO/$(BUILD_DIRNAME)

objects += \
    $(OWN)/tank_led.kernel.o \
    $(OWN)/tank_button.kernel.o \
    $(OWN)/tank_button_interrupts.kernel.o

ifeq ($(USE_TWI), true)
    objects += \
        $(KERNEL)/twi/driver/slave.kernel.o \
        $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
        $(KERNEL)/twi/services/hardware.kernel.o \
        $(KERNEL)/twi/services/test.kernel.o \
        $(OWN)/tank_io_twi.kernel.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(KERNEL)/twi/services/buffer_stdout.kernel.o
    endif

    # TODO add this later
    # objects += $(OWN)/tank_io_server.kernel.o
endif

include Tank-Shared/KernelObjects2.mk
