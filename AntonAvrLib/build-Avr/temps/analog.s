	.file	"analog.c"
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
	.type	startConversion.isra.2, @function
startConversion.isra.2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(124)
	ldi r31,hi8(124)
	ld r18,Z
	movw r26,r24
	ld r25,X
	mov r24,r25
	com r24
	ori r24,lo8(-32)
	andi r25,lo8(31)
	or r25,r18
	and r24,r25
	st Z,r24
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(122)
	ldi r31,hi8(122)
	ld r24,Z
	ori r24,lo8(-64)
	st Z,r24
/* epilogue start */
	ret
	.size	startConversion.isra.2, .-startConversion.isra.2
.global	analogRead
	.type	analogRead, @function
analogRead:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r18,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r19,122
	out __SREG__,r18
	sbrs r19,6
	rjmp .L3
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ret
.L3:
	sts analogCallbackFunction+1,r23
	sts analogCallbackFunction,r22
	lds r18,122
	ori r18,lo8(8)
	sts 122,r18
	adiw r24,2
	call startConversion.isra.2
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ret
	.size	analogRead, .-analogRead
.global	analogReadLoop
	.type	analogReadLoop, @function
analogReadLoop:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r22
	in r18,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.4.0.65\avrtoolchain\bin\../lib/gcc/avr/4.6.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r19,122
	out __SREG__,r18
	sbrs r19,6
	rjmp .L6
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L7
.L6:
	lds r18,122
	andi r18,lo8(-9)
	sts 122,r18
	adiw r24,2
	call startConversion.isra.2
.L8:
	lds r24,122
	sbrc r24,6
	rjmp .L8
	lds r24,121
	st Y,r24
	lds r24,122
	andi r24,lo8(-17)
	sts 122,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.L7:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	analogReadLoop, .-analogReadLoop
	.comm analogCallbackFunction,2,1
