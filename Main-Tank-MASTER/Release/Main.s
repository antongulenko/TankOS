	.file	"Main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.regulateBoth,"ax",@progbits
.global	regulateBoth
	.type	regulateBoth, @function
regulateBoth:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	call regulateStopMotor
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L2
	.size	regulateBoth, .-regulateBoth
	.section	.text.regulateOneAtATime,"ax",@progbits
.global	regulateOneAtATime
	.type	regulateOneAtATime, @function
regulateOneAtATime:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L4:
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L4
	.size	regulateOneAtATime, .-regulateOneAtATime
	.section	.text.bothForward,"ax",@progbits
.global	bothForward
	.type	bothForward, @function
bothForward:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r28,LeftMotorBase
	lds r29,LeftMotorBase+1
	lds r16,RightMotorBase
	lds r17,RightMotorBase+1
.L6:
	movw r24,r28
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call setSpeedForward
	movw r24,r16
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call setSpeedForward
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	movw r24,r28
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call setSpeedBackward
	movw r24,r16
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	call setSpeedBackward
	rjmp .L6
	.size	bothForward, .-bothForward
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L9:
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	call regulateStopMotor
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	call regulateStopMotor
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,RightMotor
	lds r25,RightMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call regulateSpeed
	lds r24,LeftMotor
	lds r25,LeftMotor+1
	ldi r22,lo8(-1)
	ldi r23,hi8(-1)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call regulateSpeed
	 ldi r24,lo8(11999999)
    ldi r25,hi8(11999999)
    ldi r26,hlo8(11999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L9
	.size	main, .-main
