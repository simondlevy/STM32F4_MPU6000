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
	.file	"stm32f4xx_wwdg.c"
	.text
	.section	.text.WWDG_DeInit,"ax",%progbits
	.align	1
	.global	WWDG_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_DeInit, %function
WWDG_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #2048
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #2048
	bl	RCC_APB1PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	WWDG_DeInit, .-WWDG_DeInit
	.section	.text.WWDG_SetPrescaler,"ax",%progbits
	.align	1
	.global	WWDG_SetPrescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_SetPrescaler, %function
WWDG_SetPrescaler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L3
	ldr	r3, [r3, #4]
	bic	r3, r3, #384
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L3
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073753088
	.size	WWDG_SetPrescaler, .-WWDG_SetPrescaler
	.section	.text.WWDG_SetWindowValue,"ax",%progbits
	.align	1
	.global	WWDG_SetWindowValue
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_SetWindowValue, %function
WWDG_SetWindowValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L6
	ldr	r3, [r3, #4]
	bic	r3, r3, #127
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L6
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073753088
	.size	WWDG_SetWindowValue, .-WWDG_SetWindowValue
	.section	.text.WWDG_EnableIT,"ax",%progbits
	.align	1
	.global	WWDG_EnableIT
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_EnableIT, %function
WWDG_EnableIT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L9
	movs	r2, #1
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	1107656868
	.size	WWDG_EnableIT, .-WWDG_EnableIT
	.section	.text.WWDG_SetCounter,"ax",%progbits
	.align	1
	.global	WWDG_SetCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_SetCounter, %function
WWDG_SetCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L12
	and	r3, r3, #127
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073753088
	.size	WWDG_SetCounter, .-WWDG_SetCounter
	.section	.text.WWDG_Enable,"ax",%progbits
	.align	1
	.global	WWDG_Enable
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_Enable, %function
WWDG_Enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]
	orn	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, .L15
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073753088
	.size	WWDG_Enable, .-WWDG_Enable
	.section	.text.WWDG_GetFlagStatus,"ax",%progbits
	.align	1
	.global	WWDG_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_GetFlagStatus, %function
WWDG_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #7]
	ldr	r3, .L21
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L18
	movs	r3, #1
	strb	r3, [r7, #7]
	b	.L19
.L18:
	movs	r3, #0
	strb	r3, [r7, #7]
.L19:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073753088
	.size	WWDG_GetFlagStatus, .-WWDG_GetFlagStatus
	.section	.text.WWDG_ClearFlag,"ax",%progbits
	.align	1
	.global	WWDG_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	WWDG_ClearFlag, %function
WWDG_ClearFlag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L24
	movs	r2, #0
	str	r2, [r3, #8]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073753088
	.size	WWDG_ClearFlag, .-WWDG_ClearFlag
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
