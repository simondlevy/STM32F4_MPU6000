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
	.file	"misc.c"
	.text
	.section	.text.NVIC_PriorityGroupConfig,"ax",%progbits
	.align	1
	.global	NVIC_PriorityGroupConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	NVIC_PriorityGroupConfig, %function
NVIC_PriorityGroupConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L2
	ldr	r3, [r7, #4]
	orr	r3, r3, #100139008
	orr	r3, r3, #131072
	str	r3, [r2, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536810240
	.size	NVIC_PriorityGroupConfig, .-NVIC_PriorityGroupConfig
	.section	.text.NVIC_Init,"ax",%progbits
	.align	1
	.global	NVIC_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	NVIC_Init, %function
NVIC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	strb	r3, [r7, #14]
	movs	r3, #15
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	ldr	r3, .L8
	ldr	r3, [r3, #12]
	mvns	r3, r3
	lsrs	r3, r3, #8
	uxtb	r3, r3
	and	r3, r3, #7
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	rsb	r3, r3, #4
	strb	r3, [r7, #14]
	ldrb	r2, [r7, #13]	@ zero_extendqisi2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	asr	r3, r2, r3
	strb	r3, [r7, #13]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	lsl	r3, r2, r3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #13]
	ands	r3, r3, r2
	uxtb	r2, r3
	ldrb	r3, [r7, #15]
	orrs	r3, r3, r2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	lsls	r3, r3, #4
	strb	r3, [r7, #15]
	ldr	r2, .L8+4
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #768]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #31
	ldr	r1, .L8+4
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsrs	r2, r2, #5
	uxtb	r2, r2
	mov	r0, r2
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r1, r0, lsl #2]
	b	.L7
.L5:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #31
	ldr	r1, .L8+4
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsrs	r2, r2, #5
	uxtb	r2, r2
	mov	r0, r2
	movs	r2, #1
	lsls	r2, r2, r3
	add	r3, r0, #32
	str	r2, [r1, r3, lsl #2]
.L7:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536810240
	.word	-536813312
	.size	NVIC_Init, .-NVIC_Init
	.section	.text.NVIC_SetVectorTable,"ax",%progbits
	.align	1
	.global	NVIC_SetVectorTable
	.syntax unified
	.thumb
	.thumb_func
	.type	NVIC_SetVectorTable, %function
NVIC_SetVectorTable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	bic	r3, r3, #-536870912
	bic	r3, r3, #127
	ldr	r1, .L11
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	-536810240
	.size	NVIC_SetVectorTable, .-NVIC_SetVectorTable
	.section	.text.NVIC_SystemLPConfig,"ax",%progbits
	.align	1
	.global	NVIC_SystemLPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	NVIC_SystemLPConfig, %function
NVIC_SystemLPConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	ldr	r3, .L17
	ldr	r2, [r3, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L17
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	b	.L16
.L14:
	ldr	r3, .L17
	ldr	r2, [r3, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mvns	r3, r3
	ldr	r1, .L17
	ands	r3, r3, r2
	str	r3, [r1, #16]
.L16:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	-536810240
	.size	NVIC_SystemLPConfig, .-NVIC_SystemLPConfig
	.section	.text.SysTick_CLKSourceConfig,"ax",%progbits
	.align	1
	.global	SysTick_CLKSourceConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_CLKSourceConfig, %function
SysTick_CLKSourceConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #4
	bne	.L20
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L22
.L20:
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23
	bic	r3, r3, #4
	str	r3, [r2]
.L22:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	-536813552
	.size	SysTick_CLKSourceConfig, .-SysTick_CLKSourceConfig
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
