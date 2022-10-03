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
	.file	"spi_stm32f405.c"
	.text
	.section	.text.spiInstanceDenom,"ax",%progbits
	.align	1
	.global	spiInstanceDenom
	.syntax unified
	.thumb
	.thumb_func
	.type	spiInstanceDenom, %function
spiInstanceDenom:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L6
	cmp	r3, r2
	beq	.L2
	ldr	r3, [r7, #4]
	ldr	r2, .L6+4
	cmp	r3, r2
	bne	.L3
.L2:
	movs	r3, #2
	b	.L4
.L3:
	movs	r3, #1
.L4:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073756160
	.word	1073757184
	.size	spiInstanceDenom, .-spiInstanceDenom
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
