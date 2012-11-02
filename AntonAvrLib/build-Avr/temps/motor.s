	.file	"motor.c"
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
	.type	setMotorValues, @function
setMotorValues:
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
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r10,r24
	movw r28,r22
	movw r6,r20
	movw r26,r24
	ld r17,X
	sbrs r17,1
	rjmp .L2
	com r28
	com r29
.L2:
	movw r30,r10
	ldd r8,Z+5
	ldd r9,Z+6
	ldd r24,Z+7
	ldd r25,Z+8
	sbrs r17,4
	rjmp .L3
	sub r24,r8
	sbc r25,r9
	movw r22,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r12,r22
	movw r14,r24
	movw r22,r28
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	ldi r18,lo8(0x477fff00)
	ldi r19,hi8(0x477fff00)
	ldi r20,hlo8(0x477fff00)
	ldi r21,hhi8(0x477fff00)
	call __divsf3
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __mulsf3
	call __fixunssfsi
	add r22,r8
	adc r23,r9
	rjmp .L4
.L3:
	movw r22,r28
	cp r28,r8
	cpc r29,r9
	brsh .L5
	movw r22,r8
.L5:
	cp r24,r22
	cpc r25,r23
	brsh .L4
	movw r22,r24
.L4:
	sbrs r17,2
	rjmp .L7
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L8
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L8:
	movw r6,r24
.L7:
	movw r26,r10
	adiw r26,1
	ld r30,X+
	ld r31,X
	sbiw r26,1+1
	movw r24,r10
	movw r20,r6
	icall
/* epilogue start */
	pop r29
	pop r28
	pop r17
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
	.size	setMotorValues, .-setMotorValues
	.type	setMotorTimerCompareValue, @function
setMotorTimerCompareValue:
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
	cpi r20,2
	cpc r21,__zero_reg__
	breq .L10
	sbiw r28,0
	brne .L11
.L10:
	call disableOutputCompare
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L12
.L11:
	call enableOutputCompare
.L12:
	movw r24,r16
	movw r22,r28
	call setTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	setMotorTimerCompareValue, .-setMotorTimerCompareValue
.global	stopMotor
	.type	stopMotor, @function
stopMotor:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	call setMotorValues
/* epilogue start */
	ret
	.size	stopMotor, .-stopMotor
.global	convertSpeed
	.type	convertSpeed, @function
convertSpeed:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	ld r17,Y
	sbrs r17,4
	rjmp .L15
	ldd r10,Y+5
	ldd r11,Y+6
	sub r22,r10
	sbc r23,r11
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r12,r22
	movw r14,r24
	ldd r22,Y+7
	ldd r23,Y+8
	sub r22,r10
	sbc r23,r11
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
	ldi r18,lo8(0x477fff00)
	ldi r19,hi8(0x477fff00)
	ldi r20,hlo8(0x477fff00)
	ldi r21,hhi8(0x477fff00)
	call __mulsf3
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	movw r24,r22
	movw r22,r20
	call __fixunssfsi
.L15:
	sbrs r17,1
	rjmp .L16
	com r22
	com r23
.L16:
	movw r24,r22
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	convertSpeed, .-convertSpeed
.global	getSpeed
	.type	getSpeed, @function
getSpeed:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r24
	movw r26,r24
	adiw r26,3
	ld r30,X+
	ld r31,X
	sbiw r26,3+1
	movw r22,r28
	subi r22,lo8(-(3))
	sbci r23,hi8(-(3))
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	icall
	ldd r22,Y+3
	ldd r23,Y+4
	movw r24,r16
	call convertSpeed
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	getSpeed, .-getSpeed
.global	convertDirection
	.type	convertDirection, @function
convertDirection:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r22,2
	cpc r23,__zero_reg__
	breq .L19
	movw r30,r24
	ld r24,Z
	sbrs r24,2
	rjmp .L19
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L20
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L20:
	movw r22,r24
