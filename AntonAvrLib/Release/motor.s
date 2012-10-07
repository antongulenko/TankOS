	.file	"motor.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.stopMotor,"ax",@progbits
.global	stopMotor
	.type	stopMotor, @function
stopMotor:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	ld r24,Y
	sbrc r24,3
	rjmp .L9
	ldd r24,Y+3
	ldd r25,Y+4
	call disableOutputCompare
	ld r17,Y
	sbrs r17,4
	rjmp .L4
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	sub r22,r14
	sbc r23,r15
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	ldi r18,lo8(0x0)
	ldi r19,hi8(0x0)
	movw r20,r18
	call __mulsf3
	call __fixunssfsi
	add r22,r14
	adc r23,r15
.L5:
	sbrs r17,1
	rjmp .L7
	com r22
	com r23
.L7:
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L4:
	ldd r22,Y+5
	ldd r23,Y+6
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L5
	ldd r24,Y+7
	ldd r25,Y+8
	cp r24,r22
	cpc r25,r23
	brsh .L5
	movw r22,r24
	rjmp .L5
.L9:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
	.size	stopMotor, .-stopMotor
	.section	.text.getSpeed,"ax",@progbits
.global	getSpeed
	.type	getSpeed, @function
getSpeed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+3
	ldd r25,Z+4
	call getTimerCompareValue
/* epilogue start */
	ret
	.size	getSpeed, .-getSpeed
	.section	.text.getDirection,"ax",@progbits
.global	getDirection
	.type	getDirection, @function
getDirection:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ld r24,Y
	sbrs r24,3
	rjmp .L12
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	ldd r24,Y+9
	ldd r25,Y+10
	call readPin
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L21
	sbiw r24,0
	breq .L20
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L17
.L12:
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r18,r24
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L15
.L17:
	ld r24,Y
	sbrs r24,2
	rjmp .L15
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L16
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L16:
	movw r18,r24
.L15:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L21:
	sbiw r24,0
	brne .L20
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp .L17
.L20:
	ldi r18,lo8(2)
	ldi r19,hi8(2)
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	getDirection, .-getDirection
	.section	.text.setSpeed,"ax",@progbits
.global	setSpeed
	.type	setSpeed, @function
setSpeed:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r28,r24
	movw r16,r22
	cpi r20,2
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L23
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L23
	ld r18,Y
	sbrs r18,2
	rjmp .L31
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .+2
	rjmp .L42
	movw r20,r24
.L31:
	sbrs r18,3
	rjmp .L33
	cpi r20,1
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L43
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinOne
.L35:
	ld r15,Y
	sbrs r15,4
	rjmp .L36
	ldd r12,Y+5
	ldd r13,Y+6
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	ldi r24,hi8(-1)
	cpi r16,lo8(-1)
	cpc r17,r24
	brsh .+2
	rjmp .L44
.L37:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r8,r22
	movw r10,r24
	ldd r22,Y+7
	ldd r23,Y+8
	sub r22,r12
	sbc r23,r13
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	movw r24,r10
	movw r22,r8
	call __mulsf3
	call __fixunssfsi
	add r22,r12
	adc r23,r13
.L38:
	sbrs r15,1
	rjmp .L41
	com r22
	com r23
.L41:
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
	ldd r24,Y+3
	ldd r25,Y+4
	call enableOutputCompare
.L22:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L23:
	ld r24,Y
	sbrc r24,3
	rjmp .L45
	ldd r24,Y+3
	ldd r25,Y+4
	call disableOutputCompare
	ld r16,Y
	sbrs r16,4
	rjmp .L27
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	sub r22,r12
	sbc r23,r13
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	ldi r18,lo8(0x0)
	ldi r19,hi8(0x0)
	movw r20,r18
	call __mulsf3
	call __fixunssfsi
	add r22,r12
	adc r23,r13
.L28:
	sbrs r16,1
	rjmp .L30
	com r22
	com r23
.L30:
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
	rjmp .L22
.L36:
	ldd r24,Y+5
	ldd r25,Y+6
	movw r22,r16
	cp r16,r24
	cpc r17,r25
	brlo .L46
	ldd r24,Y+7
	ldd r25,Y+8
	cp r24,r22
	cpc r25,r23
	brlo .+2
	rjmp .L38
.L47:
	movw r22,r24
	rjmp .L38
.L33:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r22,r20
	call writePin
	rjmp .L35
