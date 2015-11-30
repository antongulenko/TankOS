
objects += \
	$(BUILD_TankOS)/platform/platform_Avr/avr_$(AVR_MCU)/port.kernel.o \
	$(BUILD_TankOS)/platform/platform_Avr/early_init.kernel.o \
	$(BUILD_TankOS)/platform/platform_Avr/sleep_after_main.kernel.o \
	$(BUILD_TankOS)/platform/platform_Avr/atomic_mutex.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o

objects += $(BUILD_USB-to-TWI)/Init.kernel.o

ifeq ($(USE_BUFFER_STDOUT), true)
    objects += $(BUILD_Tank-Shared)/avr_$(AVR_MCU)/buffer_stdout.kernel.o
endif

objects_$(project)_Main.main := $(objects)
objects_$(project)_Main.main += $(BUILD_USB-to-TWI)/usb_twi_protocol.kernel.o
