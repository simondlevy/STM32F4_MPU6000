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
	.file	"stm32f4xx_rng.c"
	.text
	.section	.text.RNG_DeInit,"ax",%progbits
	.align	1
	.global	RNG_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_DeInit, %function
RNG_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	movs	r0, #64
	bl	RCC_AHB2PeriphResetCmd
	movs	r1, #0
	movs	r0, #64
	bl	RCC_AHB2PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	RNG_DeInit, .-RNG_DeInit
	.section	.text.RNG_Cmd,"ax",%progbits
	.align	1
	.global	RNG_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_Cmd, %function
RNG_Cmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3
	ldr	r3, .L6
	ldr	r3, [r3]
	ldr	r2, .L6
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L5
.L3:
	ldr	r3, .L6
	ldr	r3, [r3]
	ldr	r2, .L6
	bic	r3, r3, #4
	str	r3, [r2]
.L5:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	1342572544
	.size	RNG_Cmd, .-RNG_Cmd
	.section	.text.RNG_GetRandomNumber,"ax",%progbits
	.align	1
	.global	RNG_GetRandomNumber
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_GetRandomNumber, %function
RNG_GetRandomNumber:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L10
	ldr	r3, [r3, #8]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	1342572544
	.size	RNG_GetRandomNumber, .-RNG_GetRandomNumber
	.section	.text.RNG_ITConfig,"ax",%progbits
	.align	1
	.global	RNG_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_ITConfig, %function
RNG_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r2, .L16
	orr	r3, r3, #8
	str	r3, [r2]
	b	.L15
.L13:
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r2, .L16
	bic	r3, r3, #8
	str	r3, [r2]
.L15:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	1342572544
	.size	RNG_ITConfig, .-RNG_ITConfig
	.section	.text.RNG_GetFlagStatus,"ax",%progbits
	.align	1
	.global	RNG_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_GetFlagStatus, %function
RNG_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L22
	ldr	r2, [r3, #4]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L19
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L20
.L19:
	movs	r3, #0
	strb	r3, [r7, #15]
.L20:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	1342572544
	.size	RNG_GetFlagStatus, .-RNG_GetFlagStatus
	.section	.text.RNG_ClearFlag,"ax",%progbits
	.align	1
	.global	RNG_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_ClearFlag, %function
RNG_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, .L25
	mvns	r3, r3
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	1342572544
	.size	RNG_ClearFlag, .-RNG_ClearFlag
	.section	.text.RNG_GetITStatus,"ax",%progbits
	.align	1
	.global	RNG_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_GetITStatus, %function
RNG_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L31
	ldr	r2, [r3, #4]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L28
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L29
.L28:
	movs	r3, #0
	strb	r3, [r7, #15]
.L29:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	1342572544
	.size	RNG_GetITStatus, .-RNG_GetITStatus
	.section	.text.RNG_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	RNG_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	RNG_ClearITPendingBit, %function
RNG_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]
	mvns	r3, r3
	uxtb	r2, r3
	ldr	r3, .L34
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	1342572544
	.size	RNG_ClearITPendingBit, .-RNG_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
