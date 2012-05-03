	.file	"scheduler.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.schedule_next,"ax",@progbits
.global	schedule_next
	.type	schedule_next, @function
schedule_next:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call schedule
	sbiw r24,0
	breq .L1
	call switchProcess
.L1:
	ret
	.size	schedule_next, .-schedule_next
	.section	.text.processor_idle,"ax",@progbits
.global	processor_idle
	.type	processor_idle, @function
processor_idle:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,83-32
	ori r24,lo8(1)
	out 83-32,r24
	in r24,83-32
	andi r24,lo8(-15)
	out 83-32,r24
/* #APP */
 ;  27 "../kernel/processes/scheduler.c" 1
	sei
 ;  0 "" 2
 ;  28 "../kernel/processes/scheduler.c" 1
	sleep
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	processor_idle, .-processor_idle
	.section	.text.processor_loop_idle,"ax",@progbits
.global	processor_loop_idle
	.type	processor_loop_idle, @function
processor_loop_idle:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L6:
	in r24,83-32
	ori r24,lo8(1)
	out 83-32,r24
	in r24,83-32
	andi r24,lo8(-15)
	out 83-32,r24
/* #APP */
 ;  27 "../kernel/processes/scheduler.c" 1
	sei
 ;  0 "" 2
 ;  28 "../kernel/processes/scheduler.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L6
	.size	processor_loop_idle, .-processor_loop_idle
