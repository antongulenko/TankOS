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
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,i
	lds r25,i+1
	rjmp .L4
.L6:
	lsl r24
	rol r25
.L3:
	lds r30,AllLeds
	lds r31,AllLeds+1
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	call enableLed
	 ldi r24,lo8(799999)
    ldi r25,hi8(799999)
    ldi r26,hlo8(799999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,i
	lds r25,i+1
	lsl r24
	rol r25
	lds r30,AllLeds
	lds r31,AllLeds+1
	add r30,r24
	adc r31,r25
	ld r24,Z
	ldd r25,Z+1
	call disableLed
	 ldi r24,lo8(399999)
    ldi r25,hi8(399999)
    ldi r26,hlo8(399999)
    1:subi r24,1
    sbci r25,0
    sbci r26,0
    brne 1b
	rjmp .
	nop
	lds r24,i
	lds r25,i+1
	adiw r24,1
	sts i+1,r25
	sts i,r24
.L4:
	lds r18,AllLeds+2
	ldi r19,lo8(0)
	cp r24,r18
	cpc r25,r19
	brlt .L6
	sts i+1,__zero_reg__
	sts i,__zero_reg__
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L3
	.size	main, .-main
.global	i
.global	i
	.section .bss
	.type	i, @object
	.size	i, 2
i:
	.skip 2,0
.global __do_clear_bss
