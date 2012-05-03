	.file	"Main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.processEntry,"ax",@progbits
.global	processEntry
	.type	processEntry, @function
processEntry:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.L2:
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sbci r20,hlo8(-(1))
	sbci r21,hhi8(-(1))
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	rjmp .L2
	.size	processEntry, .-processEntry
	.section	.text.before_scheduler,"ax",@progbits
.global	before_scheduler
	.type	before_scheduler, @function
before_scheduler:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	call getCurrentThread
	sts threads+1,r25
	sts threads,r24
	ldi r16,lo8(threads+2)
	ldi r17,hi8(threads+2)
	ldi r28,lo8(1)
	ldi r29,hi8(1)
.L5:
	movw r20,r28
	subi r20,lo8(-(counters))
	sbci r21,hi8(-(counters))
	ldi r24,lo8(gs(processEntry))
	ldi r25,hi8(gs(processEntry))
	ldi r22,lo8(5)
	ldi r23,hi8(5)
	call createThread3
	movw r30,r16
	st Z+,r24
	st Z+,r25
	movw r16,r30
	adiw r28,1
	cpi r28,20
	cpc r29,__zero_reg__
	brne .L5
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	before_scheduler, .-before_scheduler
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L8:
	lds r24,counters
	lds r25,counters+1
	lds r26,counters+2
	lds r27,counters+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts counters,r24
	sts counters+1,r25
	sts counters+2,r26
	sts counters+3,r27
	rjmp .L8
	.size	main, .-main
	.comm counters,80,1
	.comm threads,40,1
.global __do_clear_bss
