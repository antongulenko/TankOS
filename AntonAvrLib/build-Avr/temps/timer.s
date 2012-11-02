	.file	"timer.c"
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
.global	setCompareMatchOutputMode
	.type	setCompareMatchOutputMode, @function
setCompareMatchOutputMode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	cpi r22,4
	cpc r23,__zero_reg__
	brsh .L4
	movw r26,r22
	subi r26,lo8(-(CSWTCH.7))
	sbci r27,hi8(-(CSWTCH.7))
	ld r24,X
	subi r22,lo8(-(CSWTCH.8))
	sbci r23,hi8(-(CSWTCH.8))
	movw r26,r22
	ld r25,X
	rjmp .L2
.L4:
	ldi r25,lo8(0)
	ldi r24,lo8(0)
.L2:
	ldd r18,Z+4
	ldd r19,Z+5
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L3
	lsl r25
	lsl r25
	lsl r24
	lsl r24
.L3:
	ld r26,Z
	ldd r27,Z+1
	adiw r26,3
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	ld r18,X
	or r18,r25
	st X,r18
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldd __tmp_reg__,Z+3
	ldd r31,Z+4
	mov r30,__tmp_reg__
	ld r25,Z
	com r24
	and r24,r25
	st Z,r24
/* epilogue start */
	ret
	.size	setCompareMatchOutputMode, .-setCompareMatchOutputMode
.global	setTimerClockSelect
	.type	setTimerClockSelect, @function
setTimerClockSelect:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldi r25,lo8(0)
	andi r24,lo8(2)
	andi r25,hi8(2)
	cpi r22,4
	cpc r23,__zero_reg__
	breq .L11
	cpi r22,5
	cpc r23,__zero_reg__
	brsh .L17
	cpi r22,1
	cpc r23,__zero_reg__
	breq .L8
	cpi r22,1
	cpc r23,__zero_reg__
	brlo .L20
	cpi r22,2
	cpc r23,__zero_reg__
	breq .L9
	cpi r22,3
	cpc r23,__zero_reg__
	brne .L6
	rjmp .L27
.L17:
	cpi r22,7
	cpc r23,__zero_reg__
	breq .L14
	cpi r22,8
	cpc r23,__zero_reg__
	brsh .L18
	cpi r22,5
	cpc r23,__zero_reg__
	breq .L12
	cpi r22,6
	cpc r23,__zero_reg__
	brne .L6
	rjmp .L28
.L18:
	cpi r22,8
	cpc r23,__zero_reg__
	breq .L15
	cpi r22,9
	cpc r23,__zero_reg__
	breq .L16
.L6:
	ldi r25,lo8(0)
	rjmp .L24
.L8:
	ldi r25,lo8(1)
	ldi r24,lo8(6)
	rjmp .L7
.L9:
	ldi r25,lo8(2)
	ldi r24,lo8(5)
	rjmp .L7
.L27:
	sbiw r24,0
	brne .L22
	rjmp .L5
.L11:
	sbiw r24,0
	breq .L21
	rjmp .L22
.L12:
	sbiw r24,0
	brne .L23
	rjmp .L5
.L28:
	sbiw r24,0
	breq .L22
	rjmp .L25
.L14:
	sbiw r24,0
	breq .L23
	rjmp .L26
.L15:
	sbiw r24,0
	brne .L5
.L25:
	ldi r25,lo8(6)
	ldi r24,lo8(1)
	rjmp .L7
.L16:
	sbiw r24,0
	brne .L5
.L26:
	ldi r25,lo8(7)
.L24:
	ldi r24,lo8(0)
	rjmp .L7
.L20:
	ldi r25,lo8(0)
	ldi r24,lo8(7)
	rjmp .L7
.L21:
	ldi r25,lo8(3)
	ldi r24,lo8(4)
	rjmp .L7
.L22:
	ldi r25,lo8(4)
	ldi r24,lo8(3)
	rjmp .L7
.L23:
	ldi r25,lo8(5)
	ldi r24,lo8(2)
.L7:
	ldd r26,Z+5
	ldd r27,Z+6
	ld r18,X
	or r18,r25
	st X,r18
	ldd __tmp_reg__,Z+5
	ldd r31,Z+6
	mov r30,__tmp_reg__
	ld r25,Z
	com r24
	and r24,r25
	st Z,r24
.L5:
	ret
	.size	setTimerClockSelect, .-setTimerClockSelect
