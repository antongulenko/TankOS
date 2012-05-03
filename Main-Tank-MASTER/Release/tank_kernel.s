	.file	"tank_kernel.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.init_reset_condition,"ax",@progbits
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,84-32
	sts current_reset_status,r24
	out 84-32,__zero_reg__
/* epilogue start */
	ret
	.size	init_reset_condition, .-init_reset_condition
	.section	.init8,"ax",@progbits
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_reset_condition
/* epilogue start */
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.section	.text.getResetStatus,"ax",@progbits
.global	getResetStatus
	.type	getResetStatus, @function
getResetStatus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,current_reset_status
/* epilogue start */
	ret
	.size	getResetStatus, .-getResetStatus
	.section	.text.init_process,"ax",@progbits
.global	init_process
	.type	init_process, @function
init_process:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(16127)
	ldi r25,hi8(16127)
	sts __malloc_heap_end+1,r25
	sts __malloc_heap_end,r24
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldi r22,lo8(8)
	ldi r23,hi8(8)
	call calloc
	movw r30,r24
	sbiw r24,0
	breq .L6
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L5
.L6:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L5:
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
	ret
	.size	init_process, .-init_process
	.section	.init8
.global	init_process_kernel_init
	.type	init_process_kernel_init, @function
init_process_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_process
/* epilogue start */
	.size	init_process_kernel_init, .-init_process_kernel_init
	.section	.text.createProcessBase3,"ax",@progbits
.global	createProcessBase3
	.type	createProcessBase3, @function
createProcessBase3:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r13,r24
	mov r12,r25
	movw r14,r22
	movw r10,r20
	movw r24,r20
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	std Y+1,r18
	call calloc
	movw r16,r24
	ldd r18,Y+1
	sbiw r24,0
	breq .L13
	movw r20,r10
	add r20,r24
	adc r21,r25
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	movw r26,r20
	st X,r24
	movw r30,r20
	sbiw r30,1
	st Z,r25
	movw r30,r20
	sbiw r30,2
	st Z,r13
	movw r30,r20
	sbiw r30,3
	st Z,r12
	mov r22,r18
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+1,r20
	std Y+2,r21
	call calloc
	movw r30,r24
	ldd r20,Y+1
	ldd r21,Y+2
	sbiw r24,0
	breq .L10
	movw r24,r20
	sbiw r24,38
	std Z+1,r25
	st Z,r24
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L11
	rjmp .L15
.L10:
	movw r24,r16
	call free
	rjmp .L13
.L15:
	movw r14,r30
.L11:
	movw r26,r20
	sbiw r26,30
	st X,r14
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r26,r20
	st X,r15
	rjmp .L9
.L13:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L9:
	movw r24,r30
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createProcessBase3, .-createProcessBase3
	.section	.text.createProcessBase2,"ax",@progbits
.global	createProcessBase2
	.type	createProcessBase2, @function
createProcessBase2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(0)
	call createProcessBase3
/* epilogue start */
	ret
	.size	createProcessBase2, .-createProcessBase2
	.section	.text.createProcessBase,"ax",@progbits
.global	createProcessBase
	.type	createProcessBase, @function
createProcessBase:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcessBase2
/* epilogue start */
	ret
	.size	createProcessBase, .-createProcessBase
	.section	.text.switchContext,"ax",@progbits
.global	switchContext
	.type	switchContext, @function
switchContext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  102 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
 ;  103 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	movw r26, r24
 ;  0 "" 2
 ;  104 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
 ;  105 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	movw r26, r22
 ;  0 "" 2
 ;  106 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  107 "..\..\AntonAvrLib/kernel/processes/process.kernel" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	switchContext, .-switchContext
	.section	.text.getCurrentProcess,"ax",@progbits
.global	getCurrentProcess
	.type	getCurrentProcess, @function
getCurrentProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,__current_process
	lds r25,__current_process+1
/* epilogue start */
	ret
	.size	getCurrentProcess, .-getCurrentProcess
	.section	.text.switchProcess,"ax",@progbits
.global	switchProcess
	.type	switchProcess, @function
switchProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r22,r24
	lds r24,__current_process
	lds r25,__current_process+1
	sts __current_process,r22
	sts __current_process+1,r23
	call switchContext
