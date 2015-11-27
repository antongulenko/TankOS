
include Tank-Shared/avr_$(AVR_MCU)/Symbols.mk

ifeq ($(USE_MILLISECOND_TIMER), true)
ifeq ($(USE_SCHEDULER), true)
	ld_symbols += $(MILLISECOND_TIMER_ISR)=__vector_SCHEDULER_INTERRUPT
else
	ld_symbols += $(MILLISECOND_TIMER_ISR)=__vector_MILLISECOND_CLOCK_INTERRUPT
endif
endif

ifeq ($(KERNEL_LOG), true)
    ld_symbols += klog=klog_printf
endif
