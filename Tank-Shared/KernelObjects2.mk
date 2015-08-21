
# Processes can be used separately, without the scheduler.
ifeq ($(USE_PROCESS), true)
    ifeq ($(PLATFORM), Avr)
        objects += $(KERNEL)/processes/avr/process.kernel.o
    endif
endif

ifeq ($(USE_SCHEDULER), true)
    objects += $(KERNEL)/processes/scheduler_interrupt.kernel.o
    objects += $(BUILD_Tank-Shared)/scheduler.kernel.o
else
    objects += $(KERNEL)/simple_timer.kernel.o
endif

objects += $(BUILD_Tank-Shared)/late_init.kernel.o
