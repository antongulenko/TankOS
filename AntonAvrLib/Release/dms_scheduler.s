	.file	"dms_scheduler.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.AperiodicJobWrapper,"ax",@progbits
.global	AperiodicJobWrapper
	.type	AperiodicJobWrapper, @function
AperiodicJobWrapper:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	call getProcessMemory
	mov r14,r24
	movw r28,r14
	movw r14,r28
	mov r15,r25
	movw r28,r14
.L2:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	call schedule_next
	rjmp .L2
	.size	AperiodicJobWrapper, .-AperiodicJobWrapper
	.section	.text.PeriodicJobWrapper,"ax",@progbits
.global	PeriodicJobWrapper
	.type	PeriodicJobWrapper, @function
PeriodicJobWrapper:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	call getProcessMemory
	mov r14,r24
	movw r28,r14
	movw r14,r28
	mov r15,r25
	movw r28,r14
.L5:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	call schedule_next
	rjmp .L5
	.size	PeriodicJobWrapper, .-PeriodicJobWrapper
	.section	.text.dms_schedule,"ax",@progbits
.global	dms_schedule
	.type	dms_schedule, @function
dms_schedule:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r28,processListHead
	lds r29,processListHead+1
	sbiw r28,0
	brne .L12
	rjmp .L7
.L9:
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
	ldd r22,Z+11
	ldd r23,Z+12
	ldd r24,Z+13
	ldd r25,Z+14
	cp r18,r22
	cpc r19,r23
	cpc r20,r24
	cpc r21,r25
	brsh .L7
.L8:
	ldd r28,Z+3
	ldd r29,Z+4
	sbiw r28,0
	breq .L7
.L12:
	movw r24,r28
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+9
	ldd r25,Z+10
	sbiw r24,0
	breq .L9
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L8
	ldd r24,Z+11
	ldd r25,Z+12
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L8
.L7:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	ret
	.size	dms_schedule, .-dms_schedule
	.section	.text.insertJobIntoList,"ax",@progbits
.global	insertJobIntoList
	.type	insertJobIntoList, @function
insertJobIntoList:
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
	lds r24,processListHead
	lds r25,processListHead+1
	sbiw r24,0
	brne .L20
	rjmp .L23
.L18:
	ldd r24,Z+3
	ldd r25,Z+4
	sbiw r24,0
	breq .L17
.L20:
	call getProcessMemory
	movw r30,r24
	ldd r22,Z+5
	ldd r23,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	cp r18,r22
	cpc r19,r23
	cpc r20,r24
	cpc r21,r25
	brlo .L17
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brne .L18
	ld r25,Z
	ld r24,Y
	cp r25,r24
	brsh .L18
.L17:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+3
	ldd r25,Z+4
	std Y+4,r25
	std Y+3,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	std Z+4,r17
	std Z+3,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L23:
	sts processListHead+1,r17
	sts processListHead,r16
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	insertJobIntoList, .-insertJobIntoList
	.section	.text.initializeJob,"ax",@progbits
.global	initializeJob
	.type	initializeJob, @function
initializeJob:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r8,r24
	movw r10,r22
	movw r12,r18
	movw r14,r20
	call getProcessMemory
	mov r6,r24
	movw r28,r6
	movw r6,r28
	mov r7,r25
	movw r28,r6
	std Y+2,r11
	std Y+1,r10
	st Y,r16
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	lds r24,processListHead
	lds r25,processListHead+1
	sbiw r24,0
	brne .L30
	rjmp .L33
.L28:
	ldd r24,Z+3
	ldd r25,Z+4
	sbiw r24,0
	breq .L27
.L30:
	call getProcessMemory
	movw r30,r24
	ldd r22,Z+5
	ldd r23,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	cp r18,r22
	cpc r19,r23
	cpc r20,r24
	cpc r21,r25
	brlo .L27
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brne .L28
	ld r25,Z
	ld r24,Y
	cp r25,r24
	brsh .L28
