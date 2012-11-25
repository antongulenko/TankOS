
# USE_TWI :=

# USE_SCHEDULER :=
# USE_PROCESS :=
# USE_PROCESS_EXT :=

# (USE_PROCESS_EXT takes precedence over USE_PROCESS and disables it.)

# USE_SMOOTH_MOTOR_INTERRUPT :=

# TWI_COMMAND_QUEUE :=
# TWI_COMMAND_QUEUE_SLEEP :=

# TODO -- instead, of using preprocessor-symbols to configure the software timer and it's interrupts,
# try to use the linker by explicitely binding the differently named symbols together.
# Both for the timer structures/pointers and the interrupt-vector-functions!

symbols := \
	ENABLE_SOFTWARE_TIMER_A \
	TWI_Buffer_Size=255 \
	MILLISECOND_TIMER_INTERRUPT=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_A=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_B=TIMER3_COMPB_vect \
	SOFTWARE_TIMER=Timer3 \
	SOFTWARE_TIMER_A=Timer3A \
	SOFTWARE_TIMER_B=Timer3B

# symbols += FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
# symbols += KEEP_WDT_ENABLED
