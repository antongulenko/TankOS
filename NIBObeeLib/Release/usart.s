	.file	"usart.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.usart_setbaudrate,"ax",@progbits
.global	usart_setbaudrate
	.type	usart_setbaudrate, @function
usart_setbaudrate:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r24
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	lsl r18
	rol r19
	rol r20
	rol r21
	lsl r18
	rol r19
	rol r20
	rol r21
	lsl r18
	rol r19
	rol r20
	rol r21
	lsl r18
	rol r19
	rol r20
	rol r21
	ldi r22,lo8(20000000)
	ldi r23,hi8(20000000)
	ldi r24,hlo8(20000000)
	ldi r25,hhi8(20000000)
	call __udivmodsi4
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sts 197,r19
	sts 196,r18
/* epilogue start */
	ret
	.size	usart_setbaudrate, .-usart_setbaudrate
	.section	.text.usart_getchar,"ax",@progbits
.global	usart_getchar
	.type	usart_getchar, @function
usart_getchar:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  77 "../../../NIBObeeLib/src/nibobee/usart.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,usart_rxbuf_begin
	ldi r31,lo8(0)
	subi r30,lo8(-(usart_rxbuf))
	sbci r31,hi8(-(usart_rxbuf))
	ld r24,Z
	lds r25,usart_rxbuf_end
	cpi r25,lo8(8)
	breq .L6
.L3:
	lds r25,usart_rxbuf_begin
	subi r25,lo8(-(1))
	sts usart_rxbuf_begin,r25
	lds r25,usart_rxbuf_begin
	cpi r25,lo8(8)
	brlo .L4
	sts usart_rxbuf_begin,__zero_reg__
.L4:
/* #APP */
 ;  86 "../../../NIBObeeLib/src/nibobee/usart.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
.L6:
	lds r25,usart_rxbuf_begin
	sts usart_rxbuf_end,r25
	rjmp .L3
	.size	usart_getchar, .-usart_getchar
	.section	.text.usart_putchar,"ax",@progbits
.global	usart_putchar
	.type	usart_putchar, @function
usart_putchar:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  92 "../../../NIBObeeLib/src/nibobee/usart.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,usart_txbuf_end
	ldi r31,lo8(0)
	subi r30,lo8(-(usart_txbuf))
	sbci r31,hi8(-(usart_txbuf))
	st Z,r24
	lds r25,usart_txbuf_end
	subi r25,lo8(-(1))
	sts usart_txbuf_end,r25
	lds r25,usart_txbuf_end
	cpi r25,lo8(16)
	brlo .L8
	sts usart_txbuf_end,__zero_reg__
.L8:
	lds r18,usart_txbuf_end
	lds r25,usart_txbuf_begin
	cp r18,r25
	brne .L9
	ldi r25,lo8(16)
	sts usart_txbuf_end,r25
.L9:
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
/* #APP */
 ;  102 "../../../NIBObeeLib/src/nibobee/usart.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	usart_putchar, .-usart_putchar
	.section	.text.usart_enable,"ax",@progbits
.global	usart_enable
	.type	usart_enable, @function
usart_enable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-72)
	sts 193,r24
/* epilogue start */
	ret
	.size	usart_enable, .-usart_enable
	.section	.text.usart_disable,"ax",@progbits
.global	usart_disable
	.type	usart_disable, @function
usart_disable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts 193,__zero_reg__
/* epilogue start */
	ret
	.size	usart_disable, .-usart_disable
	.section	.text.__vector_20,"ax",@progbits
.global	__vector_20
	.type	__vector_20, @function
__vector_20:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r25,198
	lds r24,usart_rxbuf_end
	cpi r24,lo8(8)
	breq .L12
	lds r30,usart_rxbuf_end
	ldi r31,lo8(0)
	subi r30,lo8(-(usart_rxbuf))
	sbci r31,hi8(-(usart_rxbuf))
	st Z,r25
	lds r24,usart_rxbuf_end
	subi r24,lo8(-(1))
	sts usart_rxbuf_end,r24
	lds r24,usart_rxbuf_end
	cpi r24,lo8(8)
	brlo .L14
	sts usart_rxbuf_end,__zero_reg__
.L14:
	lds r25,usart_rxbuf_end
	lds r24,usart_rxbuf_begin
	cp r25,r24
	breq .L15
.L12:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L15:
	ldi r24,lo8(8)
	sts usart_rxbuf_end,r24
	rjmp .L12
	.size	__vector_20, .-__vector_20
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r25,usart_txbuf_begin
	lds r24,usart_txbuf_end
	cp r25,r24
	breq .L17
	lds r30,usart_txbuf_begin
	ldi r31,lo8(0)
	subi r30,lo8(-(usart_txbuf))
	sbci r31,hi8(-(usart_txbuf))
	ld r25,Z
	lds r24,usart_txbuf_end
	cpi r24,lo8(16)
	breq .L21
.L18:
	lds r24,usart_txbuf_begin
	subi r24,lo8(-(1))
	sts usart_txbuf_begin,r24
	lds r24,usart_txbuf_begin
	cpi r24,lo8(16)
	brlo .L19
	sts usart_txbuf_begin,__zero_reg__
.L19:
	sts 198,r25
.L16:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L17:
	lds r24,193
	andi r24,lo8(-33)
	sts 193,r24
	rjmp .L16
.L21:
	lds r24,usart_txbuf_begin
	sts usart_txbuf_end,r24
	rjmp .L18
	.size	__vector_21, .-__vector_21
	.comm usart_txbuf,16,1
	.comm usart_rxbuf,8,1
	.comm usart_txbuf_begin,1,1
	.comm usart_txbuf_end,1,1
	.comm usart_rxbuf_begin,1,1
	.comm usart_rxbuf_end,1,1
.global __do_clear_bss
