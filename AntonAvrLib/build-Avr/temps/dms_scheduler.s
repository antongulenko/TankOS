	.file	"dms_scheduler.c"
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
.global	AperiodicJobWrapper
	.type	AperiodicJobWrapper, @function
AperiodicJobWrapper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	movw r28,r24
.L2:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	call schedule_next
	rjmp .L2
	.size	AperiodicJobWrapper, .-AperiodicJobWrapper
.global	PeriodicJobWrapper
	.type	PeriodicJobWrapper, @function
PeriodicJobWrapper:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getProcessMemory
	movw r28,r24
.L4:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	call schedule_next
	rjmp .L4
	.size	PeriodicJobWrapper, .-PeriodicJobWrapper
.global	dms_schedule
	.type	dms_schedule, @function
dms_schedule:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r28,processListHead
	lds r29,processListHead+1
	rjmp .L6
.L11:
	movw r24,r28
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+9
	ldd r25,Z+10
	sbiw r24,0
	breq .L8
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L7
	rjmp .L12
.L8:
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	ldd r20,Z+11
	ldd r21,Z+12
	ldd r22,Z+13
	ldd r23,Z+14
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L7
	rjmp .L10
.L12:
	ldd r24,Z+11
	ldd r25,Z+12
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L10
.L7:
	ldd r28,Z+3
	ldd r29,Z+4
.L6:
	sbiw r28,0
	brne .L11
.L10:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	dms_schedule, .-dms_schedule
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
	brne .L19
	sts processListHead+1,r17
	sts processListHead,r16
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L13
.L19:
	call getProcessMemory
	movw r30,r24
	ldd r24,Z+5
	ldd r25,Z+6
	ldd r26,Z+7
	ldd r27,Z+8
	ldd r20,Y+5
	ldd r21,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L16
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brne .L17
	ld r25,Z
	ld r24,Y
	cp r25,r24
	brlo .L16
.L17:
	ldd r24,Z+3
	ldd r25,Z+4
	sbiw r24,0
	brne .L19
.L16:
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
.L13:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	insertJobIntoList, .-insertJobIntoList
.global	initializeJob
	.type	initializeJob, @function
initializeJob:
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
/* stack size = 11 */
.L__stack_usage = 11
	movw r10,r24
	movw r8,r22
	movw r12,r18
	movw r14,r20
	call getProcessMemory
	movw r28,r24
	std Y+2,r9
	std Y+1,r8
	st Y,r16
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	movw r24,r10
	movw r22,r28
	call insertJobIntoList
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
	ret
	.size	initializeJob, .-initializeJob
.global	createPeriodicJob
	.type	createPeriodicJob, @function
createPeriodicJob:
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
/* stack size = 9 */
.L__stack_usage = 9
	movw r10,r24
	movw r12,r20
	movw r14,r22
	mov r16,r18
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r24,lo8(gs(PeriodicJobWrapper))
	ldi r25,hi8(gs(PeriodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r18,lo8(15)
	call createProcess3
	movw r28,r24
	movw r22,r10
	movw r20,r14
	movw r18,r12
	call initializeJob
	movw r30,r24
	std Z+10,__zero_reg__
	std Z+9,__zero_reg__
	lds r20,milliseconds_running
	lds r21,milliseconds_running+1
	lds r22,milliseconds_running+2
	lds r23,milliseconds_running+3
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	std Z+11,r20
	std Z+12,r21
	std Z+13,r22
	std Z+14,r23
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
	ret
	.size	createPeriodicJob, .-createPeriodicJob
.global	createAperiodicJob
	.type	createAperiodicJob, @function
createAperiodicJob:
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
/* stack size = 9 */
.L__stack_usage = 9
	movw r10,r24
	movw r12,r20
	movw r14,r22
	mov r16,r18
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r24,lo8(gs(AperiodicJobWrapper))
	ldi r25,hi8(gs(AperiodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r18,lo8(13)
	call createProcess3
	movw r28,r24
	movw r22,r10
	movw r20,r14
	movw r18,r12
	call initializeJob
	movw r30,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Z+10,r25
	std Z+9,r24
	std Z+12,__zero_reg__
	std Z+11,__zero_reg__
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
	ret
	.size	createAperiodicJob, .-createAperiodicJob
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
