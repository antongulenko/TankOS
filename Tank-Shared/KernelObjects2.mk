
# process_base and process_ext can be used separately, without the scheduler.
ifeq ($(USE_PROCESS_EXT), true)
    objects += $(KERNEL)/processes/process_ext.kernel.o
else
ifeq ($(USE_PROCESS), true)
    objects += $(KERNEL)/processes/process_base.kernel.o
endif
endif

ifeq ($(origin USE_SCHEDULER), true)
    objects += $(KERNEL)/processes/scheduler.kernel.o
    objects += $(SHARED)/scheduler.kernel.o
else
    objects += $(KERNEL)/simple_timer.kernel.o
endif

objects += \
    $(SHARED)/late_init_default.kernel.o \
    $(SHARED)/late_init.kernel.o
