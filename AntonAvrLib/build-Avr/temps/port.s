	.file	"port.c"
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
.global	setPortOutput
	.type	setPortOutput, @function
setPortOutput:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	ldi r24,lo8(-1)
	st Z,r24
/* epilogue start */
	ret
	.size	setPortOutput, .-setPortOutput
.global	setPortInput
	.type	setPortInput, @function
setPortInput:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	st Z,__zero_reg__
/* epilogue start */
	ret
	.size	setPortInput, .-setPortInput
.global	setPinOutput
	.type	setPinOutput, @function
setPinOutput:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ld r24,Z
	adiw r26,2
	ld r25,X
	sbiw r26,2
	or r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	setPinOutput, .-setPinOutput
.global	setPinInput
	.type	setPinInput, @function
setPinInput:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ld r25,Z
	adiw r26,2
	ld r24,X
	sbiw r26,2
	com r24
	and r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	setPinInput, .-setPinInput
.global	writePort
	.type	writePort, @function
writePort:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	st Z,r22
/* epilogue start */
	ret
	.size	writePort, .-writePort
.global	readPort
	.type	readPort, @function
readPort:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
	ld r24,Z
/* epilogue start */
	ret
	.size	readPort, .-readPort
.global	setPinOne
	.type	setPinOne, @function
setPinOne:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	adiw r26,2
	ld r25,X
	sbiw r26,2
	or r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	setPinOne, .-setPinOne
.global	setPinZero
	.type	setPinZero, @function
setPinZero:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r25,Z
	adiw r26,2
	ld r24,X
	sbiw r26,2
	com r24
	and r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	setPinZero, .-setPinZero
.global	writePin
	.type	writePin, @function
writePin:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L10
	call setPinOne
	ret
.L10:
	call setPinZero
	ret
	.size	writePin, .-writePin
.global	readPin
	.type	readPin, @function
readPin:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r26,Z
	ldd r27,Z+1
	adiw r26,2
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	ld r18,X
	ldd r24,Z+2
	and r18,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	brne .L13
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L13:
	ret
	.size	readPin, .-readPin
