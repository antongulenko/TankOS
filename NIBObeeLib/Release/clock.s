	.file	"clock.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.clock_sec_irq_hook,"ax",@progbits
	.weak	clock_sec_irq_hook
	.type	clock_sec_irq_hook, @function
clock_sec_irq_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	clock_sec_irq_hook, .-clock_sec_irq_hook
	.section	.text.clock_hundredth_irq_hook,"ax",@progbits
	.weak	clock_hundredth_irq_hook
	.type	clock_hundredth_irq_hook, @function
clock_hundredth_irq_hook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	clock_hundredth_irq_hook, .-clock_hundredth_irq_hook
	.section	.text.clock_inc_irq,"ax",@progbits
.global	clock_inc_irq
	.type	clock_inc_irq, @function
clock_inc_irq:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	lds r18,clock_us
	lds r19,clock_us+1
	add r22,r18
	adc r23,r19
	sts clock_us+1,r23
	sts clock_us,r22
	ldi r18,hi8(1000)
	cpi r22,lo8(1000)
	cpc r23,r18
	brlo .L4
	subi r22,lo8(-(-1000))
	sbci r23,hi8(-(-1000))
	sts clock_us+1,r23
	sts clock_us,r22
	lds r18,clock_ms
	lds r19,clock_ms+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts clock_ms+1,r19
	sts clock_ms,r18
	lds r25,clock_10ms
	subi r25,lo8(-(1))
	sts clock_10ms,r25
	lds r18,clock_waitms
	lds r19,clock_waitms+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L8
.L4:
	lds r25,clock_10ms
	add r25,r24
	sts clock_10ms,r25
	lds r25,clock_10ms
	cpi r25,lo8(10)
	brlo .+2
	rjmp .L9
.L5:
	lds r18,clock_ms
	lds r19,clock_ms+1
	add r18,r24
	adc r19,__zero_reg__
	sts clock_ms+1,r19
	sts clock_ms,r18
	lds r24,clock_ms
	lds r25,clock_ms+1
	ldi r30,hi8(1000)
	cpi r24,lo8(1000)
	cpc r25,r30
	brlo .L3
	lds r24,clock_ms
	lds r25,clock_ms+1
	subi r24,lo8(-(-1000))
	sbci r25,hi8(-(-1000))
	sts clock_ms+1,r25
	sts clock_ms,r24
	lds r24,clock_sec
	lds r25,clock_sec+1
	lds r26,clock_sec+2
	lds r27,clock_sec+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts clock_sec,r24
	sts clock_sec+1,r25
	sts clock_sec+2,r26
	sts clock_sec+3,r27
	call clock_sec_irq_hook
.L3:
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.L8:
	lds r18,clock_waitms
	lds r19,clock_waitms+1
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sts clock_waitms+1,r19
	sts clock_waitms,r18
	rjmp .L4
.L9:
	lds r25,clock_10ms
	subi r25,lo8(-(-10))
	sts clock_10ms,r25
	std Y+1,r24
	call clock_hundredth_irq_hook
	ldd r24,Y+1
	rjmp .L5
	.size	clock_inc_irq, .-clock_inc_irq
	.section	.text.clock_sleep,"ax",@progbits
.global	clock_sleep
	.type	clock_sleep, @function
clock_sleep:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r18,__SREG__
/* #APP */
 ;  50 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts clock_waitms+1,r25
	sts clock_waitms,r24
	lds r24,clock_waitms
	lds r25,clock_waitms+1
	sbiw r24,0
	brne .L13
	out __SREG__,r18
/* epilogue start */
	ret
.L13:
	in r24,83-32
	ori r24,lo8(1)
	out 83-32,r24
/* #APP */
 ;  44 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
 ;  100 "../../../NIBObeeLib/src/nibobee/clock.c" 1
	sleep
	
 ;  0 "" 2
 ;  63 "c:\program files (x86)\atmel\avr studio 5.0\avr toolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	in r24,83-32
	andi r24,lo8(-2)
	out 83-32,r24
	lds r24,clock_waitms
	lds r25,clock_waitms+1
	sbiw r24,0
	brne .L13
	out __SREG__,r18
/* epilogue start */
	ret
	.size	clock_sleep, .-clock_sleep
	.comm clock_ms,2,1
	.comm clock_sec,4,1
	.comm clock_us,2,1
	.comm clock_waitms,2,1
	.comm clock_10ms,1,1
.global __do_clear_bss
