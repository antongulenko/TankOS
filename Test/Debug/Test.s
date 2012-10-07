	.file	"Test.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.setupMotors,"ax",@progbits
.global	setupMotors
	.type	setupMotors, @function
setupMotors:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(-1)
	out 42-32,r18
	out 39-32,r18
	ldi r18,lo8(20)
	out 40-32,r18
	sts 136+1,r25
	sts 136,r24
	sts 138+1,r25
	sts 138,r24
	ldi r24,lo8(-93)
	sts 128,r24
	ldi r24,lo8(1)
	sts 129,r24
/* epilogue start */
	ret
	.size	setupMotors, .-setupMotors
	.section	.text.testMotorsSmooth,"ax",@progbits
.global	testMotorsSmooth
	.type	testMotorsSmooth, @function
testMotorsSmooth:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L8:
	ldi r18,lo8(922)
	ldi r19,hi8(922)
	ldi r24,lo8(922)
	ldi r25,hi8(922)
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	rjmp .L10
.L9:
	ldi r18,lo8(410)
	ldi r19,hi8(410)
	ldi r24,lo8(410)
	ldi r25,hi8(410)
	ldi r20,lo8(0)
	ldi r21,hi8(0)
.L10:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L4
	sbiw r24,1
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	rjmp .L5
.L4:
	adiw r24,1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.L5:
	sts 136+1,r25
	sts 136,r24
	sts 138+1,r19
	sts 138,r18
	 ldi r30,lo8(4999)
    ldi r31,hi8(4999)
    1:sbiw r30,1
    brne 1b
	rjmp .
	nop
	ldi r31,hi8(923)
	cpi r24,lo8(923)
	cpc r25,r31
	brsh .L8
	ldi r22,hi8(410)
	cpi r24,lo8(410)
	cpc r25,r22
	brlo .L9
	rjmp .L10
	.size	testMotorsSmooth, .-testMotorsSmooth
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(1024)
	ldi r25,hi8(1024)
	call setupMotors
	call testMotorsSmooth
	ldi r24,lo8(0)
	ldi r25,hi8(0)
/* epilogue start */
	ret
	.size	main, .-main
	.section	.text.testTankLedsBlink,"ax",@progbits
.global	testTankLedsBlink
	.type	testTankLedsBlink, @function
testTankLedsBlink:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)
	out 33-32,r24
	ldi r24,lo8(127)
	out 42-32,r24
.L13:
	in r24,34-32
	com r24
	out 34-32,r24
	in r24,43-32
	com r24
	andi r24,lo8(127)
	out 43-32,r24
	 ldi r24,lo8(3999999)
    ldi r25,hi8(3999999)
    ldi r26,hlo8(3999999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L13
	.size	testTankLedsBlink, .-testTankLedsBlink
	.section	.text.testTankLeds,"ax",@progbits
.global	testTankLeds
	.type	testTankLeds, @function
testTankLeds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)
	out 33-32,r24
	ldi r24,lo8(127)
	out 42-32,r24
	ldi r25,lo8(-1)
.L15:
	out 34-32,r25
	out 43-32,r24
	rjmp .L15
	.size	testTankLeds, .-testTankLeds
	.section	.text.testTankButtons,"ax",@progbits
.global	testTankButtons
	.type	testTankButtons, @function
testTankButtons:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 33-32,__zero_reg__
	ldi r24,lo8(-1)
	out 36-32,r24
	ldi r24,lo8(127)
	out 42-32,r24
	out 39-32,__zero_reg__
	out 34-32,__zero_reg__
	ldi r24,lo8(-128)
	out 43-32,r24
	ldi r24,lo8(60)
	out 40-32,r24
.L22:
	in r25,38-32
	in r18,41-32
	ldi r24,lo8(1)
	sbrc r25,5
	ldi r24,lo8(0)
.L17:
	sbrs r25,4
	ori r24,lo8(2)
.L18:
	sbrs r25,3
	ori r24,lo8(4)
.L19:
	sbrs r25,2
	ori r24,lo8(8)
.L20:
	sbrs r18,7
	ori r24,lo8(16)
.L21:
	ori r24,lo8(-128)
	out 43-32,r24
	rjmp .L22
	.size	testTankButtons, .-testTankButtons
