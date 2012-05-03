	.file	"Main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.decode_l,"ax",@progbits
.global	decode_l
	.type	decode_l, @function
decode_l:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(1)
	breq .L4
	ldi r25,lo8(1)
	cpi r24,lo8(2)
	breq .L2
	ldi r25,lo8(0)
.L2:
	mov r24,r25
/* epilogue start */
	ret
.L4:
	ldi r25,lo8(-1)
	mov r24,r25
/* epilogue start */
	ret
	.size	decode_l, .-decode_l
	.section	.text.decode_r,"ax",@progbits
.global	decode_r
	.type	decode_r, @function
decode_r:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(1)
	breq .L9
	ldi r25,lo8(1)
	cpi r24,lo8(2)
	breq .L7
	ldi r25,lo8(0)
.L7:
	mov r24,r25
/* epilogue start */
	ret
.L9:
	ldi r25,lo8(-1)
	mov r24,r25
/* epilogue start */
	ret
	.size	decode_r, .-decode_r
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	in r24,36-32
	ori r24,lo8(15)
	out 36-32,r24
	ldi r24,lo8(9600)
	ldi r25,hi8(9600)
	call usart_setbaudrate
	call usart_enable
	call motpwm_init
	call odometry_init
	call motpwm_stop
	call analog_init
	in r24,40-32
	ori r24,lo8(-16)
	out 40-32,r24
	sbi 36-32,4
	rjmp .L35
.L39:
	ldi r26,lo8(1)
	cpi r24,lo8(2)
	breq .L12
	ldi r26,lo8(0)
.L12:
	in r24,38-32
	swap r24
	lsr r24
	lsr r24
	andi r24,lo8(3)
	cpi r24,lo8(1)
	brne .+2
	rjmp .L30
.L40:
	ldi r30,lo8(1)
	cpi r24,lo8(2)
	breq .L14
	ldi r30,lo8(0)
.L14:
	subi r26,lo8(-(1))
	clr r27
	sbrc r26,7
	com r27
	lsl r26
	rol r27
	subi r26,lo8(-(CSWTCH.1))
	sbci r27,hi8(-(CSWTCH.1))
	ld r28,X+
	ld r29,X
	subi r30,lo8(-(1))
	clr r31
	sbrc r30,7
	com r31
	lsl r30
	rol r31
	subi r30,lo8(-(CSWTCH.4))
	sbci r31,hi8(-(CSWTCH.4))
	ld r16,Z
	ldd r17,Z+1
	movw r24,r28
	call motpwm_setLeft
	movw r24,r16
	call motpwm_setRight
	sbiw r28,0
	brne .L16
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L36
.L16:
	ldi r22,lo8(1)
	cp __zero_reg__,r28
	cpc __zero_reg__,r29
	brge .L37
.L27:
	ldi r24,lo8(1)
	call led_set
	ldi r22,lo8(1)
	cp __zero_reg__,r16
	cpc __zero_reg__,r17
	brge .L38
.L28:
	ldi r24,lo8(2)
	call led_set
	movw r14,r28
	mov r22,r15
	rol r22
	clr r22
	rol r22
	ldi r24,lo8(0)
	call led_set
	mov r22,r17
	rol r22
	clr r22
	rol r22
	ldi r24,lo8(3)
	call led_set
.L35:
/* #APP */
 ;  65 "..\..\..\NIBObeeLib\src/test/first/first.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	in r24,38-32
	ldi r25,lo8(0)
	andi r24,lo8(48)
	andi r25,hi8(48)
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	cpi r24,lo8(1)
	breq .+2
	rjmp .L39
	ldi r26,lo8(-1)
	in r24,38-32
	swap r24
	lsr r24
	lsr r24
	andi r24,lo8(3)
	cpi r24,lo8(1)
	breq .+2
	rjmp .L40
.L30:
	ldi r30,lo8(-1)
	rjmp .L14
.L38:
	ldi r22,lo8(0)
	rjmp .L28
.L37:
	ldi r22,lo8(0)
	rjmp .L27
.L36:
	 ldi r24,lo8(4999)
    ldi r25,hi8(4999)
    1:sbiw r24,1
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(8)
	call analog_getValue
	movw r16,r24
	ldi r24,lo8(5)
	call analog_getValue
	subi r16,lo8(-(-40))
	sbci r17,hi8(-(-40))
	sub r16,r24
	sbc r17,r25
	ldi r24,lo8(9)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(6)
	call analog_getValue
	movw r14,r28
	sub r14,r24
	sbc r15,r25
	movw r28,r14
	lsl r28
	rol r29
	add r28,r14
	adc r29,r15
	lsr r29
	ror r28
	lsr r29
	ror r28
	sbiw r28,60
	ldi r24,lo8(10)
	call analog_getValue
	movw r14,r24
	ldi r24,lo8(7)
	call analog_getValue
	ldi r18,lo8(-40)
	ldi r19,hi8(-40)
	add r14,r18
	adc r15,r19
	sub r14,r24
	sbc r15,r25
	sbrc r17,7
	rjmp .L41
.L17:
	sbrc r29,7
	rjmp .L42
.L18:
	sbrc r15,7
	rjmp .L43
.L19:
	ldi r19,hi8(301)
	cpi r16,lo8(301)
	cpc r17,r19
	brge .L31
	movw r18,r16
	lsl r18
	rol r19
	movw r24,r28
	add r24,r14
	adc r25,r15
	ldi r22,lo8(1)
	cp r24,r18
	cpc r25,r19
	brlt .L20
	ldi r22,lo8(0)
.L20:
	ldi r24,lo8(301)
	cp r14,r24
	ldi r24,hi8(301)
	cpc r15,r24
	brge .L32
	movw r24,r14
	lsl r24
	rol r25
	add r28,r16
	adc r29,r17
	clr r13
	inc r13
	cp r28,r24
	cpc r29,r25
	brlt .L22
	clr r13
.L22:
	cpi r16,100
	cpc r17,__zero_reg__
	brge .L24
	ldi r22,lo8(0)
.L24:
	ldi r25,lo8(100)
	cp r14,r25
	cpc r15,__zero_reg__
	brge .L25
	clr r13
.L25:
	ldi r24,lo8(1)
	call led_set
	ldi r24,lo8(2)
	mov r22,r13
	call led_set
	in r22,41-32
	andi r22,lo8(4)
	ldi r24,lo8(0)
	call led_set
	in r22,41-32
	andi r22,lo8(8)
	ldi r24,lo8(3)
	call led_set
	rjmp .L35
.L32:
	clr r13
	inc r13
	rjmp .L22
.L31:
	ldi r22,lo8(1)
	rjmp .L20
.L43:
	clr r14
	clr r15
	rjmp .L19
.L42:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L18
.L41:
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L17
	.size	main, .-main
	.data
	.type	CSWTCH.1, @object
	.size	CSWTCH.1, 6
CSWTCH.1:
	.word	-800
	.word	0
	.word	800
	.type	CSWTCH.4, @object
	.size	CSWTCH.4, 6
CSWTCH.4:
	.word	-800
	.word	0
	.word	800
.global __do_copy_data