.L19:
	movw r24,r22
/* epilogue start */
	ret
	.size	convertDirection, .-convertDirection
.global	getDirection
	.type	getDirection, @function
getDirection:
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r24
	movw r26,r24
	adiw r26,3
	ld r30,X+
	ld r31,X
	sbiw r26,3+1
	movw r22,r28
	subi r22,lo8(-(3))
	sbci r23,hi8(-(3))
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	icall
	ldd r22,Y+1
	ldd r23,Y+2
	movw r24,r16
	call convertDirection
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	getDirection, .-getDirection
.global	setSpeed
	.type	setSpeed, @function
setSpeed:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cpi r20,2
	cpc r21,__zero_reg__
	breq .L26
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L26
.L24:
	call setMotorValues
	movw r24,r28
	call getSpeed
	sbiw r24,0
	brne .L22
	movw r24,r28
.L26:
	call stopMotor
.L22:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	setSpeed, .-setSpeed
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
.global	getDirSpeed
	.type	getDirSpeed, @function
getDirSpeed:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	movw r26,r24
	adiw r26,3
	ld r30,X+
	ld r31,X
	sbiw r26,3+1
	movw r22,r28
	subi r22,lo8(-(3))
	sbci r23,hi8(-(3))
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	icall
	ldd r22,Y+1
	ldd r23,Y+2
	cpi r22,2
	cpc r23,__zero_reg__
	breq .L32
	movw r24,r16
	call convertDirection
	movw r14,r24
	std Y+2,r25
	std Y+1,r24
	ldd r22,Y+3
	ldd r23,Y+4
	movw r24,r16
	call convertSpeed
	lsr r25
	ror r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L30
	com r25
	neg r24
	sbci r25,lo8(-1)
	rjmp .L30
.L32:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L30:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	getDirSpeed, .-getDirSpeed
.global	motor_toUnsignedSpeed
	.type	motor_toUnsignedSpeed, @function
motor_toUnsignedSpeed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r24
	sbrs r25,7
	rjmp .L34
	com r19
	neg r18
	sbci r19,lo8(-1)
.L34:
	movw r24,r18
	lsl r24
	rol r25
/* epilogue start */
	ret
	.size	motor_toUnsignedSpeed, .-motor_toUnsignedSpeed
.global	setDirSpeed
	.type	setDirSpeed, @function
setDirSpeed:
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
	brne .L36
	call stopMotor
	rjmp .L35
.L36:
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
	call setSpeed
.L35:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	setDirSpeed, .-setDirSpeed
.global	motor1Dir1Speed_setDirSpeed
	.type	motor1Dir1Speed_setDirSpeed, @function
motor1Dir1Speed_setDirSpeed:
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
	ldd r24,Y+9
	ldd r25,Y+10
	movw r22,r20
	call writePin
	ldd r24,Y+11
	ldd r25,Y+12
	movw r22,r14
	movw r20,r16
	call setMotorTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	motor1Dir1Speed_setDirSpeed, .-motor1Dir1Speed_setDirSpeed
.global	motor1Dir1Speed_getDirSpeed
	.type	motor1Dir1Speed_getDirSpeed, @function
motor1Dir1Speed_getDirSpeed:
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
	ldd r24,Y+11
	ldd r25,Y+12
	call getTimerCompareValue
	movw r30,r16
	std Z+1,r25
	st Z,r24
	sbiw r24,0
	brne .L40
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	rjmp .L42
.L40:
	ldd r24,Y+9
	ldd r25,Y+10
	call readPin
.L42:
	movw r30,r14
	std Z+1,r25
	st Z,r24
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	motor1Dir1Speed_getDirSpeed, .-motor1Dir1Speed_getDirSpeed
.global	motor2Dir_setDirSpeed
	.type	motor2Dir_setDirSpeed, @function
motor2Dir_setDirSpeed:
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
	ldd r24,Y+9
	ldd r25,Y+10
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L44
	cpi r20,2
	cpc r21,__zero_reg__
	brne .L45
