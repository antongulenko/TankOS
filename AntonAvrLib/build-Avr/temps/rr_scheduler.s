	.file	"rr_scheduler.c"
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
.global	insertThreadIntoQueue
	.type	insertThreadIntoQueue, @function
insertThreadIntoQueue:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r16,r22
	movw r28,r22
	lsl r28
	rol r29
	lsl r28
	rol r29
	add r28,r22
	adc r29,r23
	subi r28,lo8(-(queues))
	sbci r29,hi8(-(queues))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	std Z+1,r15
	st Z,r14
	ld r24,Y
	ldd r25,Y+1
	std Z+3,r25
	std Z+2,r24
	std Y+1,r31
	st Y,r30
	ldd r24,Y+4
	tst r24
	brne .L2
	std Y+3,r31
	std Y+2,r30
.L2:
	subi r24,lo8(-(1))
	std Y+4,r24
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r16
	cpc r25,r17
	brsh .L1
	sts highestPrio+1,r17
	sts highestPrio,r16
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	insertThreadIntoQueue, .-insertThreadIntoQueue
.global	createThread2
	.type	createThread2, @function
createThread2:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r22
	call createProcess
	movw r16,r24
	movw r22,r28
	call insertThreadIntoQueue
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread2, .-createThread2
.global	createThread
	.type	createThread, @function
createThread:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(3)
	ldi r23,hi8(3)
	call createThread2
/* epilogue start */
	ret
	.size	createThread, .-createThread
.global	createThread3
	.type	createThread3, @function
createThread3:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r22
	movw r22,r20
	call createProcess2
	movw r16,r24
	movw r22,r28
	call insertThreadIntoQueue
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread3, .-createThread3
.global	createThread4
	.type	createThread4, @function
createThread4:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r22
	movw r22,r20
	movw r20,r18
	ldi r18,lo8(0)
	call createProcess3
	movw r16,r24
	movw r22,r28
	call insertThreadIntoQueue
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread4, .-createThread4
.global	rr_schedule
	.type	rr_schedule, @function
rr_schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,highestPrio
	lds r25,highestPrio+1
	rjmp .L9
.L12:
	sbiw r24,1
.L9:
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	sbiw r24,0
	brne .L10
	sts highestPrio+1,__zero_reg__
	sts highestPrio,__zero_reg__
	rjmp .L11
.L10:
	movw r26,r30
	add r26,r24
	adc r27,r25
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	adiw r26,4
	ld r18,X
	sbiw r26,4
	tst r18
	breq .L12
	sts highestPrio,r24
	sts highestPrio+1,r25
.L11:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	ldd r24,Z+4
	tst r24
	breq .L15
	ldd r26,Z+2
	ldd r27,Z+3
	adiw r26,2
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	sbiw r26,0
	brne .L14
	ld r26,Z
	ldd r27,Z+1
.L14:
	std Z+3,r27
	std Z+2,r26
	ld r24,X+
	ld r25,X
	sbiw r26,1
	ret
.L15:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ret
	.size	rr_schedule, .-rr_schedule
.global	rr_captureMainProcess
	.type	rr_captureMainProcess, @function
rr_captureMainProcess:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	call getCurrentProcess
	movw r22,r28
	call insertThreadIntoQueue
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	rr_captureMainProcess, .-rr_captureMainProcess
.global	getCurrentThread
	.type	getCurrentThread, @function
getCurrentThread:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getCurrentProcess
/* epilogue start */
	ret
	.size	getCurrentThread, .-getCurrentThread
	.comm queues,35,1
.global	highestPrio
.global	highestPrio
	.section .bss
	.type	highestPrio, @object
	.size	highestPrio, 2
highestPrio:
	.skip 2,0
