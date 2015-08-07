
include Tank-Shared/KernelObjects1.mk

OWN := Kernel-Tank-IO/$(BUILD_DIRNAME)

objects += \
    $(OWN)/tank_led.kernel.o \
    $(OWN)/tank_button.kernel.o

ifeq ($(USE_TWI), true)
    objects += $(KERNEL)/twi/driver/slave.kernel.o
    objects += $(KERNEL)/twi/driver/slave_init.kernel.o
    objects += $(KERNEL)/twi/driver/master.kernel.o
    objects += $(KERNEL)/twi/rpc/server_handler_functions.kernel.o
    objects += $(OWN)/tank_io_twi.kernel.o
    # TODO add this later
    # objects += $(OWN)/tank_io_server.kernel.o
endif

include Tank-Shared/KernelObjects2.mk
