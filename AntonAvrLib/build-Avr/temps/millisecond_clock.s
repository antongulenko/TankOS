	.file	"millisecond_clock.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.text
.global	get_milliseconds_running
	.type	get_milliseconds_running, @function
get_milliseconds_running:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r16,milliseconds_running
	lds r17,milliseconds_running+1
	lds r18,milliseconds_running+2
	lds r19,milliseconds_running+3
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	movw r22,r16
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	get_milliseconds_running, .-get_milliseconds_running
