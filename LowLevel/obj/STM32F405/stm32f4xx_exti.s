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
	.file	"stm32f4xx_exti.c"
	.text
	.section	.text.EXTI_DeInit,"ax",%progbits
	.align	1
	.global	EXTI_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_DeInit, %function
EXTI_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3, #20]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073822720
	.word	8388607
	.size	EXTI_DeInit, .-EXTI_DeInit
	.section	.text.EXTI_Init,"ax",%progbits
	.align	1
	.global	EXTI_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_Init, %function
EXTI_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L9
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	ldr	r3, .L9
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r1, .L9
	ands	r3, r3, r2
	str	r3, [r1]
	ldr	r3, .L9
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r1, .L9
	ands	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, .L9
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r1, .L9
	ands	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L9
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r1, .L9
	ands	r3, r3, r2
	str	r3, [r1, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #16
	bne	.L6
	ldr	r3, .L9
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L9
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	ldr	r3, .L9
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L9
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	b	.L8
.L6:
	ldr	r3, .L9
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3]
	b	.L8
.L5:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvns	r2, r3
	ldr	r3, [r7, #12]
	ands	r2, r2, r1
	str	r2, [r3]
.L8:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	1073822720
	.size	EXTI_Init, .-EXTI_Init
	.section	.text.EXTI_StructInit,"ax",%progbits
	.align	1
	.global	EXTI_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_StructInit, %function
EXTI_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #12
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #6]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	EXTI_StructInit, .-EXTI_StructInit
	.section	.text.EXTI_GenerateSWInterrupt,"ax",%progbits
	.align	1
	.global	EXTI_GenerateSWInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_GenerateSWInterrupt, %function
EXTI_GenerateSWInterrupt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L13
	ldr	r2, [r3, #16]
	ldr	r1, .L13
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073822720
	.size	EXTI_GenerateSWInterrupt, .-EXTI_GenerateSWInterrupt
	.section	.text.EXTI_GetFlagStatus,"ax",%progbits
	.align	1
	.global	EXTI_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_GetFlagStatus, %function
EXTI_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L19
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L16
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L17
.L16:
	movs	r3, #0
	strb	r3, [r7, #15]
.L17:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	1073822720
	.size	EXTI_GetFlagStatus, .-EXTI_GetFlagStatus
	.section	.text.EXTI_ClearFlag,"ax",%progbits
	.align	1
	.global	EXTI_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_ClearFlag, %function
EXTI_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L22
	ldr	r3, [r7, #4]
	str	r3, [r2, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	1073822720
	.size	EXTI_ClearFlag, .-EXTI_ClearFlag
	.section	.text.EXTI_GetITStatus,"ax",%progbits
	.align	1
	.global	EXTI_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_GetITStatus, %function
EXTI_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L28
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L25
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L26
.L25:
	movs	r3, #0
	strb	r3, [r7, #15]
.L26:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073822720
	.size	EXTI_GetITStatus, .-EXTI_GetITStatus
	.section	.text.EXTI_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	EXTI_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	EXTI_ClearITPendingBit, %function
EXTI_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L31
	ldr	r3, [r7, #4]
	str	r3, [r2, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073822720
	.size	EXTI_ClearITPendingBit, .-EXTI_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
