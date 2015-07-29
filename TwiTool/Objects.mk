include Tank-Shared/DefaultObjectVariables.mk

objects += \
    $(KERNEL)/twi/services/test.kernel.o \
    $(KERNEL)/twi/services/test.o \
    $(KERNEL)/twi/services/hardware.o \
    $(KERNEL)/twi/services/hardware.kernel.o \
    $(KERNEL)/twi/services/buffer_stdout.kernel.o \
    $(KERNEL)/twi/services/buffer_stdout.o \
    $(KERNEL)/mutex/mock_mutex.kernel.o \
    $(KERNEL_BASE)/simulation/simulation.kernel.o
