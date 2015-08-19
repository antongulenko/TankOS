
OWN := Kernel-Simulator/$(BUILD_DIRNAME)
include Tank-Shared/KernelObjects1.mk

ifeq ($(USE_TWI), true)
    objects += \
        $(KERNEL)/twi/driver/slave.kernel.o \
        $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
        $(KERNEL)/twi/services/hardware.kernel.o \
        $(KERNEL)/twi/services/test.kernel.o \
        $(OWN)/simulator_twi.kernel.o

    ifeq ($(USE_BUFFER_STDOUT), true)
        objects += $(KERNEL)/twi/services/buffer_stdout.kernel.o
    endif
endif

include Tank-Shared/KernelObjects2.mk
