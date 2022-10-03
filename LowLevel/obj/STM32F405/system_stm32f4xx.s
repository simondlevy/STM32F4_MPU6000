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
	.file	"system_stm32f4xx.c"
	.text
	.section	.text.__NVIC_SetPriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_SetPriority, %function
__NVIC_SetPriority:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	blt	.L2
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r1, .L5
	ldrsb	r3, [r7, #7]
	lsls	r2, r2, #4
	uxtb	r2, r2
	add	r3, r3, r1
	strb	r2, [r3, #768]
	b	.L4
.L2:
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r1, .L5+4
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	subs	r3, r3, #4
	lsls	r2, r2, #4
	uxtb	r2, r2
	add	r3, r3, r1
	strb	r2, [r3, #24]
.L4:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	-536813312
	.word	-536810240
	.size	__NVIC_SetPriority, .-__NVIC_SetPriority
	.section	.text.__NVIC_SystemReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_SystemReset, %function
__NVIC_SystemReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	.syntax unified
@ 882 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	ldr	r3, .L9
	ldr	r3, [r3, #12]
	and	r2, r3, #1792
	ldr	r1, .L9
	ldr	r3, .L9+4
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	.syntax unified
@ 882 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L8:
	.syntax unified
@ 1939 "stm/lib/CMSIS/Core/Include/core_cm4.h" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L8
.L10:
	.align	2
.L9:
	.word	-536810240
	.word	100270084
	.size	__NVIC_SystemReset, .-__NVIC_SystemReset
	.section	.text.SysTick_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Config, %function
SysTick_Config:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	cmp	r3, #16777216
	bcc	.L12
	movs	r3, #1
	b	.L13
.L12:
	ldr	r2, .L14
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r2, #4]
	movs	r1, #15
	mov	r0, #-1
	bl	__NVIC_SetPriority
	ldr	r3, .L14
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L14
	movs	r2, #7
	str	r2, [r3]
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	-536813552
	.size	SysTick_Config, .-SysTick_Config
	.section	.text.systemReset,"ax",%progbits
	.align	1
	.global	systemReset
	.syntax unified
	.thumb
	.thumb_func
	.type	systemReset, %function
systemReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	.syntax unified
@ 142 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	bl	__NVIC_SystemReset
	nop
	pop	{r7, pc}
	.size	systemReset, .-systemReset
	.section	.text.systemResetToBootloader,"ax",%progbits
	.align	1
	.global	systemResetToBootloader
	.syntax unified
	.thumb
	.thumb_func
	.type	systemResetToBootloader, %function
systemResetToBootloader:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r1, #1
	movs	r0, #4
	bl	persistentObjectWrite
	nop
	.syntax unified
@ 142 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	bl	__NVIC_SystemReset
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	systemResetToBootloader, .-systemResetToBootloader
	.section	.text.checkForBootLoaderRequest,"ax",%progbits
	.align	1
	.global	checkForBootLoaderRequest
	.syntax unified
	.thumb
	.thumb_func
	.type	checkForBootLoaderRequest, %function
checkForBootLoaderRequest:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r0, #4
	bl	persistentObjectRead
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L23
	movs	r1, #0
	movs	r0, #4
	bl	persistentObjectWrite
	ldr	r3, .L24
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	.syntax unified
@ 333 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR msp, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	ldr	r3, .L24
	ldr	r3, [r3, #4]
	blx	r3
.L21:
	b	.L21
.L23:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	system_isr_vector_table_base
	.size	checkForBootLoaderRequest, .-checkForBootLoaderRequest
	.section	.text.systemEnableGPIOPowerUsageAndNoiseReductions,"ax",%progbits
	.align	1
	.global	systemEnableGPIOPowerUsageAndNoiseReductions
	.syntax unified
	.thumb
	.thumb_func
	.type	systemEnableGPIOPowerUsageAndNoiseReductions, %function
systemEnableGPIOPowerUsageAndNoiseReductions:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #6750208
	bl	RCC_AHB1PeriphClockCmd
	movs	r1, #1
	movs	r0, #0
	bl	RCC_AHB2PeriphClockCmd
	movs	r1, #1
	movs	r0, #0
	bl	RCC_AHB3PeriphClockCmd
	movs	r1, #1
	ldr	r0, .L27
	bl	RCC_APB1PeriphClockCmd
	movs	r1, #1
	ldr	r0, .L27+4
	bl	RCC_APB2PeriphClockCmd
	nop
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	922667519
	.word	483123
	.size	systemEnableGPIOPowerUsageAndNoiseReductions, .-systemEnableGPIOPowerUsageAndNoiseReductions
	.section	.text.systemInit,"ax",%progbits
	.align	1
	.global	systemInit
	.syntax unified
	.thumb
	.thumb_func
	.type	systemInit, %function
systemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	SetSysClock
	mov	r0, #1280
	bl	NVIC_PriorityGroupConfig
	ldr	r3, .L30
	ldr	r3, [r3, #116]
	ldr	r2, .L30+4
	str	r3, [r2]
	ldr	r3, .L30+8
	movs	r1, #0
	mov	r0, r3
	bl	NVIC_SetVectorTable
	movs	r1, #0
	movs	r0, #128
	bl	RCC_AHB2PeriphClockCmd
	bl	RCC_ClearFlag
	bl	systemEnableGPIOPowerUsageAndNoiseReductions
	bl	systemCycleCounterInit
	ldr	r3, .L30+12
	ldr	r3, [r3]
	ldr	r2, .L30+16
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #6
	mov	r0, r3
	bl	SysTick_Config
	nop
	pop	{r7, pc}
.L31:
	.align	2
.L30:
	.word	1073887232
	.word	cachedRccCsrValue
	.word	isr_vector_table_base
	.word	SystemCoreClock
	.word	274877907
	.size	systemInit, .-systemInit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
