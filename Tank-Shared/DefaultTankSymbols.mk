
ld_symbols += \
    __vector_32=__vector_MILLISECOND_TIMER_INTERRUPT
    #__vector_33=...

ifeq ($(KERNEL_LOG), true)
    ld_symbols += klog=klog_printf
endif

symbols += __AVR_ATmega1284P__