/* epilogue start */
	ret
	.size	switchProcess, .-switchProcess
	.section	.text.createProcess3,"ax",@progbits
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r20
	subi r18,lo8(-(6))
	call createProcessBase3
	movw r30,r24
	sbiw r24,0
	breq .L22
	movw r26,r24
	adiw r26,2
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
	std Z+3,r25
	std Z+2,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
	adiw r26,2+1
	st X,r29
	st -X,r28
	sbiw r26,2
	ldi r18,lo8(38)
	ldi r19,hi8(38)
	sub r18,r28
	sbc r19,r29
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.L22:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	createProcess3, .-createProcess3
	.section	.text.createProcess2,"ax",@progbits
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(0)
	call createProcess3
/* epilogue start */
	ret
	.size	createProcess2, .-createProcess2
	.section	.text.createProcess,"ax",@progbits
.global	createProcess
	.type	createProcess, @function
createProcess:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcess2
/* epilogue start */
	ret
	.size	createProcess, .-createProcess
	.section	.text.freeProcess,"ax",@progbits
.global	freeProcess
	.type	freeProcess, @function
freeProcess:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	lds r24,__current_process
	lds r25,__current_process+1
	cp r28,r24
	cpc r29,r25
	breq .L25
	movw r30,r28
	adiw r30,2
	ldd r24,Y+2
	ldd r25,Y+3
	sbiw r24,0
	breq .L27
	ldd r24,Z+4
	ldd r25,Z+5
	call free
.L27:
	movw r24,r28
	call free
.L25:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	freeProcess, .-freeProcess
	.section	.text.getProcessStackSize,"ax",@progbits
.global	getProcessStackSize
	.type	getProcessStackSize, @function
getProcessStackSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+4
/* epilogue start */
	ret
	.size	getProcessStackSize, .-getProcessStackSize
	.section	.text.getFreeProcessStackSize,"ax",@progbits
.global	getFreeProcessStackSize
	.type	getFreeProcessStackSize, @function
getFreeProcessStackSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+6
	ldd r19,Z+7
	ld r24,Z
	ldd r25,Z+1
	sub r18,r24
	sbc r19,r25
	movw r24,r18
/* epilogue start */
	ret
	.size	getFreeProcessStackSize, .-getFreeProcessStackSize
	.section	.text.getProcessNumber,"ax",@progbits
.global	getProcessNumber
	.type	getProcessNumber, @function
getProcessNumber:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+2
	ldd r25,Z+3
/* epilogue start */
	ret
	.size	getProcessNumber, .-getProcessNumber
	.section	.text.getProcessMemory,"ax",@progbits
.global	getProcessMemory
	.type	getProcessMemory, @function
getProcessMemory:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r24
	subi r18,lo8(-(38))
	sbci r19,hi8(-(38))
	movw r24,r18
/* epilogue start */
	ret
	.size	getProcessMemory, .-getProcessMemory
	.section	.text.init_process_ext,"ax",@progbits
.global	init_process_ext
	.type	init_process_ext, @function
init_process_ext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r26,__current_process
	lds r27,__current_process+1
	movw r30,r26
	adiw r30,2
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r24,lo8(512)
	ldi r25,hi8(512)
	std Z+3,r25
	std Z+2,r24
	lds r24,__malloc_heap_end
	lds r25,__malloc_heap_end+1
	std Z+5,r25
	std Z+4,r24
/* epilogue start */
	ret
	.size	init_process_ext, .-init_process_ext
	.section	.init8
.global	init_process_ext_kernel_init
	.type	init_process_ext_kernel_init, @function
init_process_ext_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init_process_ext
/* epilogue start */
	.size	init_process_ext_kernel_init, .-init_process_ext_kernel_init
	.section	.text.init_clock,"ax",@progbits
.global	init_clock
	.type	init_clock, @function
init_clock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	init_clock, .-init_clock
	.section	.init8
.global	init_clock_kernel_init
	.type	init_clock_kernel_init, @function
init_clock_kernel_init:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	.size	init_clock_kernel_init, .-init_clock_kernel_init
	.section	.text.processor_idle,"ax",@progbits
.global	processor_idle
	.type	processor_idle, @function
processor_idle:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,83-32
	ori r24,lo8(1)
	out 83-32,r24
	in r24,83-32
	andi r24,lo8(-15)
	out 83-32,r24
/* #APP */
 ;  65 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	sei
 ;  0 "" 2
 ;  66 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	sleep
	
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	ret
	.size	processor_idle, .-processor_idle
	.section	.text.ProcessGraveyard,"ax",@progbits
