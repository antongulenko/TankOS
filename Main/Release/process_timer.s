	.file	"process_timer.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.schedule,"ax",@progbits
	.weak	schedule
	.type	schedule, @function
schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
/* epilogue start */
	ret
	.size	schedule, .-schedule
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  12 "../processes/timer/process_timer.c" 1
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
	call getCurrentProcess
/* #APP */
 ;  15 "../processes/timer/process_timer.c" 1
	lds r26, 24
 ;  0 "" 2
 ;  16 "../processes/timer/process_timer.c" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
/* #NOAPP */
	call schedule
/* #APP */
 ;  19 "../processes/timer/process_timer.c" 1
	movw r26, r24
 ;  0 "" 2
 ;  20 "../processes/timer/process_timer.c" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  21 "../processes/timer/process_timer.c" 1
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
 ;  24 "../processes/timer/process_timer.c" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_16, .-__vector_16
