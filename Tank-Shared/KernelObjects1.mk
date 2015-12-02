
objects += \
    $(BUILD_TankOS)/platform/platform_Avr/early_init.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/early_init_eeprom.kernel.o

ifeq ($(USE_EEPROM_STDOUT), true)
	objects += $(BUILD_Tank-Shared)/avr_$(AVR_MCU)/eeprom_stdout.kernel.o
else
ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(BUILD_Tank-Shared)/avr_$(AVR_MCU)/buffer_stdout.kernel.o
endif
endif

objects += \
	$(BUILD_TankOS)/platform/platform_Avr/avr_$(AVR_MCU)/port.kernel.o \
    $(BUILD_Tank-Shared)/avr_$(AVR_MCU)/timer.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/atomic_mutex.kernel.o \
    $(BUILD_TankOS)/platform/platform_Avr/sleep_after_main.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o

ifeq ($(USE_TWI), true)
    objects += $(BUILD_Tank-Shared)/avr_$(AVR_MCU)/twi.kernel.o
endif
