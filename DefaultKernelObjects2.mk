
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

objects += $(OWN)/init.kernel.o
