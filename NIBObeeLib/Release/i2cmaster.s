	.file	"i2cmaster.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.i2c_start_transmission,"ax",@progbits
.global	i2c_start_transmission
	.type	i2c_start_transmission, @function
i2c_start_transmission:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  98 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,i2c_state
	tst r24
	breq .L7
	lds r24,188
	sbrc r24,4
	rjmp .L8
	lds r24,188
	sbrc r24,5
	rjmp .L9
	sts i2c_state,__zero_reg__
	lds r24,i2c_tx_size
	sts i2c_size,r24
	ldi r24,lo8(-91)
	sts 188,r24
	ldi r24,lo8(1)
/* #APP */
 ;  122 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
.L8:
	ldi r24,lo8(18)
	sts i2c_state,r24
	ldi r24,lo8(0)
/* #APP */
 ;  122 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
.L7:
	ldi r24,lo8(17)
	sts i2c_state,r24
	ldi r24,lo8(0)
/* #APP */
 ;  122 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
.L9:
	sts 188,__zero_reg__
	ldi r24,lo8(4)
	sts 188,r24
	ldi r24,lo8(24)
	sts i2c_state,r24
	ldi r24,lo8(0)
/* #APP */
 ;  122 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	i2c_start_transmission, .-i2c_start_transmission
	.section	.text.i2c_wait_transmission,"ax",@progbits
.global	i2c_wait_transmission
	.type	i2c_wait_transmission, @function
i2c_wait_transmission:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-15536)
	ldi r25,hi8(-15536)
	rjmp .L13
.L11:
	 ldi r18,lo8(6)
    1:dec r18
    brne 1b
	rjmp .
	sbiw r24,1
	breq .L17
.L13:
	lds r18,188
	sbrc r18,0
	rjmp .L11
	lds r18,188
	sbrc r18,4
	rjmp .L11
	ldi r24,lo8(1)
	ret
.L17:
/* #APP */
 ;  136 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts 188,__zero_reg__
	ldi r24,lo8(4)
	sts 188,r24
	lds r24,i2c_state
	cpi r24,lo8(16)
	brsh .L14
	ldi r24,lo8(19)
	sts i2c_state,r24
.L14:
/* #APP */
 ;  142 "../../../NIBObeeLib/src/nibobee/i2cmaster.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(0)
	ret
	.size	i2c_wait_transmission, .-i2c_wait_transmission
	.section	.text.i2c_status,"ax",@progbits
.global	i2c_status
	.type	i2c_status, @function
i2c_status:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,i2c_state
/* epilogue start */
	ret
	.size	i2c_status, .-i2c_status
	.section	.text.i2c_init,"ax",@progbits
.global	i2c_init
	.type	i2c_init, @function
i2c_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(188)
	ldi r31,hi8(188)
	st Z,__zero_reg__
	ldi r24,lo8(100)
	sts 184,r24
	ldi r24,lo8(-1)
	sts 187,r24
	ldi r24,lo8(4)
	st Z,r24
	ldi r24,lo8(1)
	sts i2c_state,r24
	lds r24,nibobee_initialization
	ori r24,lo8(4)
	sts nibobee_initialization,r24
/* epilogue start */
	ret
	.size	i2c_init, .-i2c_init
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	lds r24,185
	andi r24,lo8(-8)
	sts i2c_last_TWSR,r24
	cpi r24,lo8(40)
	breq .L24
	cpi r24,lo8(41)
	brlo .L37
	cpi r24,lo8(64)
	brne .+2
	rjmp .L26
	cpi r24,lo8(65)
	brsh .+2
	rjmp .L38
	cpi r24,lo8(80)
	brne .+2
	rjmp .L27
	cpi r24,lo8(88)
	brne .+2
	rjmp .L28
	cpi r24,lo8(72)
	breq .+2
	rjmp .L21
.L22:
	ldi r24,lo8(-108)
	sts 188,r24
	ldi r24,lo8(22)
	sts i2c_state,r24
	rjmp .L20
.L37:
	cpi r24,lo8(16)
	breq .L23
	cpi r24,lo8(17)
	brlo .L39
	cpi r24,lo8(24)
	breq .L24
	cpi r24,lo8(32)
	breq .+2
	rjmp .L21
	rjmp .L22
.L39:
	tst r24
	breq .L22
	cpi r24,lo8(8)
	breq .+2
	rjmp .L21
.L23:
	sts i2c_pos,__zero_reg__
.L24:
	lds r25,i2c_pos
	lds r24,i2c_size
	cp r25,r24
	brsh .+2
	rjmp .L40
	lds r24,i2c_rx_size
	tst r24
	brne .+2
	rjmp .L36
	lds r24,i2c_rx_size
	sts i2c_size,r24
	lds r24,i2c_buf
	ori r24,lo8(1)
	sts i2c_buf,r24
	ldi r24,lo8(-91)
	sts 188,r24
.L20:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.L27:
	lds r24,i2c_pos
	lds r25,187
	mov r30,r24
	ldi r31,lo8(0)
	subi r30,lo8(-(i2c_buf))
	sbci r31,hi8(-(i2c_buf))
	st Z,r25
	subi r24,lo8(-(1))
	sts i2c_pos,r24
.L26:
	lds r24,i2c_pos
	lds r18,i2c_size
	ldi r25,lo8(0)
	adiw r24,1
	ldi r19,lo8(0)
	cp r24,r18
	cpc r25,r19
	brge .L35
	ldi r24,lo8(-59)
	sts 188,r24
	rjmp .L20
.L38:
	cpi r24,lo8(48)
	brne .+2
	rjmp .L22
	cpi r24,lo8(56)
	breq .L41
.L21:
	ldi r24,lo8(-124)
	sts 188,r24
	ldi r24,lo8(23)
	sts i2c_state,r24
	rjmp .L20
.L35:
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L20
.L40:
	lds r24,i2c_pos
	mov r30,r24
	ldi r31,lo8(0)
	subi r30,lo8(-(i2c_buf))
	sbci r31,hi8(-(i2c_buf))
	ld r25,Z
	subi r24,lo8(-(1))
	sts i2c_pos,r24
	sts 187,r25
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L20
.L28:
	lds r30,i2c_pos
	lds r24,187
	ldi r31,lo8(0)
	subi r30,lo8(-(i2c_buf))
	sbci r31,hi8(-(i2c_buf))
	st Z,r24
.L36:
	ldi r24,lo8(2)
	sts i2c_state,r24
	ldi r24,lo8(-108)
	sts 188,r24
	rjmp .L20
.L41:
	ldi r24,lo8(-124)
	sts 188,r24
	ldi r24,lo8(21)
	sts i2c_state,r24
	rjmp .L20
	.size	__vector_26, .-__vector_26
	.comm i2c_tx_size,1,1
	.comm i2c_rx_size,1,1
	.comm i2c_buf,37,1
	.comm i2c_last_TWSR,1,1
	.comm i2c_pos,1,1
	.comm i2c_state,1,1
	.comm i2c_size,1,1
.global __do_clear_bss
