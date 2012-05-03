	.file	"base.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.nibobee_getMillivolt,"ax",@progbits
.global	nibobee_getMillivolt
	.type	nibobee_getMillivolt, @function
nibobee_getMillivolt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(4)
	call analog_getValue
	movw r22,r24
	ldi r24,lo8(-15616)
	ldi r25,hi8(-15616)
	call __udivmodhi4
	movw r18,r22
	lsl r18
	rol r19
	add r18,r22
	adc r19,r23
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r22
	adc r19,r23
	movw r24,r18
/* epilogue start */
	ret
	.size	nibobee_getMillivolt, .-nibobee_getMillivolt
	.section	.text.nibobee_assertMinVoltage,"ax",@progbits
.global	nibobee_assertMinVoltage
	.type	nibobee_assertMinVoltage, @function
nibobee_assertMinVoltage:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldi r24,lo8(4)
	call analog_getValue
	cp r28,r24
	cpc r29,r25
	brlo .L6
/* epilogue start */
	pop r29
	pop r28
	ret
.L6:
	in r24,36-32
	ori r24,lo8(15)
	out 36-32,r24
	call motpwm_stop
/* #APP */
 ;  86 "../../../NIBObeeLib/src/nibobee/base.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L4:
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(1)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(2)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(0)
	ldi r22,lo8(0)
	call led_set
	ldi r24,lo8(3)
	ldi r22,lo8(0)
	call led_set
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	rjmp .L4
	.size	nibobee_assertMinVoltage, .-nibobee_assertMinVoltage
	.comm nibobee_initialization,1,1
.global __do_clear_bss
