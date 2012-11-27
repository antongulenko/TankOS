
# KEEP_WDT_ENABLED:=

ld_symbols := \
	millisecond_timer=Timer3 \
	millisecond_timer_A=Timer3A \
	millisecond_timer_B=Timer3B \
	__vector_32=MILLISECOND_TIMER_INTERRUPT

# TODO -- instead, of using preprocessor-symbols to configure the software timer and it's interrupts,
# try to use the linker by explicitely binding the differently named symbols together.
# Both for the timer structures/pointers and the interrupt-vector-functions!
symbols := \
	DISABLE_AC \
	ENABLE_SOFTWARE_TIMER_A \
	TWI_Buffer_Size=255
