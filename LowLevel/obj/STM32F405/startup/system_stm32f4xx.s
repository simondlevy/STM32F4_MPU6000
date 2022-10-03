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
	ldr	r3, .L3
	ldr	r3, [r3, #12]
	and	r2, r3, #1792
	ldr	r1, .L3
	ldr	r3, .L3+4
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	.syntax unified
@ 882 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L2:
	.syntax unified
@ 1939 "stm/lib/CMSIS/Core/Include/core_cm4.h" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L2
.L4:
	.align	2
.L3:
	.word	-536810240
	.word	100270084
	.size	__NVIC_SystemReset, .-__NVIC_SystemReset
	.global	AHBPrescTable
	.section	.data.AHBPrescTable,"aw"
	.align	2
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.ascii	"\000\000\000\000\000\000\000\000\001\002\003\004\006"
	.ascii	"\007\010\011"
	.global	SystemCoreClock
	.section	.bss.SystemCoreClock,"aw",%nobits
	.align	2
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.space	4
	.global	pll_src
	.section	.bss.pll_src,"aw",%nobits
	.align	2
	.type	pll_src, %object
	.size	pll_src, 4
pll_src:
	.space	4
	.global	pll_input
	.section	.bss.pll_input,"aw",%nobits
	.align	2
	.type	pll_input, %object
	.size	pll_input, 4
pll_input:
	.space	4
	.global	pll_m
	.section	.bss.pll_m,"aw",%nobits
	.align	2
	.type	pll_m, %object
	.size	pll_m, 4
pll_m:
	.space	4
	.global	pll_p
	.section	.bss.pll_p,"aw",%nobits
	.align	2
	.type	pll_p, %object
	.size	pll_p, 4
pll_p:
	.space	4
	.global	pll_n
	.section	.bss.pll_n,"aw",%nobits
	.align	2
	.type	pll_n, %object
	.size	pll_n, 4
pll_n:
	.space	4
	.global	pll_q
	.section	.bss.pll_q,"aw",%nobits
	.align	2
	.type	pll_q, %object
	.size	pll_q, 4
pll_q:
	.space	4
	.section	.text.SystemSYSCLKSource,"ax",%progbits
	.align	1
	.global	SystemSYSCLKSource
	.syntax unified
	.thumb
	.thumb_func
	.type	SystemSYSCLKSource, %function
SystemSYSCLKSource:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L7
	ldr	r3, [r3, #8]
	lsrs	r3, r3, #2
	and	r3, r3, #3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	1073887232
	.size	SystemSYSCLKSource, .-SystemSYSCLKSource
	.section	.text.SystemPLLSource,"ax",%progbits
	.align	1
	.global	SystemPLLSource
	.syntax unified
	.thumb
	.thumb_func
	.type	SystemPLLSource, %function
SystemPLLSource:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L11
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #22
	and	r3, r3, #1
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073887232
	.size	SystemPLLSource, .-SystemPLLSource
	.section	.rodata.overclockLevels,"a"
	.align	2
	.type	overclockLevels, %object
	.size	overclockLevels, 32
overclockLevels:
	.short	168
	.short	336
	.short	2
	.short	7
	.short	192
	.short	384
	.short	2
	.short	8
	.short	216
	.short	432
	.short	2
	.short	9
	.short	240
	.short	480
	.short	2
	.short	10
	.section	.text.SystemInitPLLParameters,"ax",%progbits
	.align	1
	.global	SystemInitPLLParameters
	.syntax unified
	.thumb
	.thumb_func
	.type	SystemInitPLLParameters, %function
SystemInitPLLParameters:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r0, #2
	bl	persistentObjectRead
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L16
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, .L17
	add	r3, r3, r2
	str	r3, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	mov	r2, r3
	ldr	r3, .L17+4
	ldr	r3, [r3]
	udiv	r3, r2, r3
	ldr	r2, .L17+8
	str	r3, [r2]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, .L17+12
	str	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r3, .L17+16
	str	r2, [r3]
	b	.L13
.L16:
	nop
.L13:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	overclockLevels
	.word	pll_input
	.word	pll_n
	.word	pll_p
	.word	pll_q
	.size	SystemInitPLLParameters, .-SystemInitPLLParameters
	.section	.text.OverclockRebootIfNecessary,"ax",%progbits
	.align	1
	.global	OverclockRebootIfNecessary
	.syntax unified
	.thumb
	.thumb_func
	.type	OverclockRebootIfNecessary, %function
OverclockRebootIfNecessary:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L22
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	ldr	r2, .L23
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, .L23+4
	mul	r2, r3, r2
	ldr	r3, .L23+8
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L19
	ldr	r1, [r7, #4]
	movs	r0, #2
	bl	persistentObjectWrite
	.syntax unified
@ 142 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	bl	__NVIC_SystemReset
	b	.L19
.L22:
	nop
.L19:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	overclockLevels
	.word	1000000
	.word	SystemCoreClock
	.size	OverclockRebootIfNecessary, .-OverclockRebootIfNecessary
	.section	.text.systemClockSetHSEValue,"ax",%progbits
	.align	1
	.global	systemClockSetHSEValue
	.syntax unified
	.thumb
	.thumb_func
	.type	systemClockSetHSEValue, %function
systemClockSetHSEValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r0, #1
	bl	persistentObjectRead
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L27
	ldr	r1, [r7, #4]
	movs	r0, #1
	bl	persistentObjectWrite
	.syntax unified
@ 142 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	bl	__NVIC_SystemReset
.L27:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	systemClockSetHSEValue, .-systemClockSetHSEValue
	.section	.text.SystemInit,"ax",%progbits
	.align	1
	.global	SystemInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SystemInit, %function
SystemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	systemInitialiseMemorySections
	ldr	r3, .L29
	ldr	r3, [r3, #136]
	ldr	r2, .L29
	orr	r3, r3, #15728640
	str	r3, [r2, #136]
	ldr	r3, .L29+4
	ldr	r3, [r3]
	ldr	r2, .L29+4
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L29+4
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L29+4
	ldr	r3, [r3]
	ldr	r2, .L29+4
	bic	r3, r3, #17301504
	bic	r3, r3, #65536
	str	r3, [r2]
	ldr	r3, .L29+4
	ldr	r2, .L29+8
	str	r2, [r3, #4]
	ldr	r3, .L29+4
	ldr	r3, [r3]
	ldr	r2, .L29+4
	bic	r3, r3, #262144
	str	r3, [r2]
	ldr	r3, .L29+4
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r2, .L29+12
	ldr	r3, .L29+16
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r1, .L29+20
	ldr	r0, .L29+16
	bl	memcpy
	ldr	r3, .L29
	ldr	r2, .L29+16
	str	r2, [r3, #8]
	bl	SystemCoreClockUpdate
	nop
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	-536810240
	.word	1073887232
	.word	603992080
	.word	isr_vector_table_end
	.word	isr_vector_table_base
	.word	isr_vector_table_flash_base
	.size	SystemInit, .-SystemInit
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	1
	.global	SystemCoreClockUpdate
	.syntax unified
	.thumb
	.thumb_func
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	movs	r0, #1
	bl	persistentObjectRead
	str	r0, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #4]
	movs	r3, #2
	str	r3, [r7]
	ldr	r3, .L39
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #8
	beq	.L32
	ldr	r3, [r7, #12]
	cmp	r3, #8
	bhi	.L33
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #12]
	cmp	r3, #4
	beq	.L35
	b	.L33
.L34:
	ldr	r3, .L39+4
	ldr	r2, .L39+8
	str	r2, [r3]
	b	.L36
.L35:
	ldr	r2, .L39+4
	ldr	r3, [r7, #16]
	str	r3, [r2]
	b	.L36
.L32:
	ldr	r3, .L39
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #22
	and	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, .L39
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L37
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	udiv	r3, r2, r3
	ldr	r2, .L39
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #20]
	b	.L38
.L37:
	ldr	r2, .L39+8
	ldr	r3, [r7]
	udiv	r3, r2, r3
	ldr	r2, .L39
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #20]
.L38:
	ldr	r3, .L39
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #16
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	ldr	r2, .L39+4
	str	r3, [r2]
	b	.L36
.L33:
	ldr	r3, .L39+4
	ldr	r2, .L39+8
	str	r2, [r3]
	nop
.L36:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	1073887232
	.word	SystemCoreClock
	.word	16000000
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.section	.text.StartHSx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	StartHSx, %function
StartHSx:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r1, .L46
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L42
.L45:
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L43
	movs	r3, #1
	b	.L44
.L43:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L42:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L45
	movs	r3, #0
.L44:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
	.word	1073887232
	.size	StartHSx, .-StartHSx
	.section	.text.SetSysClock,"ax",%progbits
	.align	1
	.global	SetSysClock
	.syntax unified
	.thumb
	.thumb_func
	.type	SetSysClock, %function
SetSysClock:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r0, #1
	bl	persistentObjectRead
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, .L60
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #18
	str	r3, [r7, #8]
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	ldr	r2, .L60+4
	bic	r3, r3, #3
	str	r3, [r2, #8]
	nop
.L49:
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L50
	movw	r2, #5000
	movs	r1, #2
	movs	r0, #1
	bl	StartHSx
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	ldr	r3, .L60+8
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L60+12
	movs	r2, #8
	str	r2, [r3]
	ldr	r3, .L60+16
	movs	r2, #2
	str	r2, [r3]
	b	.L53
.L50:
	movw	r2, #5000
	mov	r1, #131072
	mov	r0, #65536
	bl	StartHSx
	mov	r3, r0
	cmp	r3, #0
	beq	.L59
	ldr	r3, .L60+8
	mov	r2, #4194304
	str	r2, [r3]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #1
	ldr	r2, .L60+12
	str	r3, [r2]
	ldr	r3, .L60+12
	ldr	r3, [r3]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	beq	.L55
	ldr	r2, .L60+12
	ldr	r3, [r7, #8]
	str	r3, [r2]
.L55:
	ldr	r3, .L60+12
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	ldr	r2, .L60+16
	str	r3, [r2]
.L53:
	bl	SystemInitPLLParameters
	ldr	r3, .L60+4
	ldr	r3, [r3, #64]
	ldr	r2, .L60+4
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L60+20
	ldr	r3, [r3]
	ldr	r2, .L60+20
	orr	r3, r3, #49152
	str	r3, [r2]
	ldr	r3, .L60+4
	ldr	r2, .L60+4
	ldr	r3, [r3, #8]
	str	r3, [r2, #8]
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	ldr	r2, .L60+4
	orr	r3, r3, #32768
	str	r3, [r2, #8]
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	ldr	r2, .L60+4
	orr	r3, r3, #5120
	str	r3, [r2, #8]
	ldr	r3, .L60+24
	ldr	r3, [r3]
	lsls	r2, r3, #6
	ldr	r3, .L60+12
	ldr	r3, [r3]
	orrs	r2, r2, r3
	ldr	r3, .L60+28
	ldr	r3, [r3]
	lsrs	r3, r3, #1
	subs	r3, r3, #1
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, .L60+8
	ldr	r3, [r3]
	orrs	r2, r2, r3
	ldr	r3, .L60+32
	ldr	r3, [r3]
	lsls	r3, r3, #24
	ldr	r1, .L60+4
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, .L60+4
	ldr	r3, [r3]
	ldr	r2, .L60+4
	orr	r3, r3, #16777216
	str	r3, [r2]
	nop
.L56:
	ldr	r3, .L60+4
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L56
	ldr	r3, .L60+36
	movw	r2, #1797
	str	r2, [r3]
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	ldr	r2, .L60+4
	bic	r3, r3, #3
	str	r3, [r2, #8]
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	ldr	r2, .L60+4
	orr	r3, r3, #2
	str	r3, [r2, #8]
	nop
.L57:
	ldr	r3, .L60+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	bne	.L57
	ldr	r3, .L60+16
	ldr	r3, [r3]
	movs	r2, #216
	udiv	r3, r2, r3
	str	r3, [r7, #4]
	movs	r1, #2
	ldr	r0, [r7, #4]
	bl	RCC_PLLI2SConfig
	movs	r0, #1
	bl	RCC_PLLI2SCmd
	bl	SystemCoreClockUpdate
	b	.L48
.L58:
	nop
	b	.L48
.L59:
	nop
.L48:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	1125899907
	.word	1073887232
	.word	pll_src
	.word	pll_m
	.word	pll_input
	.word	1073770496
	.word	pll_n
	.word	pll_p
	.word	pll_q
	.word	1073888256
	.size	SetSysClock, .-SetSysClock
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
