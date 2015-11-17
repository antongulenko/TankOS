
objects += \
    $(BUILD_TankOS)/platform/Avr/early_init.kernel.o \
    $(BUILD_TankOS)/platform/Avr/early_init_eeprom.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(BUILD_TankOS)/platform/Avr/buffer_stdout.kernel.o
endif

objects += \
    $(BUILD_TankOS)/platform/Avr/m1284P/port.kernel.o \
    $(BUILD_Tank-Shared)/timer.kernel.o \
    $(BUILD_TankOS)/platform/Avr/atomic_mutex.kernel.o \
    $(BUILD_TankOS)/platform/Avr/sleep_after_main.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o

ifeq ($(USE_TWI), true)
    objects += $(BUILD_Tank-Shared)/twi.kernel.o
endif
