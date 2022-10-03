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
	.file	"stm32clock.c"
	.text
	.section	.text.stm32_startCycleCounter,"ax",%progbits
	.align	1
	.global	stm32_startCycleCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	stm32_startCycleCounter, %function
stm32_startCycleCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3, #12]
	ldr	r2, .L2
	orr	r3, r3, #16777216
	str	r3, [r2, #12]
	ldr	r3, .L2+4
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L2+8
	str	r2, [r3]
	ldr	r3, .L2+12
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L2+12
	ldr	r3, [r3]
	ldr	r2, .L2+12
	orr	r3, r3, #1
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536810000
	.word	-536862800
	.word	-978530731
	.word	-536866816
	.size	stm32_startCycleCounter, .-stm32_startCycleCounter
	.section	.text.systemGetCycleCounter,"ax",%progbits
	.align	1
	.global	systemGetCycleCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	systemGetCycleCounter, %function
systemGetCycleCounter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L6
	ldr	r3, [r3, #4]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	-536866816
	.size	systemGetCycleCounter, .-systemGetCycleCounter
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
