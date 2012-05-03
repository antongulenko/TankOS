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
	.section	.text.SCHEDULER_TICK,"ax",@progbits
.global	SCHEDULER_TICK
	.type	SCHEDULER_TICK, @function
SCHEDULER_TICK:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  22 "../processes/scheduler.c" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
/* #NOAPP */
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts milliseconds_running,r24
	sts milliseconds_running+1,r25
	sts milliseconds_running+2,r26
	sts milliseconds_running+3,r27
/* #APP */
 ;  27 "../processes/scheduler.c" 1
	lds r26, __current_process
 ;  0 "" 2
 ;  28 "../processes/scheduler.c" 1
	lds r27, __current_process + 1
 ;  0 "" 2
 ;  29 "../processes/scheduler.c" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call schedule
	sts __current_process+1,r25
	sts __current_process,r24
	sbiw r24,0
	brne .+2
	rjmp .L4
.L2:
/* #APP */
 ;  35 "../processes/scheduler.c" 1
	movw r26, r24
 ;  0 "" 2
 ;  36 "../processes/scheduler.c" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  37 "../processes/scheduler.c" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
 ;  40 "../processes/scheduler.c" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
.L4:
	in r24,83-32
	ori r24,lo8(1)
	out 83-32,r24
	in r24,83-32
	andi r24,lo8(-15)
	out 83-32,r24
/* #APP */
 ;  55 "../processes/scheduler.c" 1
	sei
 ;  0 "" 2
 ;  56 "../processes/scheduler.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L2
	.size	SCHEDULER_TICK, .-SCHEDULER_TICK
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
	breq .L5
	call switchProcess
.L5:
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
 ;  55 "../processes/scheduler.c" 1
	sei
 ;  0 "" 2
 ;  56 "../processes/scheduler.c" 1
	sleep
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	processor_idle, .-processor_idle