.L44:
	call setPinZero
	rjmp .L48
.L45:
	cpi r20,1
	cpc r21,__zero_reg__
	brne .L47
	call setPinOne
.L48:
	ldd r24,Y+11
	ldd r25,Y+12
	call setPinZero
	rjmp .L46
.L47:
	call setPinZero
	ldd r24,Y+11
	ldd r25,Y+12
	call setPinOne
.L46:
	ldd r24,Y+13
	ldd r25,Y+14
	movw r22,r14
	movw r20,r16
	call setMotorTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	motor2Dir_setDirSpeed, .-motor2Dir_setDirSpeed
.global	motor2Dir_getDirSpeed
	.type	motor2Dir_getDirSpeed, @function
motor2Dir_getDirSpeed:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r14,r24
	movw r12,r22
	movw r16,r20
	movw r30,r24
	ldd r24,Z+9
	ldd r25,Z+10
	call readPin
	movw r28,r24
	movw r30,r14
	ldd r24,Z+11
	ldd r25,Z+12
	call readPin
	sbiw r28,0
	breq .L50
	sbiw r24,0
	brne .L51
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	rjmp .L55
.L50:
	sbiw r24,0
	breq .L51
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L52
.L51:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
.L55:
	movw r30,r16
	std Z+1,r25
	st Z,r24
.L52:
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	cpi r24,2
	cpc r25,__zero_reg__
	brne .L53
	movw r30,r12
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L49
.L53:
	movw r30,r14
	ldd r24,Z+13
	ldd r25,Z+14
	call getTimerCompareValue
	movw r30,r12
	std Z+1,r25
	st Z,r24
.L49:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	motor2Dir_getDirSpeed, .-motor2Dir_getDirSpeed
.global	motor2Speed_setDirSpeed
	.type	motor2Speed_setDirSpeed, @function
motor2Speed_setDirSpeed:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	movw r28,r20
	movw r30,r24
	cpi r20,2
	cpc r21,__zero_reg__
	breq .L57
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L58
.L57:
	ldd r24,Z+9
	ldd r25,Z+10
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	movw r20,r28
	call setMotorTimerCompareValue
	movw r30,r16
	ldd r24,Z+11
	ldd r25,Z+12
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	movw r20,r28
	rjmp .L61
.L58:
	cpi r20,1
	cpc r21,__zero_reg__
	brne .L60
	ldd r24,Z+9
	ldd r25,Z+10
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call setMotorTimerCompareValue
	movw r30,r16
	ldd r24,Z+11
	ldd r25,Z+12
	rjmp .L62
.L60:
	ldd r24,Z+11
	ldd r25,Z+12
	call setMotorTimerCompareValue
	movw r30,r16
	ldd r24,Z+9
	ldd r25,Z+10
.L62:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.L61:
	call setMotorTimerCompareValue
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	motor2Speed_setDirSpeed, .-motor2Speed_setDirSpeed
.global	motor2Speed_getDirSpeed
	.type	motor2Speed_getDirSpeed, @function
motor2Speed_getDirSpeed:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	movw r14,r22
	movw r16,r20
	ldd r24,Y+9
	ldd r25,Y+10
	call getTimerCompareValue
	movw r12,r24
	ldd r24,Y+11
	ldd r25,Y+12
	call getTimerCompareValue
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L64
	sbiw r24,0
	brne .L65
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	movw r30,r16
	std Z+1,r25
	st Z,r24
	movw r30,r14
	std Z+1,r13
	st Z,r12
	rjmp .L63
.L64:
	sbiw r24,0
	breq .L65
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	movw r30,r14
	std Z+1,r25
	st Z,r24
	rjmp .L63
.L65:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	movw r30,r16
	std Z+1,r25
	st Z,r24
	movw r30,r14
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L63:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	motor2Speed_getDirSpeed, .-motor2Speed_getDirSpeed
