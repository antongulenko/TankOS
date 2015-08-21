
objects += \
    $(KERNEL)/early_init.kernel.o \
    $(KERNEL)/early_init_eeprom.kernel.o \
    $(BUILD_TankOS)/m1284P/port.kernel.o \
    $(BUILD_Tank-Shared)/timer.kernel.o \
    $(KERNEL)/mutex/atomic_mutex.kernel.o \
    $(KERNEL)/sleep_after_main.kernel.o \
    $(KERNEL)/devices/analog.kernel.o \
    $(BUILD_TankOS)/m1284P/analog.kernel.o \
    $(BUILD_TankOS)/misc/klib.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(KERNEL)/buffer_stdout.kernel.o
endif

ifeq ($(USE_TWI), true)
    objects += $(BUILD_Tank-Shared)/twi.kernel.o
endif
