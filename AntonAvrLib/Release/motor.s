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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+3
	ldd r25,Y+4
	call disableOutputCompare
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	ld r24,Y
	sbrs r24,3
	rjmp .L1
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinZero
.L1:
/* epilogue start */
	pop r29
	pop r28
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
	rjmp .L6
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	ldd r24,Y+5
	ldd r25,Y+6
	call readPin
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L15
	sbiw r24,0
	breq .L14
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp .L11
.L6:
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r18,r24
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L9
.L11:
	ld r24,Y
	sbrs r24,2
	rjmp .L9
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L10
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L10:
	movw r18,r24
.L9:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L15:
	sbiw r24,0
	brne .L14
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L11
.L14:
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
	cpi r20,2
	cpc r21,__zero_reg__
	breq .L17
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L17
	ld r18,Y
	sbrs r18,2
	rjmp .L20
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .+2
	rjmp .L25
	movw r20,r24
.L20:
	sbrs r18,3
	rjmp .L22
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L26
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinOne
.L24:
	ldd r24,Y+3
	ldd r25,Y+4
	movw r22,r16
	call setTimerCompareValue
	ldd r24,Y+3
	ldd r25,Y+4
	call enableOutputCompare
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L17:
	ldd r24,Y+3
	ldd r25,Y+4
	call disableOutputCompare
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
	ld r24,Y
	sbrs r24,3
	rjmp .L16
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinZero
.L16:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L26:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinZero
	rjmp .L24
.L22:
	ldd r24,Y+1
	ldd r25,Y+2
	movw r22,r20
	call writePin
	rjmp .L24
.L25:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	movw r20,r24
	rjmp .L20
	.size	setSpeed, .-setSpeed
	.section	.text.setSpeedForward,"ax",@progbits
.global	setSpeedForward
	.type	setSpeedForward, @function
setSpeedForward:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(0)
	ldi r21,hi8(0)
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
	ldi r20,lo8(1)
	ldi r21,hi8(1)
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
	rjmp .L30
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	ldd r24,Y+5
	ldd r25,Y+6
	call readPin
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L42
	sbiw r24,0
	breq .L41
	ldi r16,lo8(1)
	ldi r17,hi8(1)
	rjmp .L36
.L30:
	ldd r24,Y+1
	ldd r25,Y+2
	call readPin
	movw r16,r24
	cpi r24,2
	cpc r25,__zero_reg__
	breq .L41
.L36:
	ld r24,Y
	sbrs r24,2
	rjmp .L34
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L35
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L35:
	movw r16,r24
.L34:
	ldd r24,Y+3
	ldd r25,Y+4
	call getTimerCompareValue
	movw r18,r24
	lsr r19
	ror r18
	cpi r16,1
	cpc r17,__zero_reg__
	breq .L43
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L42:
	sbiw r24,0
	brne .L41
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L36
.L41:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L43:
	com r19
	neg r18
	sbci r19,lo8(-1)
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	getDirSpeed, .-getDirSpeed
	.section	.text.setDirSpeed,"ax",@progbits
.global	setDirSpeed
	.type	setDirSpeed, @function
setDirSpeed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r20,r23
	sbrc r23,7
	rjmp .L46
.L45:
	lsl r22
	rol r23
	rol r20
	clr r20
	rol r20
	ldi r21,lo8(0)
	call setSpeed
/* epilogue start */
	ret
.L46:
	com r23
	neg r22
	sbci r23,lo8(-1)
	rjmp .L45
	.size	setDirSpeed, .-setDirSpeed
