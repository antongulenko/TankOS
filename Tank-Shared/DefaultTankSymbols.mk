
ifeq ($(AVR_MCU), atmega1284p)
	ld_symbols += __vector_32=__vector_MILLISECOND_TIMER_INTERRUPT
endif
ifeq ($(AVR_MCU), attiny84)
	ld_symbols += __vector_6=__vector_MILLISECOND_TIMER_INTERRUPT
endif

ifeq ($(KERNEL_LOG), true)
    ld_symbols += klog=klog_printf
endif