.global	setWaveformGenerationMode
	.type	setWaveformGenerationMode, @function
setWaveformGenerationMode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	sbrs r24,2
	rjmp .L30
	cpi r22,2
	cpc r23,__zero_reg__
	breq .L34
	cpi r22,3
	cpc r23,__zero_reg__
	brsh .L37
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L32
	cpi r22,1
	cpc r23,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L64
.L37:
	cpi r22,3
	cpc r23,__zero_reg__
	breq .L35
	cpi r22,4
	cpc r23,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L65
.L32:
	ldi r25,lo8(0)
	ldi r19,lo8(0)
	ldi r24,lo8(24)
	rjmp .L55
.L35:
	ldd r24,Z+1
	ldd r25,Z+2
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L39
	cpi r24,1
	cpc r25,__zero_reg__
	brlo .L38
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L48
	cpi r24,3
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L66
.L39:
	ldi r25,lo8(8)
	ldi r19,lo8(2)
	ldi r24,lo8(16)
	rjmp .L59
.L38:
	ldi r25,lo8(8)
	ldi r19,lo8(1)
	ldi r24,lo8(16)
	rjmp .L56
.L66:
	ldi r25,lo8(24)
	rjmp .L61
.L34:
	ldd r24,Z+1
	ldd r25,Z+2
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L42
	cpi r24,1
	cpc r25,__zero_reg__
	brlo .L41
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L49
	cpi r24,3
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L67
.L42:
	ldi r25,lo8(0)
	ldi r19,lo8(2)
	ldi r24,lo8(24)
	rjmp .L59
.L41:
	ldi r25,lo8(0)
	ldi r19,lo8(1)
	ldi r24,lo8(24)
	rjmp .L56
.L67:
	ldi r25,lo8(16)
	rjmp .L63
.L65:
	ldi r25,lo8(16)
	rjmp .L62
.L30:
	cpi r22,1
	cpc r23,__zero_reg__
	breq .L50
	cpi r22,1
	cpc r23,__zero_reg__
	brlo .L44
	cpi r22,2
	cpc r23,__zero_reg__
	breq .L45
	cpi r22,3
	cpc r23,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L68
.L44:
	ldi r25,lo8(0)
	ldi r19,lo8(0)
	ldi r24,lo8(8)
	rjmp .L55
.L68:
	ldd r24,Z+1
	ldd r25,Z+2
	sbiw r24,0
	breq .L51
	cpi r24,3
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L29
	rjmp .L69
.L45:
	ldd r24,Z+1
	ldd r25,Z+2
	sbiw r24,0
	breq .L53
	cpi r24,3
	cpc r25,__zero_reg__
	breq .L54
	ldi r25,lo8(0)
	ldi r19,lo8(0)
	rjmp .L60
.L64:
	ldi r25,lo8(8)
	ldi r19,lo8(0)
	ldi r24,lo8(16)
.L55:
	ldi r18,lo8(3)
	rjmp .L33
.L48:
	ldi r25,lo8(8)
	ldi r19,lo8(3)
	ldi r24,lo8(16)
.L58:
	ldi r18,lo8(0)
	rjmp .L33
.L49:
	ldi r25,lo8(0)
	ldi r19,lo8(3)
	ldi r24,lo8(24)
	rjmp .L58
.L50:
	ldi r25,lo8(0)
	ldi r19,lo8(2)
	ldi r24,lo8(8)
.L59:
	ldi r18,lo8(1)
	rjmp .L33
.L51:
	ldi r25,lo8(0)
.L63:
	ldi r19,lo8(3)
	ldi r24,lo8(8)
	rjmp .L58
.L69:
	ldi r25,lo8(8)
.L61:
	ldi r19,lo8(3)
.L60:
	ldi r24,lo8(0)
	rjmp .L58
.L53:
	ldi r25,lo8(0)
.L62:
	ldi r19,lo8(1)
	ldi r24,lo8(8)
	rjmp .L56
.L54:
	ldi r25,lo8(8)
	ldi r19,lo8(1)
	ldi r24,lo8(0)
.L56:
	ldi r18,lo8(2)
