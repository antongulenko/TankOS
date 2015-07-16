
include Tank-Shared/DefaultObjectVariables.mk
SHARED := Tank-Shared/$(BUILD_DIRNAME)

objects += \
    $(KERNEL)/early_init.kernel.o \
    $(KERNEL)/early_init_eeprom.kernel.o \
	$(KERNEL)/devices/port_m1284P.kernel.o \
	$(KERNEL)/devices/timer_m1284P.kernel.o \
	$(SHARED)/timer.kernel.o \
	$(KERNEL)/processes/mutex/atomic_mutex.kernel.o \
	$(KERNEL)/sleep_after_main.kernel.o \
	$(KERNEL)/devices/analog.kernel.o \
	$(KERNEL)/devices/analog_m1284P.kernel.o

ifneq ($(origin USE_BUFFER_STDOUT), undefined)
	objects += $(KERNEL)/buffer_stdout.kernel.o
endif

ifneq ($(origin USE_TWI), undefined)
	objects += $(SHARED)/twi.kernel.o
endif
