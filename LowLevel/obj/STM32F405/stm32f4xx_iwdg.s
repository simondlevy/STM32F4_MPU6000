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
	.file	"stm32f4xx_iwdg.c"
	.text
	.section	.text.IWDG_WriteAccessCmd,"ax",%progbits
	.align	1
	.global	IWDG_WriteAccessCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_WriteAccessCmd, %function
IWDG_WriteAccessCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldr	r2, .L2
	ldrh	r3, [r7, #6]
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
	.word	1073754112
	.size	IWDG_WriteAccessCmd, .-IWDG_WriteAccessCmd
	.section	.text.IWDG_SetPrescaler,"ax",%progbits
	.align	1
	.global	IWDG_SetPrescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_SetPrescaler, %function
IWDG_SetPrescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	1073754112
	.size	IWDG_SetPrescaler, .-IWDG_SetPrescaler
	.section	.text.IWDG_SetReload,"ax",%progbits
	.align	1
	.global	IWDG_SetReload
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_SetReload, %function
IWDG_SetReload:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldr	r2, .L8
	ldrh	r3, [r7, #6]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073754112
	.size	IWDG_SetReload, .-IWDG_SetReload
	.section	.text.IWDG_ReloadCounter,"ax",%progbits
	.align	1
	.global	IWDG_ReloadCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_ReloadCounter, %function
IWDG_ReloadCounter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L11
	movw	r2, #43690
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073754112
	.size	IWDG_ReloadCounter, .-IWDG_ReloadCounter
	.section	.text.IWDG_Enable,"ax",%progbits
	.align	1
	.global	IWDG_Enable
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_Enable, %function
IWDG_Enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L14
	movw	r2, #52428
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073754112
	.size	IWDG_Enable, .-IWDG_Enable
	.section	.text.IWDG_GetFlagStatus,"ax",%progbits
	.align	1
	.global	IWDG_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	IWDG_GetFlagStatus, %function
IWDG_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L20
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #6]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L17
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L18
.L17:
	movs	r3, #0
	strb	r3, [r7, #15]
.L18:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073754112
	.size	IWDG_GetFlagStatus, .-IWDG_GetFlagStatus
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
