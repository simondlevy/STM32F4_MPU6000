	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"system.c"
	.text
	.section	.text.__basepriRestoreMem,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriRestoreMem, %function
__basepriRestoreMem:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 493 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriRestoreMem, .-__basepriRestoreMem
	.section	.text.__basepriSetMemRetVal,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriSetMemRetVal, %function
__basepriSetMemRetVal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 518 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri_max, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriSetMemRetVal, .-__basepriSetMemRetVal
	.section	.bss.usTicks,"aw",%nobits
	.align	2
	.type	usTicks, %object
	.size	usTicks, 4
usTicks:
	.space	4
	.section	.bss.sysTickUptime,"aw",%nobits
	.align	2
	.type	sysTickUptime, %object
	.size	sysTickUptime, 4
sysTickUptime:
	.space	4
	.section	.bss.sysTickValStamp,"aw",%nobits
	.align	2
	.type	sysTickValStamp, %object
	.size	sysTickValStamp, 4
sysTickValStamp:
	.space	4
	.global	cachedRccCsrValue
	.section	.bss.cachedRccCsrValue,"aw",%nobits
	.align	2
	.type	cachedRccCsrValue, %object
	.size	cachedRccCsrValue, 4
cachedRccCsrValue:
	.space	4
	.section	.bss.cpuClockFrequency,"aw",%nobits
	.align	2
	.type	cpuClockFrequency, %object
	.size	cpuClockFrequency, 4
cpuClockFrequency:
	.space	4
	.section	.text.systemCycleCounterInit,"ax",%progbits
	.align	1
	.global	systemCycleCounterInit
	.syntax unified
	.thumb
	.thumb_func
	.type	systemCycleCounterInit, %function
systemCycleCounterInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r7
	mov	r0, r3
	bl	RCC_GetClocksFreq
	ldr	r3, [r7]
	ldr	r2, .L5
	str	r3, [r2]
	ldr	r3, .L5
	ldr	r3, [r3]
	ldr	r2, .L5+4
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #18
	ldr	r2, .L5+8
	str	r3, [r2]
	ldr	r3, .L5+12
	ldr	r3, [r3, #12]
	ldr	r2, .L5+12
	orr	r3, r3, #16777216
	str	r3, [r2, #12]
	bl	stm32_startCycleCounter
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	cpuClockFrequency
	.word	1125899907
	.word	usTicks
	.word	-536810000
	.size	systemCycleCounterInit, .-systemCycleCounterInit
	.section	.bss.sysTickPending,"aw",%nobits
	.align	2
	.type	sysTickPending, %object
	.size	sysTickPending, 4
sysTickPending:
	.space	4
	.section	.text.SysTick_Handler,"ax",%progbits
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	strb	r3, [r7, #7]
	movs	r0, #16
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L9
.L10:
	ldr	r3, .L11
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L11
	str	r3, [r2]
	ldr	r3, .L11+4
	ldr	r3, [r3, #8]
	ldr	r2, .L11+8
	str	r3, [r2]
	ldr	r3, .L11+12
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	movs	r3, #0
	strb	r3, [r7, #15]
.L9:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	adds	r3, r7, #7
	mov	r0, r3
	bl	__basepriRestoreMem
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	sysTickUptime
	.word	-536813552
	.word	sysTickValStamp
	.word	sysTickPending
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.text.microsISR,"ax",%progbits
	.align	1
	.global	microsISR
	.syntax unified
	.thumb
	.thumb_func
	.type	microsISR, %function
microsISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	strb	r3, [r7, #7]
	movs	r0, #16
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L15
.L17:
	ldr	r3, .L19
	ldr	r4, [r3, #8]
	ldr	r3, .L19
	ldr	r3, [r3]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L19+4
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L19
	ldr	r4, [r3, #8]
.L16:
	ldr	r3, .L19+8
	ldr	r5, [r3]
	ldr	r3, .L19+4
	ldr	r3, [r3]
	mov	r6, r3
	movs	r3, #0
	strb	r3, [r7, #15]
.L15:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L17
	adds	r3, r7, #7
	mov	r0, r3
	bl	__basepriRestoreMem
	adds	r3, r5, r6
	mov	r2, #1000
	mul	r2, r3, r2
	ldr	r3, .L19+12
	ldr	r3, [r3]
	mov	r1, #1000
	mul	r3, r1, r3
	subs	r1, r3, r4
	ldr	r3, .L19+12
	ldr	r3, [r3]
	udiv	r3, r1, r3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L20:
	.align	2
.L19:
	.word	-536813552
	.word	sysTickPending
	.word	sysTickUptime
	.word	usTicks
	.size	microsISR, .-microsISR
	.section	.text.micros,"ax",%progbits
	.align	1
	.global	micros
	.syntax unified
	.thumb
	.thumb_func
	.type	micros, %function
micros:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L26
	ldr	r3, [r3, #4]
	ubfx	r3, r3, #0, #9
	cmp	r3, #0
	bne	.L22
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L24
.L22:
	bl	microsISR
	mov	r3, r0
	b	.L25
.L24:
	ldr	r3, .L26+4
	ldr	r5, [r3]
	ldr	r3, .L26+8
	ldr	r4, [r3, #8]
	ldr	r3, .L26+4
	ldr	r3, [r3]
	cmp	r5, r3
	bne	.L24
	ldr	r3, .L26+12
	ldr	r3, [r3]
	cmp	r4, r3
	bhi	.L24
	mov	r3, #1000
	mul	r2, r3, r5
	ldr	r3, .L26+16
	ldr	r3, [r3]
	mov	r1, #1000
	mul	r3, r1, r3
	subs	r1, r3, r4
	ldr	r3, .L26+16
	ldr	r3, [r3]
	udiv	r3, r1, r3
	add	r3, r3, r2
.L25:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L27:
	.align	2
.L26:
	.word	-536810240
	.word	sysTickUptime
	.word	-536813552
	.word	sysTickValStamp
	.word	usTicks
	.size	micros, .-micros
	.section	.text.systemClockMicrosToCycles,"ax",%progbits
	.align	1
	.global	systemClockMicrosToCycles
	.syntax unified
	.thumb
	.thumb_func
	.type	systemClockMicrosToCycles, %function
systemClockMicrosToCycles:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	usTicks
	.size	systemClockMicrosToCycles, .-systemClockMicrosToCycles
	.section	.text.systemGetClockSpeed,"ax",%progbits
	.align	1
	.global	systemGetClockSpeed
	.syntax unified
	.thumb
	.thumb_func
	.type	systemGetClockSpeed, %function
systemGetClockSpeed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L34
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	SystemCoreClock
	.size	systemGetClockSpeed, .-systemGetClockSpeed
	.section	.text.millis,"ax",%progbits
	.align	1
	.global	millis
	.syntax unified
	.thumb
	.thumb_func
	.type	millis, %function
millis:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L38
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	sysTickUptime
	.size	millis, .-millis
	.section	.text.delayMicroseconds,"ax",%progbits
	.align	1
	.global	delayMicroseconds
	.syntax unified
	.thumb
	.thumb_func
	.type	delayMicroseconds, %function
delayMicroseconds:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	micros
	str	r0, [r7, #12]
	nop
.L41:
	bl	micros
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bhi	.L41
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	delayMicroseconds, .-delayMicroseconds
	.section	.text.delay,"ax",%progbits
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.type	delay, %function
delay:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	b	.L43
.L44:
	mov	r0, #1000
	bl	delayMicroseconds
.L43:
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	str	r2, [r7, #4]
	cmp	r3, #0
	bne	.L44
	nop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	delay, .-delay
	.section	.text.systemIndicateFailure,"ax",%progbits
	.align	1
	.global	systemIndicateFailure
	.syntax unified
	.thumb
	.thumb_func
	.type	systemIndicateFailure, %function
systemIndicateFailure:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	systemIndicateFailure, .-systemIndicateFailure
	.section	.text.systemFailureMode,"ax",%progbits
	.align	1
	.global	systemFailureMode
	.syntax unified
	.thumb
	.thumb_func
	.type	systemFailureMode, %function
systemFailureMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r1, #10
	mov	r0, r3
	bl	systemIndicateFailure
	movs	r0, #0
	bl	systemResetToBootloader
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	systemFailureMode, .-systemFailureMode
	.section	.text.systemInitialiseMemorySections,"ax",%progbits
	.align	1
	.global	systemInitialiseMemorySections
	.syntax unified
	.thumb
	.thumb_func
	.type	systemInitialiseMemorySections, %function
systemInitialiseMemorySections:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r2, .L48
	ldr	r3, .L48+4
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r1, .L48+8
	ldr	r0, .L48+4
	bl	memcpy
	nop
	pop	{r7, pc}
.L49:
	.align	2
.L48:
	.word	_efastram_data
	.word	_sfastram_data
	.word	_sfastram_idata
	.size	systemInitialiseMemorySections, .-systemInitialiseMemorySections
	.section	.text.unusedPinInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	unusedPinInit, %function
unusedPinInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	IOGetOwner
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	movs	r1, #32
	ldr	r0, [r7, #4]
	bl	IOConfigGPIO
.L52:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	unusedPinInit, .-unusedPinInit
	.section	.text.systemInitUnusedPins,"ax",%progbits
	.align	1
	.global	systemInitUnusedPins
	.syntax unified
	.thumb
	.thumb_func
	.type	systemInitUnusedPins, %function
systemInitUnusedPins:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L54
	bl	IOTraversePins
	nop
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	unusedPinInit
	.size	systemInitUnusedPins, .-systemInitUnusedPins
	.section	.text.systemReboot,"ax",%progbits
	.align	1
	.global	systemReboot
	.syntax unified
	.thumb
	.thumb_func
	.type	systemReboot, %function
systemReboot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #0
	bl	systemResetToBootloader
	nop
	pop	{r7, pc}
	.size	systemReboot, .-systemReboot
	.section	.text.delayMillis,"ax",%progbits
	.align	1
	.global	delayMillis
	.syntax unified
	.thumb
	.thumb_func
	.type	delayMillis, %function
delayMillis:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	delay
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	delayMillis, .-delayMillis
	.section	.text.timeMicros,"ax",%progbits
	.align	1
	.global	timeMicros
	.syntax unified
	.thumb
	.thumb_func
	.type	timeMicros, %function
timeMicros:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	micros
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.size	timeMicros, .-timeMicros
	.section	.text.timeMillis,"ax",%progbits
	.align	1
	.global	timeMillis
	.syntax unified
	.thumb
	.thumb_func
	.type	timeMillis, %function
timeMillis:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	millis
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.size	timeMillis, .-timeMillis
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
