
OWN := Kernel-Simulator/$(BUILD_DIRNAME)
include Tank-Shared/KernelObjects1.mk

ifeq ($(USE_TWI), true)
    objects += \
        $(KERNEL)/twi/driver/slave.kernel.o \
        $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
        $(OWN)/simulator_twi.kernel.o
endif

include Tank-Shared/KernelObjects2.mk
