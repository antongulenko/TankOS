	.file	"line.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.line_init,"ax",@progbits
.global	line_init
	.type	line_init, @function
line_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,nibobee_initialization
	sbrc r24,0
	rjmp .L2
	call analog_init
.L2:
	ldi r24,lo8(line_cal)
	ldi r25,hi8(line_cal)
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(12)
	ldi r21,hi8(12)
	call __eerd_block_m1284p
	lds r24,line_cal+6
	lds r25,line_cal+6+1
	ldi r18,hi8(-1)
	cpi r24,lo8(-1)
	cpc r25,r18
	brne .L3
	ldi r24,lo8(512)
	ldi r25,hi8(512)
	sts line_cal+6+1,r25
	sts line_cal+6,r24
	ldi r18,lo8(768)
	ldi r19,hi8(768)
	sts line_cal+8+1,r19
	sts line_cal+8,r18
	sts line_cal+10+1,r25
	sts line_cal+10,r24
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	sts line_cal+1,r25
	sts line_cal,r24
	sts line_cal+2+1,r25
	sts line_cal+2,r24
	sts line_cal+4+1,r25
	sts line_cal+4,r24
.L3:
	sbi 36-32,4
/* epilogue start */
	ret
	.size	line_init, .-line_init
	.section	.text.line_writePersistent,"ax",@progbits
.global	line_writePersistent
	.type	line_writePersistent, @function
line_writePersistent:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(line_cal)
	ldi r25,hi8(line_cal)
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(12)
	ldi r21,hi8(12)
	call __eewr_block_m1284p
/* epilogue start */
	ret
	.size	line_writePersistent, .-line_writePersistent
	.section	.text.line_readPersistent,"ax",@progbits
.global	line_readPersistent
	.type	line_readPersistent, @function
line_readPersistent:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(line_cal)
	ldi r25,hi8(line_cal)
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(12)
	ldi r21,hi8(12)
	call __eerd_block_m1284p
	lds r24,line_cal+6
	lds r25,line_cal+6+1
	ldi r18,hi8(-1)
	cpi r24,lo8(-1)
	cpc r25,r18
	breq .L8
	ret
.L8:
	ldi r24,lo8(512)
	ldi r25,hi8(512)
	sts line_cal+6+1,r25
	sts line_cal+6,r24
	ldi r18,lo8(768)
	ldi r19,hi8(768)
	sts line_cal+8+1,r19
	sts line_cal+8,r18
	sts line_cal+10+1,r25
	sts line_cal+10,r24
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	sts line_cal+1,r25
	sts line_cal,r24
	sts line_cal+2+1,r25
	sts line_cal+2,r24
	sts line_cal+4+1,r25
	sts line_cal+4,r24
	ret
	.size	line_readPersistent, .-line_readPersistent
	.section	.text.line_get,"ax",@progbits
.global	line_get
	.type	line_get, @function
line_get:
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r18,r24
	cpi r24,lo8(3)
	brlo .L15
.L13:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L10:
	movw r24,r18
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	ret
.L15:
	subi r24,lo8(-(8))
	std Y+1,r18
	call analog_getValue
	movw r16,r24
	ldd r18,Y+1
	mov r24,r18
	subi r24,lo8(-(5))
	call analog_getValue
	sub r16,r24
	sbc r17,r25
	ldd r18,Y+1
	sbrc r17,7
	rjmp .L16
.L11:
	movw r22,r16
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	ldi r19,10
1:	lsl r22
	rol r23
	rol r24
	rol r25
	dec r19
	brne 1b
	mov r16,r18
	ldi r17,lo8(0)
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(line_cal+6))
	sbci r31,hi8(-(line_cal+6))
	ld r18,Z
	ldd r19,Z+1
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call __udivmodsi4
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(line_cal))
	sbci r31,hi8(-(line_cal))
	ld r24,Z
	ldd r25,Z+1
	ldi r26,lo8(0)
	ldi r27,hi8(0)
	cp r24,r18
	cpc r25,r19
	cpc r26,r20
	cpc r27,r21
	brsh .L13
	sub r18,r24
	sbc r19,r25
	sbc r20,r26
	sbc r21,r27
	cpi r18,lo8(32768)
	ldi r24,hi8(32768)
	cpc r19,r24
	ldi r24,hlo8(32768)
	cpc r20,r24
	ldi r24,hhi8(32768)
	cpc r21,r24
	brsh .+2
	rjmp .L10
	ldi r18,lo8(32767)
	ldi r19,hi8(32767)
	movw r24,r18
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	ret
.L16:
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	rjmp .L11
	.size	line_get, .-line_get
	.section	.text.line_calibrateWhite,"ax",@progbits
.global	line_calibrateWhite
	.type	line_calibrateWhite, @function
line_calibrateWhite:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(100)
	ldi r25,hi8(100)
	call delay
	ldi r24,lo8(8)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(5)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L21
.L18:
	sts line_cal+6+1,r29
	sts line_cal+6,r28
	ldi r24,lo8(9)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(6)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L22
.L19:
	sts line_cal+8+1,r29
	sts line_cal+8,r28
	ldi r24,lo8(10)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(7)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L23
	sts line_cal+10+1,r29
	sts line_cal+10,r28
/* epilogue start */
	pop r29
	pop r28
	ret
.L21:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L18
.L23:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	sts line_cal+10+1,r29
	sts line_cal+10,r28
/* epilogue start */
	pop r29
	pop r28
	ret
.L22:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L19
	.size	line_calibrateWhite, .-line_calibrateWhite
	.section	.text.line_calibrateBlack,"ax",@progbits
.global	line_calibrateBlack
	.type	line_calibrateBlack, @function
line_calibrateBlack:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(100)
	ldi r25,hi8(100)
	call delay
	ldi r24,lo8(8)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(5)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L28
.L25:
	movw r22,r28
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	ldi r30,10
1:	lsl r22
	rol r23
	rol r24
	rol r25
	dec r30
	brne 1b
	lds r18,line_cal+6
	lds r19,line_cal+6+1
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call __udivmodsi4
	sts line_cal+1,r19
	sts line_cal,r18
	ldi r24,lo8(9)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(6)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L29
.L26:
	movw r22,r28
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	ldi r21,10
1:	lsl r22
	rol r23
	rol r24
	rol r25
	dec r21
	brne 1b
	lds r18,line_cal+8
	lds r19,line_cal+8+1
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call __udivmodsi4
	sts line_cal+2+1,r19
	sts line_cal+2,r18
	ldi r24,lo8(10)
	call analog_getValue
	movw r28,r24
	ldi r24,lo8(7)
	call analog_getValue
	sub r28,r24
	sbc r29,r25
	sbrc r29,7
	rjmp .L30
.L27:
	movw r22,r28
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	ldi r20,10
1:	lsl r22
	rol r23
	rol r24
	rol r25
	dec r20
	brne 1b
	lds r18,line_cal+10
	lds r19,line_cal+10+1
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call __udivmodsi4
	sts line_cal+4+1,r19
	sts line_cal+4,r18
/* epilogue start */
	pop r29
	pop r28
	ret
.L28:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L25
.L30:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L27
.L29:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L26
	.size	line_calibrateBlack, .-line_calibrateBlack
	.comm line_cal,12,1
.global __do_clear_bss