.global	ProcessGraveyard
	.type	ProcessGraveyard, @function
ProcessGraveyard:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L38:
	call processor_idle
	rjmp .L38
	.size	ProcessGraveyard, .-ProcessGraveyard
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L40:
	call processor_idle
	rjmp .L40
	.size	MainProcessEnd, .-MainProcessEnd
	.section	.text.processor_loop_idle,"ax",@progbits
.global	processor_loop_idle
	.type	processor_loop_idle, @function
processor_loop_idle:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L42:
	call processor_idle
	rjmp .L42
	.size	processor_loop_idle, .-processor_loop_idle
	.section	.text.dms_schedule,"ax",@progbits
.global	dms_schedule
	.type	dms_schedule, @function
dms_schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,processListHead
	lds r31,processListHead+1
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
	rjmp .L44
.L49:
	movw r26,r30
	adiw r26,38
	adiw r26,9
	ld r24,X+
	ld r25,X
	sbiw r26,9+1
	sbiw r24,0
	breq .L46
	cpi r24,1
	cpc r25,__zero_reg__
	brne .L45
	rjmp .L52
.L46:
	ldd r22,Z+11
	ldd r23,Z+12
	ldd r24,Z+13
	ldd r25,Z+14
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brlo .L45
	rjmp .L51
.L52:
	ldd r24,Z+11
	ldd r25,Z+12
	cpi r24,1
	cpc r25,__zero_reg__
	breq .L51
.L45:
	adiw r26,3
	ld r30,X+
	ld r31,X
	sbiw r26,3+1
.L44:
	sbiw r30,0
	brne .L49
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L48
.L51:
	movw r18,r26
.L48:
	movw r24,r18
/* epilogue start */
	ret
	.size	dms_schedule, .-dms_schedule
	.section	.text.schedule_next,"ax",@progbits
.global	schedule_next
	.type	schedule_next, @function
schedule_next:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call dms_schedule
	sbiw r24,0
	breq .L53
	call switchProcess
.L53:
	ret
	.size	schedule_next, .-schedule_next
	.section	.text.AperiodicJobWrapper,"ax",@progbits
.global	AperiodicJobWrapper
	.type	AperiodicJobWrapper, @function
AperiodicJobWrapper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	adiw r28,38
.L56:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	std Y+12,__zero_reg__
	std Y+11,__zero_reg__
	call schedule_next
	rjmp .L56
	.size	AperiodicJobWrapper, .-AperiodicJobWrapper
	.section	.text.PeriodicJobWrapper,"ax",@progbits
.global	PeriodicJobWrapper
	.type	PeriodicJobWrapper, @function
PeriodicJobWrapper:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	adiw r28,38
.L58:
	ldd r30,Y+1
	ldd r31,Y+2
	icall
	ldd r24,Y+11
	ldd r25,Y+12
	ldd r26,Y+13
	ldd r27,Y+14
	ldd r18,Y+5
	ldd r19,Y+6
	ldd r20,Y+7
	ldd r21,Y+8
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	std Y+11,r24
	std Y+12,r25
	std Y+13,r26
	std Y+14,r27
	call schedule_next
	rjmp .L58
	.size	PeriodicJobWrapper, .-PeriodicJobWrapper
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
/* #NOAPP */
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts milliseconds_running,r24
	sts milliseconds_running+1,r25
	sts milliseconds_running+2,r26
	sts milliseconds_running+3,r27
/* #APP */
 ;  33 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	lds r26, __current_process
 ;  0 "" 2
 ;  34 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	lds r27, __current_process + 1
 ;  0 "" 2
 ;  35 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call dms_schedule
	movw r18,r24
	sts __current_process+1,r25
	sts __current_process,r24
	sbiw r24,0
	brne .L60
.L62:
	call processor_idle
	rjmp .L62
.L60:
/* #APP */
 ;  43 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	movw r26, r24
 ;  0 "" 2
 ;  44 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
 ;  45 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
 ;  48 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_16, .-__vector_16
	.section	.text.insertJobIntoList,"ax",@progbits
.global	insertJobIntoList
	.type	insertJobIntoList, @function
insertJobIntoList:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r22
	lds r22,processListHead
	lds r23,processListHead+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L64
	sts processListHead+1,r25
	sts processListHead,r24
	std Z+4,__zero_reg__
	std Z+3,__zero_reg__
	rjmp .L63
