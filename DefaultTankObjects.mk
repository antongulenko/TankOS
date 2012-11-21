
KERNEL := AntonAvrLib/$(BUILD_DIRNAME)/kernel
SHARED := Tank-Shared/$(BUILD_DIRNAME)

objects += \
	$(KERNEL)/reset_condition.kernel.o	\
	$(KERNEL)/devices/port_m1284P.kernel.o \
	$(KERNEL)/devices/timer_m1284P.kernel.o \
	$(SHARED)/timer.kernel.o \
	$(KERNEL)/processes/mutex/atomic_mutex.kernel.o \
	$(KERNEL)/sleep_after_main.kernel.o \
	$(KERNEL)/devices/analog_m1284P.kernel.o

ifeq ($(origin USE_SCHEDULER), undefined)
	objects += $(KERNEL)/simple_timer.kernel.o
else
	objects += \
		$(KERNEL)/processes/scheduler.kernel.o \
		$(KERNEL)/processes/process_ext.kernel.o \
		$(KERNEL)/processes/DMS/dms_scheduler.kernel.o \
		$(KERNEL)/processes/RoundRobin/rr_scheduler.kernel.o \
		$(KERNEL)/processes/idle/idle_scheduler.kernel.o \
		$(BUILDDIR)/scheduler.kernel.o
endif
