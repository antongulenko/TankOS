
KERNEL := AntonAvrLib/$(BUILD_DIRNAME)/kernel
SHARED := Tank-Shared/$(BUILD_DIRNAME)

objects += \
	$(KERNEL)/reset_condition.kernel.o	\
	$(KERNEL)/devices/port_m1284P.kernel.o \
	$(KERNEL)/devices/timer_m1284P.kernel.o \
	$(SHARED)/timer.kernel.o \
	$(KERNEL)/processes/mutex/atomic_mutex.kernel.o \
	$(KERNEL)/sleep_after_main.kernel.o \
	$(KERNEL)/devices/analog.kernel.o \
	$(KERNEL)/devices/analog_m1284P.kernel.o

# process_base and process_ext can be used separately, without the scheduler.
ifneq ($(origin USE_PROCESS_EXT), undefined)
	objects += $(KERNEL)/processes/process_ext.kernel.o
else
ifneq ($(origin USE_PROCESS), undefined)
	objects += $(KERNEL)/processes/process_base.kernel.o
endif
endif

ifneq ($(origin USE_SCHEDULER), undefined)
	objects += $(KERNEL)/processes/scheduler.kernel.o
	objects += $(SHARED)/scheduler.kernel.o
else
	objects += $(KERNEL)/simple_timer.kernel.o
endif