.L64:
	ldd r18,Z+5
	ldd r19,Z+6
	ldd r20,Z+7
	ldd r21,Z+8
.L68:
	movw r26,r22
	adiw r26,38
	adiw r26,5
	ld r14,X+
	ld r15,X+
	ld r16,X+
	ld r17,X
	sbiw r26,5+3
	cp r18,r14
	cpc r19,r15
	cpc r20,r16
	cpc r21,r17
	brlo .L66
	cp r14,r18
	cpc r15,r19
	cpc r16,r20
	cpc r17,r21
	brne .L67
	ld r23,X
	ld r22,Z
	cp r23,r22
	brlo .L66
.L67:
	adiw r26,3
	ld r22,X+
	ld r23,X
	sbiw r26,3+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L68
.L66:
	in r18,41-32
	in r19,41+1-32
	std Z+4,r19
	std Z+3,r18
	out 41+1-32,r25
	out 41-32,r24
.L63:
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	insertJobIntoList, .-insertJobIntoList
	.section	.text.initializeJob,"ax",@progbits
.global	initializeJob
	.type	initializeJob, @function
initializeJob:
	push r14
	push r15
	push r16
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	adiw r28,38
	std Y+2,r23
	std Y+1,r22
	movw r30,r24
	std Z+38,r16
	std Y+5,r18
	std Y+6,r19
	std Y+7,r20
	std Y+8,r21
	movw r22,r28
	call insertJobIntoList
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r15
	pop r14
	ret
	.size	initializeJob, .-initializeJob
	.section	.text.createPeriodicJob,"ax",@progbits
.global	createPeriodicJob
	.type	createPeriodicJob, @function
createPeriodicJob:
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r10,r20
	movw r12,r22
	mov r16,r18
	ldi r24,lo8(gs(PeriodicJobWrapper))
	ldi r25,hi8(gs(PeriodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(15)
	call createProcess3
	mov r15,r24
	mov r17,r25
	movw r22,r28
	movw r20,r12
	movw r18,r10
	call initializeJob
	movw r30,r24
	std Z+10,__zero_reg__
	std Z+9,__zero_reg__
	lds r18,milliseconds_running
	lds r19,milliseconds_running+1
	lds r20,milliseconds_running+2
	lds r21,milliseconds_running+3
	add r18,r10
	adc r19,r11
	adc r20,r12
	adc r21,r13
	std Z+11,r18
	std Z+12,r19
	std Z+13,r20
	std Z+14,r21
	mov r24,r15
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createPeriodicJob, .-createPeriodicJob
	.section	.text.createAperiodicJob,"ax",@progbits
.global	createAperiodicJob
	.type	createAperiodicJob, @function
createAperiodicJob:
	push r10
	push r11
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r10,r20
	movw r12,r22
	mov r16,r18
	ldi r24,lo8(gs(AperiodicJobWrapper))
	ldi r25,hi8(gs(AperiodicJobWrapper))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(512)
	ldi r21,hi8(512)
	ldi r18,lo8(13)
	call createProcess3
	mov r15,r24
	mov r17,r25
	movw r22,r28
	movw r20,r12
	movw r18,r10
	call initializeJob
	movw r30,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Z+10,r25
	std Z+9,r24
	std Z+12,__zero_reg__
	std Z+11,__zero_reg__
	mov r24,r15
	mov r25,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.size	createAperiodicJob, .-createAperiodicJob
	.section	.text.triggerAperiodicJob,"ax",@progbits
.global	triggerAperiodicJob
	.type	triggerAperiodicJob, @function
triggerAperiodicJob:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r30,r24
	std Z+50,r19
	std Z+49,r18
/* epilogue start */
	ret
	.size	triggerAperiodicJob, .-triggerAperiodicJob
	.section	.text.schedule,"ax",@progbits
.global	schedule
	.type	schedule, @function
schedule:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call dms_schedule
/* epilogue start */
	ret
	.size	schedule, .-schedule
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	__nextProcessNumber
.global	__nextProcessNumber
	.type	__nextProcessNumber, @object
	.size	__nextProcessNumber, 2
__nextProcessNumber:
	.skip 2,0
.global	__current_process
.global	__current_process
	.type	__current_process, @object
	.size	__current_process, 2
__current_process:
	.skip 2,0
.global	milliseconds_running
.global	milliseconds_running
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
	.comm processListHead,2,1
.global __do_clear_bss
