
objects += \
    $(BUILD_TankOS)/kernel/early_init.kernel.o \
    $(BUILD_TankOS)/kernel/early_init_eeprom.kernel.o \
    $(BUILD_TankOS)/m1284P/port.kernel.o \
    $(BUILD_Tank-Shared)/timer.kernel.o \
    $(BUILD_TankOS)/mutex/atomic_mutex.kernel.o \
    $(BUILD_TankOS)/kernel/sleep_after_main.kernel.o \
    $(BUILD_TankOS)/devices/analog.kernel.o \
    $(BUILD_TankOS)/m1284P/analog.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(BUILD_TankOS)/kernel/buffer_stdout.kernel.o
endif

ifeq ($(USE_TWI), true)
    objects += $(BUILD_Tank-Shared)/twi.kernel.o
endif
