
objects += \
    $(BUILD_TankOS)/platform/platform_Avr/early_init.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/early_init_eeprom.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(BUILD_TankOS)/platform/platform_Avr/buffer_stdout.kernel.o
endif

objects += \
    $(BUILD_TankOS)/platform/platform_Avr/avr_atmega1284p/port.kernel.o \
    $(BUILD_Tank-Shared)/timer.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/atomic_mutex.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/sleep_after_main.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o

ifeq ($(USE_TWI), true)
    objects += $(BUILD_Tank-Shared)/twi.kernel.o
endif