.L33:
	ldd r26,Z+3
	ldd r27,Z+4
	ld r20,X
	or r20,r19
	st X,r20
	ldd r26,Z+3
	ldd r27,Z+4
	ld r19,X
	com r18
	and r18,r19
	st X,r18
	ldd r26,Z+5
	ldd r27,Z+6
	ld r18,X
	or r18,r25
	st X,r18
	ldd __tmp_reg__,Z+5
	ldd r31,Z+6
	mov r30,__tmp_reg__
	ld r25,Z
	com r24
	and r24,r25
	st Z,r24
.L29:
	ret
	.size	setWaveformGenerationMode, .-setWaveformGenerationMode
.global	enableTimerInterrupt
	.type	enableTimerInterrupt, @function
enableTimerInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd __tmp_reg__,Z+7
	ldd r31,Z+8
	mov r30,__tmp_reg__
	ld r18,Z
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	sbiw r24,0
	brne .L72
	ldi r24,lo8(2)
	rjmp .L71
.L72:
	ldi r24,lo8(4)
.L71:
	or r24,r18
	st Z,r24
/* epilogue start */
	ret
	.size	enableTimerInterrupt, .-enableTimerInterrupt
.global	disableTimerInterrupt
	.type	disableTimerInterrupt, @function
disableTimerInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ldd __tmp_reg__,Z+7
	ldd r31,Z+8
	mov r30,__tmp_reg__
	ld r18,Z
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	sbiw r24,0
	brne .L75
	ldi r24,lo8(-3)
	rjmp .L74
.L75:
	ldi r24,lo8(-5)
.L74:
	and r24,r18
	st Z,r24
/* epilogue start */
	ret
	.size	disableTimerInterrupt, .-disableTimerInterrupt
.global	enableOutputCompare
	.type	enableOutputCompare, @function
enableOutputCompare:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+6
	ldd r25,Y+7
	call setPinOutput
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setCompareMatchOutputMode
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	enableOutputCompare, .-enableOutputCompare
.global	disableOutputCompare
	.type	disableOutputCompare, @function
disableOutputCompare:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldd r24,Y+6
	ldd r25,Y+7
	call setPinZero
	movw r24,r28
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setCompareMatchOutputMode
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	disableOutputCompare, .-disableOutputCompare
.global	setTimerCompareValue
	.type	setTimerCompareValue, @function
setTimerCompareValue:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r26,Z
	ldd r27,Z+1
	ld r24,X
	sbrs r24,2
	rjmp .L79
	in r25,__SREG__
	sbrs r24,0
	rjmp .L80
	lsl r22
	mov r22,r23
	rol r22
	sbc r23,r23
	neg r23
	rjmp .L81
.L80:
	sbrs r24,1
	rjmp .L81
	ldi r24,6
1:	lsr r23
	ror r22
	dec r24
	brne 1b
.L81:
/* #APP */
 ;  266 "AntonAvrLib/kernel/devices/timer.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r26,Z+2
	ldd r27,Z+3
	adiw r26,1
	st X,r23
	sbiw r26,1
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	st Z,r22
	out __SREG__,r25
	ret
.L79:
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	st Z,r23
	ret
	.size	setTimerCompareValue, .-setTimerCompareValue
.global	getTimerCompareValue
	.type	getTimerCompareValue, @function
getTimerCompareValue:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r26,Z
	ldd r27,Z+1
	ld r24,X
	sbrs r24,2
	rjmp .L84
	in r24,__SREG__
/* #APP */
 ;  282 "AntonAvrLib/kernel/devices/timer.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldd r26,Z+2
	ldd r27,Z+3
	ld r18,X+
	ld r19,X
	sbiw r26,1
	out __SREG__,r24
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	sbrs r24,0
	rjmp .L85
	lsr r19
	mov r19,r18
	clr r18
	ror r19
	ror r18
	rjmp .L86
.L85:
	sbrs r24,1
	rjmp .L86
	ldi r20,6
1:	lsl r18
	rol r19
	dec r20
	brne 1b
	rjmp .L86
.L84:
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	ld r24,Z
	mov r19,r24
	ldi r18,lo8(0)
.L86:
	movw r24,r18
/* epilogue start */
	ret
	.size	getTimerCompareValue, .-getTimerCompareValue
	.data
	.type	CSWTCH.7, @object
	.size	CSWTCH.7, 4
CSWTCH.7:
	.byte	48
	.byte	32
	.byte	16
	.byte	0
	.type	CSWTCH.8, @object
	.size	CSWTCH.8, 4
CSWTCH.8:
	.byte	0
	.byte	16
	.byte	32
	.byte	48
