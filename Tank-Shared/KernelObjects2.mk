
# Processes can be used separately, without the scheduler.
ifeq ($(USE_PROCESS), true)
    ifeq ($(PLATFORM), Avr)
        objects += $(KERNEL)/processes/avr/process.kernel.o
    endif
endif

ifeq ($(USE_SCHEDULER), true)
    ifeq ($(PLATFORM), Avr)
        objects += $(KERNEL)/processes/avr/scheduler_interrupt.kernel.o
    endif
    objects += $(SHARED)/scheduler.kernel.o
else
    objects += $(KERNEL)/simple_timer.kernel.o
endif

objects += \
    $(SHARED)/late_init_default.kernel.o \
    $(SHARED)/late_init.kernel.o