.L42:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	movw r20,r24
	rjmp .L31
.L44:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	rjmp .L37
.L46:
	movw r22,r24
	ldd r24,Y+7
	ldd r25,Y+8
	cp r24,r22
	cpc r25,r23
	brlo .+2
	rjmp .L38
	rjmp .L47
.L27:
	ldd r22,Y+5
	ldd r23,Y+6
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L28
	ldd r24,Y+7
	ldd r25,Y+8
	cp r24,r22
	cpc r25,r23
	brsh .L28
	movw r22,r24
	rjmp .L28
.L45:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
	rjmp .L22
.L43:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
	rjmp .L35
	.size	setSpeed, .-setSpeed
	.section	.text.setSpeedForward,"ax",@progbits
.global	setSpeedForward
	.type	setSpeedForward, @function
setSpeedForward:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call setSpeed
/* epilogue start */
	ret
	.size	setSpeedForward, .-setSpeedForward
	.section	.text.setSpeedBackward,"ax",@progbits
.global	setSpeedBackward
	.type	setSpeedBackward, @function
setSpeedBackward:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call setSpeed
/* epilogue start */
	ret
	.size	setSpeedBackward, .-setSpeedBackward
	.section	.text.getDirSpeed,"ax",@progbits
.global	getDirSpeed
	.type	getDirSpeed, @function
getDirSpeed:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ld r24,Y
	sbrs r24,3
	rjmp .L51
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	ldd r24,Y+9
	ldd r25,Y+10
	call readPin
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L63
	sbiw r24,0
	breq .L62
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L57
.L51:
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L62
.L57:
	ld r24,Y
	sbrs r24,2
	rjmp .L55
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L56
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L56:
	movw r16,r24
.L55:
	ldd r24,Y+3
	ldd r25,Y+4
	call getTimerCompareValue
	movw r18,r24
	lsr r19
	ror r18
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L54
	com r19
	neg r18
	sbci r19,lo8(-1)
.L54:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L63:
	sbiw r24,0
	brne .L62
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	rjmp .L57
.L62:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	getDirSpeed, .-getDirSpeed
	.section	.text.motor_toUnsignedSpeed,"ax",@progbits
.global	motor_toUnsignedSpeed
	.type	motor_toUnsignedSpeed, @function
motor_toUnsignedSpeed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	mov r19,r25
	sbrc r19,7
	rjmp .L66
	lsl r18
	rol r19
	movw r24,r18
/* epilogue start */
	ret
.L66:
	com r19
	neg r18
	sbci r19,lo8(-1)
	lsl r18
	rol r19
	movw r24,r18
/* epilogue start */
	ret
	.size	motor_toUnsignedSpeed, .-motor_toUnsignedSpeed
	.section	.text.setDirSpeed,"ax",@progbits
.global	setDirSpeed
	.type	setDirSpeed, @function
setDirSpeed:
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r24,r22
	sbiw r24,0
	breq .L76
	sbrc r25,7
	rjmp .L77
.L75:
	lsl r22
	rol r23
	mov r20,r25
	com r20
	rol r20
	clr r20
	rol r20
	movw r24,r28
	ldi r21,lo8(0)
	call setSpeed
.L67:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L76:
	ld r24,Y
	sbrc r24,3
	rjmp .L78
	ldd r24,Y+3
	ldd r25,Y+4
	call disableOutputCompare
	ld r17,Y
	sbrs r17,4
	rjmp .L71
	ldd r14,Y+5
	ldd r15,Y+6
	ldd r22,Y+7
	ldd r23,Y+8
	sub r22,r14
	sbc r23,r15
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	ldi r18,lo8(0x0)
	ldi r19,hi8(0x0)
	movw r20,r18
	call __mulsf3
	call __fixunssfsi
	add r22,r14
	adc r23,r15
.L72:
	sbrs r17,1
	rjmp .L74
	com r22
	com r23
.L74:
	ldd r24,Y+3
	ldd r25,Y+4
	call setTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
.L78:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
	rjmp .L67
.L77:
	clr r22
	clr r23
	sub r22,r24
	sbc r23,r25
	rjmp .L75
.L71:
	ldd r22,Y+5
	ldd r23,Y+6
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L72
	ldd r24,Y+7
	ldd r25,Y+8
	cp r24,r22
	cpc r25,r23
	brsh .L72
	movw r22,r24
	rjmp .L72
	.size	setDirSpeed, .-setDirSpeed
