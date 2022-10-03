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
	.file	"rcc.c"
	.text
	.section	.text.RCC_ClockCmd,"ax",%progbits
	.align	1
	.global	RCC_ClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ClockCmd, %function
RCC_ClockCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #31
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #4
	beq	.L2
	ldr	r3, [r7, #12]
	cmp	r3, #4
	bgt	.L6
	ldr	r3, [r7, #12]
	cmp	r3, #2
	beq	.L4
	ldr	r3, [r7, #12]
	cmp	r3, #3
	beq	.L5
	b	.L6
.L4:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_APB2PeriphClockCmd
	b	.L3
.L5:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_APB1PeriphClockCmd
	b	.L3
.L2:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_AHB1PeriphClockCmd
	nop
.L3:
.L6:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	RCC_ClockCmd, .-RCC_ClockCmd
	.section	.text.RCC_ResetCmd,"ax",%progbits
	.align	1
	.global	RCC_ResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	RCC_ResetCmd, %function
RCC_ResetCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #31
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #4
	beq	.L8
	ldr	r3, [r7, #12]
	cmp	r3, #4
	bgt	.L12
	ldr	r3, [r7, #12]
	cmp	r3, #2
	beq	.L10
	ldr	r3, [r7, #12]
	cmp	r3, #3
	beq	.L11
	b	.L12
.L10:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_APB2PeriphResetCmd
	b	.L9
.L11:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_APB1PeriphResetCmd
	b	.L9
.L8:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	RCC_AHB1PeriphResetCmd
	nop
.L9:
.L12:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	RCC_ResetCmd, .-RCC_ResetCmd
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
