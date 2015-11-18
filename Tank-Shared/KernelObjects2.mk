
# Processes can be used separately, without the scheduler.
ifeq ($(USE_PROCESS), true)
    ifeq ($(PLATFORM), Avr)
        objects += $(BUILD_TankOS)/platform/platform_Avr/process/process.kernel.o
    endif
    objects += $(BUILD_TankOS)/process/process.kernel.o
endif

ifeq ($(USE_SCHEDULER), true)
    objects += $(BUILD_TankOS)/process/scheduler_interrupt.kernel.o
    objects += $(BUILD_Tank-Shared)/scheduler.kernel.o
else
    objects += $(BUILD_TankOS)/kernel/simple_timer.kernel.o
endif

objects += $(BUILD_Tank-Shared)/late_init.kernel.o
