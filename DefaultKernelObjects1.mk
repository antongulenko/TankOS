
KERNEL := AntonAvrLib/$(BUILD_DIRNAME)/kernel
SHARED := Tank-Shared/$(BUILD_DIRNAME)

ifneq ($(origin KEEP_WDT_ENABLED), undefined)
	obects += $(KERNEL)/reset_condition.kernel.o
else
	obects += $(KERNEL)/reset_condition_disable_wdt.kernel.o
endif

objects += \
	$(KERNEL)/devices/port_m1284P.kernel.o \
	$(KERNEL)/devices/timer_m1284P.kernel.o \
	$(SHARED)/timer.kernel.o \
	$(KERNEL)/processes/mutex/atomic_mutex.kernel.o \
	$(KERNEL)/sleep_after_main.kernel.o \
	$(KERNEL)/devices/analog.kernel.o \
	$(KERNEL)/devices/analog_m1284P.kernel.o
