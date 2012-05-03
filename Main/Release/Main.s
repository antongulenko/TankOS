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
	.section	.text.newProcessEntry,"ax",@progbits
.global	newProcessEntry
	.type	newProcessEntry, @function
newProcessEntry:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L15:
	lds r20,newCounter
	lds r19,newCounter+1
	lds r18,newCounter+2
	lds r25,newCounter+3
	lds r24,newCounter+4
	lds r31,newCounter+5
	lds r30,newCounter+6
	lds r26,newCounter+7
	mov r22,r20
	subi r22,lo8(-(1))
	ldi r21,lo8(1)
	cp r22,r20
	brlo .L2
	ldi r21,lo8(0)
.L2:
	add r21,r19
	ldi r20,lo8(1)
	cp r21,r19
	brlo .L4
	ldi r20,lo8(0)
.L4:
	add r20,r18
	ldi r19,lo8(1)
	cp r20,r18
	brlo .L6
	ldi r19,lo8(0)
.L6:
	add r19,r25
	ldi r18,lo8(1)
	cp r19,r25
	brlo .L8
	ldi r18,lo8(0)
.L8:
	add r18,r24
	ldi r25,lo8(1)
	cp r18,r24
	brlo .L10
	ldi r25,lo8(0)
.L10:
	add r25,r31
	ldi r24,lo8(1)
	cp r25,r31
	brlo .L12
	ldi r24,lo8(0)
.L12:
	add r24,r30
	ldi r23,lo8(1)
	cp r24,r30
	brlo .L14
	ldi r23,lo8(0)
.L14:
	add r23,r26
	sts newCounter,r22
	sts newCounter+1,r21
	sts newCounter+2,r20
	sts newCounter+3,r19
	sts newCounter+4,r18
	sts newCounter+5,r25
	sts newCounter+6,r24
	sts newCounter+7,r23
	lds r24,mainProcess
	lds r25,mainProcess+1
	call switchProcess
	rjmp .L15
	.size	newProcessEntry, .-newProcessEntry
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call getCurrentProcess
	sts mainProcess+1,r25
	sts mainProcess,r24
	ldi r24,lo8(gs(newProcessEntry))
	ldi r25,hi8(gs(newProcessEntry))
	call createProcess
	sts newProcess+1,r25
	sts newProcess,r24
.L30:
	lds r20,mainCounter
	lds r19,mainCounter+1
	lds r18,mainCounter+2
	lds r25,mainCounter+3
	lds r24,mainCounter+4
	lds r31,mainCounter+5
	lds r30,mainCounter+6
	lds r26,mainCounter+7
	mov r22,r20
	subi r22,lo8(-(1))
	ldi r21,lo8(1)
	cp r22,r20
	brlo .L17
	ldi r21,lo8(0)
.L17:
	add r21,r19
	ldi r20,lo8(1)
	cp r21,r19
	brlo .L19
	ldi r20,lo8(0)
.L19:
	add r20,r18
	ldi r19,lo8(1)
	cp r20,r18
	brlo .L21
	ldi r19,lo8(0)
.L21:
	add r19,r25
	ldi r18,lo8(1)
	cp r19,r25
	brlo .L23
	ldi r18,lo8(0)
.L23:
	add r18,r24
	ldi r25,lo8(1)
	cp r18,r24
	brlo .L25
	ldi r25,lo8(0)
.L25:
	add r25,r31
	ldi r24,lo8(1)
	cp r25,r31
	brlo .L27
	ldi r24,lo8(0)
.L27:
	add r24,r30
	ldi r23,lo8(1)
	cp r24,r30
	brlo .L29
	ldi r23,lo8(0)
.L29:
	add r23,r26
	sts mainCounter,r22
	sts mainCounter+1,r21
	sts mainCounter+2,r20
	sts mainCounter+3,r19
	sts mainCounter+4,r18
	sts mainCounter+5,r25
	sts mainCounter+6,r24
	sts mainCounter+7,r23
	lds r24,newProcess
	lds r25,newProcess+1
	call switchProcess
	rjmp .L30
	.size	main, .-main
.global	mainCounter
.global	mainCounter
	.section .bss
	.type	mainCounter, @object
	.size	mainCounter, 8
mainCounter:
	.skip 8,0
.global	newCounter
.global	newCounter
	.type	newCounter, @object
	.size	newCounter, 8
newCounter:
	.skip 8,0
	.comm mainProcess,2,1
	.comm newProcess,2,1
.global __do_clear_bss
