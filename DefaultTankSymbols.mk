
# KEEP_WDT_ENABLED:=

# TODO -- instead, of using preprocessor-symbols to configure the software timer and it's interrupts,
# try to use the linker by explicitely binding the differently named symbols together.
# Both for the timer structures/pointers and the interrupt-vector-functions!
symbols := \
	DISABLE_AC \
	ENABLE_SOFTWARE_TIMER_A \
	TWI_Buffer_Size=255 \
	MILLISECOND_TIMER_INTERRUPT=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_A=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_B=TIMER3_COMPB_vect \
	SOFTWARE_TIMER=Timer3 \
	SOFTWARE_TIMER_A=Timer3A \
	SOFTWARE_TIMER_B=Timer3B
