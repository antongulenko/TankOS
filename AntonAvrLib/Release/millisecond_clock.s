	.file	"millisecond_clock.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.get_milliseconds_running,"ax",@progbits
.global	get_milliseconds_running
	.type	get_milliseconds_running, @function
get_milliseconds_running:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	get_milliseconds_running, .-get_milliseconds_running
