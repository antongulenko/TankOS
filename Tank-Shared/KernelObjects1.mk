
include Tank-Shared/DefaultObjectVariables.mk
SHARED := Tank-Shared/$(BUILD_DIRNAME)

objects += \
    $(KERNEL)/early_init.kernel.o \
    $(KERNEL)/early_init_eeprom.kernel.o \
    $(KERNEL_BASE)/m1284P/port.kernel.o \
    $(KERNEL_BASE)/m1284P/timer.kernel.o \
    $(SHARED)/timer.kernel.o \
    $(KERNEL)/mutex/atomic_mutex.kernel.o \
    $(KERNEL)/sleep_after_main.kernel.o \
    $(KERNEL)/devices/analog.kernel.o \
    $(KERNEL_BASE)/m1284P/analog.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(KERNEL)/buffer_stdout.kernel.o
endif

ifeq ($(USE_TWI), true)
    objects += $(SHARED)/twi.kernel.o
endif
