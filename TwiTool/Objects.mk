include Tank-Shared/DefaultObjectVariables.mk

objects += \
    $(KERNEL)/mutex/mock_mutex.kernel.o \
    $(KERNEL_BASE)/misc/klib.kernel.o \
    $(KERNEL_BASE)/simulation/simulation.kernel.o \
    $(KERNEL)/twi/services/test.o \
    $(KERNEL)/twi/services/test_client.kernel.o \
    $(KERNEL)/twi/services/hardware.o \
    $(KERNEL)/twi/services/hardware_client.kernel.o \
    $(KERNEL)/twi/services/buffer_stdout.o \
    $(KERNEL)/twi/services/buffer_stdout_client.kernel.o