.L27:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+3
	ldd r25,Z+4
	std Y+4,r25
	std Y+3,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	std Z+4,r9
	std Z+3,r8
.L26:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
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
	ret
.L33:
	sts processListHead+1,r9
	sts processListHead,r8
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L26
	.size	initializeJob, .-initializeJob
	.section	.text.createPeriodicJob,"ax",@progbits
.global	createPeriodicJob
	.type	createPeriodicJob, @function
createPeriodicJob:
	push r6
	push r7
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r10,r24
	movw r12,r20
	movw r14,r22
	mov r9,r18
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r24,lo8(gs(PeriodicJobWrapper))
	ldi r25,hi8(gs(PeriodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r18,lo8(15)
	call createProcess3
	movw r16,r24
	call getProcessMemory
	mov r6,r24
	movw r28,r6
	movw r6,r28
	mov r7,r25
	movw r28,r6
	std Y+2,r11
	std Y+1,r10
	st Y,r9
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	lds r24,processListHead
	lds r25,processListHead+1
	sbiw r24,0
	brne .L40
	rjmp .L43
.L38:
	ldd r24,Z+3
	ldd r25,Z+4
	sbiw r24,0
	breq .L37
.L40:
	call getProcessMemory
	movw r30,r24
	ldd r22,Z+5
	ldd r23,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	cp r18,r22
	cpc r19,r23
	cpc r20,r24
	cpc r21,r25
	brlo .L37
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brne .L38
	ld r25,Z
	ld r24,Y
	cp r25,r24
	brsh .L38
.L37:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+3
	ldd r25,Z+4
	std Y+4,r25
	std Y+3,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	std Z+3,r16
	std Z+4,r17
.L36:
	std Y+10,__zero_reg__
	std Y+9,__zero_reg__
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r7
	pop r6
	ret
.L43:
	sts processListHead,r16
	sts processListHead+1,r17
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L36
	.size	createPeriodicJob, .-createPeriodicJob
	.section	.text.createAperiodicJob,"ax",@progbits
.global	createAperiodicJob
	.type	createAperiodicJob, @function
createAperiodicJob:
	push r6
	push r7
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r10,r24
	movw r12,r20
	movw r14,r22
	mov r9,r18
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r24,lo8(gs(AperiodicJobWrapper))
	ldi r25,hi8(gs(AperiodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r18,lo8(13)
	call createProcess3
	movw r16,r24
	call getProcessMemory
	mov r6,r24
	movw r28,r6
	movw r6,r28
	mov r7,r25
	movw r28,r6
	std Y+2,r11
	std Y+1,r10
	st Y,r9
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	lds r24,processListHead
	lds r25,processListHead+1
	sbiw r24,0
	brne .L50
	rjmp .L53
.L48:
	ldd r24,Z+3
	ldd r25,Z+4
	sbiw r24,0
	breq .L47
.L50:
	call getProcessMemory
	movw r30,r24
	ldd r22,Z+5
	ldd r23,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	cp r18,r22
	cpc r19,r23
	cpc r20,r24
	cpc r21,r25
	brlo .L47
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brne .L48
	ld r25,Z
	ld r24,Y
	cp r25,r24
	brsh .L48
.L47:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+3
	ldd r25,Z+4
	std Y+4,r25
	std Y+3,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call getProcessMemory
	movw r30,r24
	std Z+3,r16
	std Z+4,r17
.L46:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+10,r25
	std Y+9,r24
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	movw r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r7
	pop r6
	ret
.L53:
	sts processListHead,r16
	sts processListHead+1,r17
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L46
	.size	createAperiodicJob, .-createAperiodicJob
	.section	.text.triggerAperiodicJob,"ax",@progbits
.global	triggerAperiodicJob
	.type	triggerAperiodicJob, @function
triggerAperiodicJob:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r30,r24
	std Z+12,r19
	std Z+11,r18
/* epilogue start */
	ret
	.size	triggerAperiodicJob, .-triggerAperiodicJob
	.comm processListHead,2,1
.global __do_clear_bss
