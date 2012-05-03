	.file	"rr_scheduler.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.insertThreadIntoQueue,"ax",@progbits
.global	insertThreadIntoQueue
	.type	insertThreadIntoQueue, @function
insertThreadIntoQueue:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r22
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	std Z+1,r17
	st Z,r16
	movw r24,r28
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r26,r24
	add r26,r28
	adc r27,r29
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	ld r18,X+
	ld r19,X
	sbiw r26,1
	std Z+3,r19
	std Z+2,r18
	adiw r26,1
	st X,r31
	st -X,r30
	adiw r26,4
	ld r18,X
	sbiw r26,4
	tst r18
	brne .L2
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L2:
	movw r30,r24
	add r30,r28
	adc r31,r29
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	subi r18,lo8(-(1))
	std Z+4,r18
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r28
	cpc r25,r29
	brsh .L1
	sts highestPrio+1,r29
	sts highestPrio,r28
.L1:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	insertThreadIntoQueue, .-insertThreadIntoQueue
	.section	.text.createThread,"ax",@progbits
.global	createThread
	.type	createThread, @function
createThread:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	call createProcess
	movw r16,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	st Z,r16
	std Z+1,r17
	lds r18,queues+15
	lds r19,queues+15+1
	std Z+3,r19
	std Z+2,r18
	sts queues+15+1,r25
	sts queues+15,r24
	lds r24,queues+19
	tst r24
	brne .L6
	sts queues+17+1,r31
	sts queues+17,r30
.L6:
	subi r24,lo8(-(1))
	sts queues+19,r24
	lds r18,highestPrio
	lds r19,highestPrio+1
	cpi r18,3
	cpc r19,__zero_reg__
	brsh .L7
	ldi r18,lo8(3)
	ldi r19,hi8(3)
	sts highestPrio+1,r19
	sts highestPrio,r18
.L7:
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	createThread, .-createThread
	.section	.text.createThread2,"ax",@progbits
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
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	st Z,r16
	std Z+1,r17
	movw r18,r28
	lsl r18
	rol r19
	lsl r18
	rol r19
	movw r26,r18
	add r26,r28
	adc r27,r29
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+3,r25
	std Z+2,r24
	adiw r26,1
	st X,r31
	st -X,r30
	adiw r26,4
	ld r24,X
	sbiw r26,4
	tst r24
	brne .L9
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L9:
	movw r30,r18
	add r30,r28
	adc r31,r29
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	subi r24,lo8(-(1))
	std Z+4,r24
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r28
	cpc r25,r29
	brsh .L10
	sts highestPrio+1,r29
	sts highestPrio,r28
.L10:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread2, .-createThread2
	.section	.text.createThread3,"ax",@progbits
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
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	st Z,r16
	std Z+1,r17
	movw r18,r28
	lsl r18
	rol r19
	lsl r18
	rol r19
	movw r26,r18
	add r26,r28
	adc r27,r29
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+3,r25
	std Z+2,r24
	adiw r26,1
	st X,r31
	st -X,r30
	adiw r26,4
	ld r24,X
	sbiw r26,4
	tst r24
	brne .L12
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L12:
	movw r30,r18
	add r30,r28
	adc r31,r29
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	subi r24,lo8(-(1))
	std Z+4,r24
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r28
	cpc r25,r29
	brsh .L13
	sts highestPrio+1,r29
	sts highestPrio,r28
.L13:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread3, .-createThread3
	.section	.text.createThread4,"ax",@progbits
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
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	st Z,r16
	std Z+1,r17
	movw r18,r28
	lsl r18
	rol r19
	lsl r18
	rol r19
	movw r26,r18
	add r26,r28
	adc r27,r29
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	std Z+3,r25
	std Z+2,r24
	adiw r26,1
	st X,r31
	st -X,r30
	adiw r26,4
	ld r24,X
	sbiw r26,4
	tst r24
	brne .L15
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L15:
	movw r30,r18
	add r30,r28
	adc r31,r29
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	subi r24,lo8(-(1))
	std Z+4,r24
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r28
	cpc r25,r29
	brsh .L16
	sts highestPrio+1,r29
	sts highestPrio,r28
.L16:
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	createThread4, .-createThread4
	.section	.text.rr_schedule,"ax",@progbits
.global	rr_schedule
	.type	rr_schedule, @function
rr_schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,highestPrio
	lds r25,highestPrio+1
	sbiw r24,0
	breq .L18
	movw r18,r24
	lsl r18
	rol r19
	lsl r18
	rol r19
	movw r30,r18
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	ldd r20,Z+4
	tst r20
	breq .L26
	rjmp .L24
.L29:
	movw r18,r24
	lsl r18
	rol r19
	lsl r18
	rol r19
	movw r30,r18
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	ldd r20,Z+4
	tst r20
	brne .L28
.L26:
	sbiw r24,1
	brne .L29
	sts highestPrio+1,__zero_reg__
	sts highestPrio,__zero_reg__
.L18:
	lds r24,queues+4
	tst r24
	brne .L30
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r24,r18
/* epilogue start */
	ret
.L30:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L24:
	movw r26,r18
	add r26,r24
	adc r27,r25
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	sbiw r30,0
	breq .L31
.L23:
	add r24,r18
	adc r25,r19
	subi r24,lo8(-(queues))
	sbci r25,hi8(-(queues))
	movw r26,r24
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
	ld r18,Z
	ldd r19,Z+1
	movw r24,r18
/* epilogue start */
	ret
.L28:
	sts highestPrio,r24
	sts highestPrio+1,r25
	rjmp .L24
.L31:
	ld r30,X+
	ld r31,X
	sbiw r26,1
	rjmp .L23
	.size	rr_schedule, .-rr_schedule
	.section	.text.rr_captureMainProcess,"ax",@progbits
.global	rr_captureMainProcess
	.type	rr_captureMainProcess, @function
rr_captureMainProcess:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call getCurrentProcess
	movw r16,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call calloc
	movw r30,r24
	std Z+1,r17
	st Z,r16
	movw r24,r28
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r26,r24
	add r26,r28
	adc r27,r29
	subi r26,lo8(-(queues))
	sbci r27,hi8(-(queues))
	ld r18,X+
	ld r19,X
	sbiw r26,1
	std Z+3,r19
	std Z+2,r18
	adiw r26,1
	st X,r31
	st -X,r30
	adiw r26,4
	ld r18,X
	sbiw r26,4
	tst r18
	brne .L33
	adiw r26,2+1
	st X,r31
	st -X,r30
	sbiw r26,2
.L33:
	movw r30,r24
	add r30,r28
	adc r31,r29
	subi r30,lo8(-(queues))
	sbci r31,hi8(-(queues))
	subi r18,lo8(-(1))
	std Z+4,r18
	lds r24,highestPrio
	lds r25,highestPrio+1
	cp r24,r28
	cpc r25,r29
	brsh .L32
	sts highestPrio+1,r29
	sts highestPrio,r28
.L32:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	rr_captureMainProcess, .-rr_captureMainProcess
	.section	.text.getCurrentThread,"ax",@progbits
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
.global	highestPrio
.global	highestPrio
	.section .bss
	.type	highestPrio, @object
	.size	highestPrio, 2
highestPrio:
	.skip 2,0
	.comm queues,35,1
.global __do_clear_bss
