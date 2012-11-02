	.file	"motor_smooth.c"
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
.global	regulateSpeed
	.type	regulateSpeed, @function
regulateSpeed:
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
	movw r28,r24
	movw r14,r22
	movw r16,r20
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,r15
	std Y+6,r14
	std Y+9,r17
	std Y+8,r16
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	brne .L2
	movw r24,r28
	call motor_smooth_start_tick
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+11,r25
	std Y+10,r24
.L2:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_release
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	regulateSpeed, .-regulateSpeed
.global	regulateStopMotor
	.type	regulateStopMotor, @function
regulateStopMotor:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	call regulateSpeed
/* epilogue start */
	ret
	.size	regulateStopMotor, .-regulateStopMotor
.global	regulateSpeedForward
	.type	regulateSpeedForward, @function
regulateSpeedForward:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
/* epilogue start */
	ret
	.size	regulateSpeedForward, .-regulateSpeedForward
.global	regulateSpeedBackward
	.type	regulateSpeedBackward, @function
regulateSpeedBackward:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
/* epilogue start */
	ret
	.size	regulateSpeedBackward, .-regulateSpeedBackward
.global	regulateDirSpeed
	.type	regulateDirSpeed, @function
regulateDirSpeed:
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
	sbiw r28,0
	brne .L7
	call regulateStopMotor
	rjmp .L6
.L7:
	movw r24,r22
	call motor_toUnsignedSpeed
	movw r22,r24
	mov r20,r29
	com r20
	rol r20
	clr r20
	rol r20
	movw r24,r16
	ldi r21,lo8(0)
	call regulateSpeed
.L6:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	regulateDirSpeed, .-regulateDirSpeed
.global	motor_smooth_needsTick
	.type	motor_smooth_needsTick, @function
motor_smooth_needsTick:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+6
	ldd r19,Z+7
	ldd r24,Z+2
	ldd r25,Z+3
	cp r18,r24
	cpc r19,r25
	brne .L12
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldd r18,Z+8
	ldd r19,Z+9
	ldd r20,Z+4
	ldd r21,Z+5
	cp r18,r20
	cpc r19,r21
	brne .L10
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ret
.L12:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.L10:
	ret
	.size	motor_smooth_needsTick, .-motor_smooth_needsTick
.global	motor_smooth_tick
	.type	motor_smooth_tick, @function
motor_smooth_tick:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	movw r24,r28
	call motor_smooth_needsTick
	sbiw r24,0
	brne .+2
	rjmp .L14
	ldd r30,Y+8
	ldd r31,Y+9
	ldd r22,Y+2
	ldd r23,Y+3
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+12
	ldd r25,Y+13
	ldd r20,Y+4
	ldd r21,Y+5
	ld r26,Y
	ldd r27,Y+1
	cp r20,r30
	cpc r21,r31
	breq .L15
	cp r22,r24
	cpc r23,r25
	brsh .L22
	adiw r26,5
	ld r22,X+
	ld r23,X
	sbiw r26,5+1
	cpi r30,2
	cpc r31,__zero_reg__
	breq .L17
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
.L17:
	std Y+5,r31
	std Y+4,r30
	rjmp .L18
.L15:
	cp r22,r18
	cpc r23,r19
	brsh .L19
	movw r20,r18
	sub r20,r22
	sbc r21,r23
	cp r20,r24
	cpc r21,r25
	brlo .L21
	add r22,r24
	adc r23,r25
	rjmp .L18
.L19:
	movw r20,r22
	sub r20,r18
	sbc r21,r19
	cp r20,r24
	cpc r21,r25
	brlo .L21
.L22:
	sub r22,r24
	sbc r23,r25
	rjmp .L18
.L21:
	movw r22,r18
.L18:
	std Y+3,r23
	std Y+2,r22
	ldd r20,Y+4
	ldd r21,Y+5
	movw r24,r26
	call setSpeed
	movw r24,r28
	call motor_smooth_needsTick
	sbiw r24,0
	brne .L14
	movw r24,r28
	call motor_smooth_stop_tick
	std Y+11,__zero_reg__
	std Y+10,__zero_reg__
.L14:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_release
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	motor_smooth_tick, .-motor_smooth_tick
