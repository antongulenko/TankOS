	.file	"motor_smooth.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.regulateStopMotor,"ax",@progbits
.global	regulateStopMotor
	.type	regulateStopMotor, @function
regulateStopMotor:
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
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+9,r25
	std Y+8,r24
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
	ret
	.size	regulateStopMotor, .-regulateStopMotor
	.section	.text.regulateSpeed,"ax",@progbits
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
	movw r16,r22
	movw r14,r20
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,r17
	std Y+6,r16
	std Y+9,r15
	std Y+8,r14
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	brne .L5
	movw r24,r28
	call motor_smooth_start_tick
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+11,r25
	std Y+10,r24
.L5:
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
	.section	.text.regulateSpeedForward,"ax",@progbits
.global	regulateSpeedForward
	.type	regulateSpeedForward, @function
regulateSpeedForward:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,r17
	std Y+6,r16
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	std Y+9,r17
	std Y+8,r16
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	brne .L7
	movw r24,r28
	call motor_smooth_start_tick
	std Y+11,r17
	std Y+10,r16
.L7:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_release
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	regulateSpeedForward, .-regulateSpeedForward
	.section	.text.regulateSpeedBackward,"ax",@progbits
.global	regulateSpeedBackward
	.type	regulateSpeedBackward, @function
regulateSpeedBackward:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,r17
	std Y+6,r16
	std Y+9,__zero_reg__
	std Y+8,__zero_reg__
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	brne .L9
	movw r24,r28
	call motor_smooth_start_tick
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+11,r25
	std Y+10,r24
.L9:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_release
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	regulateSpeedBackward, .-regulateSpeedBackward
	.section	.text.regulateDirSpeed,"ax",@progbits
.global	regulateDirSpeed
	.type	regulateDirSpeed, @function
regulateDirSpeed:
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
	movw r16,r22
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L16
	movw r24,r22
	call motor_toUnsignedSpeed
	movw r14,r24
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,r15
	std Y+6,r14
	mov r24,r17
	com r24
	rol r24
	clr r24
	rol r24
	std Y+8,r24
	std Y+9,__zero_reg__
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	breq .L15
.L14:
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
.L16:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_lock
	std Y+7,__zero_reg__
	std Y+6,__zero_reg__
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	std Y+9,r25
	std Y+8,r24
	ldd r24,Y+10
	ldd r25,Y+11
	sbiw r24,0
	brne .L14
.L15:
	movw r24,r28
	call motor_smooth_start_tick
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+11,r25
	std Y+10,r24
	rjmp .L14
	.size	regulateDirSpeed, .-regulateDirSpeed
	.section	.text.motor_smooth_needsTick,"ax",@progbits
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
	breq .L21
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L18:
	movw r24,r18
/* epilogue start */
	ret
.L21:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	ldd r20,Z+8
	ldd r21,Z+9
	ldd r24,Z+4
	ldd r25,Z+5
	cp r20,r24
	cpc r21,r25
	brne .L18
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r24,r18
/* epilogue start */
	ret
	.size	motor_smooth_needsTick, .-motor_smooth_needsTick
	.section	.text.motor_smooth_tick,"ax",@progbits
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
	ldd r22,Y+6
	ldd r23,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	cp r22,r24
	cpc r23,r25
	breq .L38
	ldd r18,Y+8
	ldd r19,Y+9
	ldd r30,Y+12
	ldd r31,Y+13
	ldd r20,Y+4
	ldd r21,Y+5
	cp r20,r18
	cpc r21,r19
	breq .L26
	cp r24,r30
	cpc r25,r31
	brsh .L27
.L40:
	ld r24,Y
	ldd r25,Y+1
	movw r30,r24
	ldd r22,Z+5
	ldd r23,Z+6
	cpi r18,2
	cpc r19,__zero_reg__
	breq .L28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
.L28:
	std Y+5,r19
	std Y+4,r18
	movw r20,r18
.L29:
	std Y+3,r23
	std Y+2,r22
	call setSpeed
	ldd r18,Y+6
	ldd r19,Y+7
	ldd r24,Y+2
	ldd r25,Y+3
	cp r18,r24
	cpc r19,r25
	breq .L39
.L25:
	ldd r24,Y+14
	ldd r25,Y+15
	call mutex_release
/* epilogue start */
	pop r29
	pop r28
	ret
.L38:
	ldd r18,Y+8
	ldd r19,Y+9
	ldd r20,Y+4
	ldd r21,Y+5
	cp r18,r20
	cpc r19,r21
	breq .L25
	ldd r30,Y+12
	ldd r31,Y+13
	cp r24,r30
	cpc r25,r31
	brlo .L40
.L27:
	movw r22,r24
	sub r22,r30
	sbc r23,r31
	ld r24,Y
	ldd r25,Y+1
	rjmp .L29
.L26:
	cp r24,r22
	cpc r25,r23
	brsh .L30
	movw r18,r22
	sub r18,r24
	sbc r19,r25
	cp r18,r30
	cpc r19,r31
	brsh .L35
.L37:
	ld r24,Y
	ldd r25,Y+1
	rjmp .L29
.L39:
	ldd r18,Y+8
	ldd r19,Y+9
	ldd r24,Y+4
	ldd r25,Y+5
	cp r18,r24
	cpc r19,r25
	brne .L25
	movw r24,r28
	call motor_smooth_stop_tick
	std Y+11,__zero_reg__
	std Y+10,__zero_reg__
	rjmp .L25
.L30:
	movw r18,r24
	sub r18,r22
	sbc r19,r23
	cp r18,r30
	cpc r19,r31
	brlo .L37
	movw r22,r24
	sub r22,r30
	sbc r23,r31
	rjmp .L37
.L35:
	movw r22,r24
	add r22,r30
	adc r23,r31
	ld r24,Y
	ldd r25,Y+1
	rjmp .L29
	.size	motor_smooth_tick, .-motor_smooth_tick
