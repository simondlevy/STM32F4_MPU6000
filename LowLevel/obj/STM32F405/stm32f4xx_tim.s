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
	.file	"stm32f4xx_tim.c"
	.text
	.section	.text.TIM_DeInit,"ax",%progbits
	.align	1
	.global	TIM_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_DeInit, %function
TIM_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L17
	cmp	r3, r2
	bne	.L2
	movs	r1, #1
	movs	r0, #1
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	movs	r0, #1
	bl	RCC_APB2PeriphResetCmd
	b	.L16
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #1073741824
	bne	.L4
	movs	r1, #1
	movs	r0, #1
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #1
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+4
	cmp	r3, r2
	bne	.L5
	movs	r1, #1
	movs	r0, #2
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #2
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+8
	cmp	r3, r2
	bne	.L6
	movs	r1, #1
	movs	r0, #4
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #4
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+12
	cmp	r3, r2
	bne	.L7
	movs	r1, #1
	movs	r0, #8
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #8
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+16
	cmp	r3, r2
	bne	.L8
	movs	r1, #1
	movs	r0, #16
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #16
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+20
	cmp	r3, r2
	bne	.L9
	movs	r1, #1
	movs	r0, #32
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #32
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L9:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+24
	cmp	r3, r2
	bne	.L10
	movs	r1, #1
	movs	r0, #2
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	movs	r0, #2
	bl	RCC_APB2PeriphResetCmd
	b	.L16
.L10:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+28
	cmp	r3, r2
	bne	.L11
	movs	r1, #1
	mov	r0, #65536
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #65536
	bl	RCC_APB2PeriphResetCmd
	b	.L16
.L11:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+32
	cmp	r3, r2
	bne	.L12
	movs	r1, #1
	mov	r0, #131072
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #131072
	bl	RCC_APB2PeriphResetCmd
	b	.L16
.L12:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+36
	cmp	r3, r2
	bne	.L13
	movs	r1, #1
	mov	r0, #262144
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #262144
	bl	RCC_APB2PeriphResetCmd
	b	.L16
.L13:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+40
	cmp	r3, r2
	bne	.L14
	movs	r1, #1
	movs	r0, #64
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #64
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L14:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+44
	cmp	r3, r2
	bne	.L15
	movs	r1, #1
	movs	r0, #128
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #128
	bl	RCC_APB1PeriphResetCmd
	b	.L16
.L15:
	ldr	r3, [r7, #4]
	ldr	r2, .L17+48
	cmp	r3, r2
	bne	.L16
	movs	r1, #1
	mov	r0, #256
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #256
	bl	RCC_APB1PeriphResetCmd
.L16:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	1073807360
	.word	1073742848
	.word	1073743872
	.word	1073744896
	.word	1073745920
	.word	1073746944
	.word	1073808384
	.word	1073823744
	.word	1073824768
	.word	1073825792
	.word	1073747968
	.word	1073748992
	.word	1073750016
	.size	TIM_DeInit, .-TIM_DeInit
	.section	.text.TIM_TimeBaseInit,"ax",%progbits
	.align	1
	.global	TIM_TimeBaseInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_TimeBaseInit, %function
TIM_TimeBaseInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L25
	cmp	r3, r2
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r2, .L25+4
	cmp	r3, r2
	beq	.L20
	ldr	r3, [r7, #4]
	cmp	r3, #1073741824
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r2, .L25+8
	cmp	r3, r2
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r2, .L25+12
	cmp	r3, r2
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r2, .L25+16
	cmp	r3, r2
	bne	.L21
.L20:
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #2]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
.L21:
	ldr	r3, [r7, #4]
	ldr	r2, .L25+20
	cmp	r3, r2
	beq	.L22
	ldr	r3, [r7, #4]
	ldr	r2, .L25+24
	cmp	r3, r2
	beq	.L22
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #768
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #8]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
.L22:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L25
	cmp	r3, r2
	beq	.L23
	ldr	r3, [r7, #4]
	ldr	r2, .L25+4
	cmp	r3, r2
	bne	.L24
.L23:
	ldr	r3, [r7]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #48]	@ movhi
.L24:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	1073807360
	.word	1073808384
	.word	1073742848
	.word	1073743872
	.word	1073744896
	.word	1073745920
	.word	1073746944
	.size	TIM_TimeBaseInit, .-TIM_TimeBaseInit
	.section	.text.TIM_TimeBaseStructInit,"ax",%progbits
	.align	1
	.global	TIM_TimeBaseStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_TimeBaseStructInit, %function
TIM_TimeBaseStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #10]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_TimeBaseStructInit, .-TIM_TimeBaseStructInit
	.section	.text.TIM_PrescalerConfig,"ax",%progbits
	.align	1
	.global	TIM_PrescalerConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_PrescalerConfig, %function
TIM_PrescalerConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_PrescalerConfig, .-TIM_PrescalerConfig
	.section	.text.TIM_CounterModeConfig,"ax",%progbits
	.align	1
	.global	TIM_CounterModeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_CounterModeConfig, %function
TIM_CounterModeConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_CounterModeConfig, .-TIM_CounterModeConfig
	.section	.text.TIM_SetCounter,"ax",%progbits
	.align	1
	.global	TIM_SetCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetCounter, %function
TIM_SetCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetCounter, .-TIM_SetCounter
	.section	.text.TIM_SetAutoreload,"ax",%progbits
	.align	1
	.global	TIM_SetAutoreload
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetAutoreload, %function
TIM_SetAutoreload:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #44]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetAutoreload, .-TIM_SetAutoreload
	.section	.text.TIM_GetCounter,"ax",%progbits
	.align	1
	.global	TIM_GetCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetCounter, %function
TIM_GetCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetCounter, .-TIM_GetCounter
	.section	.text.TIM_GetPrescaler,"ax",%progbits
	.align	1
	.global	TIM_GetPrescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetPrescaler, %function
TIM_GetPrescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #40]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetPrescaler, .-TIM_GetPrescaler
	.section	.text.TIM_UpdateDisableConfig,"ax",%progbits
	.align	1
	.global	TIM_UpdateDisableConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_UpdateDisableConfig, %function
TIM_UpdateDisableConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L39
.L37:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L39:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_UpdateDisableConfig, .-TIM_UpdateDisableConfig
	.section	.text.TIM_UpdateRequestConfig,"ax",%progbits
	.align	1
	.global	TIM_UpdateRequestConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_UpdateRequestConfig, %function
TIM_UpdateRequestConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L43
.L41:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L43:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_UpdateRequestConfig, .-TIM_UpdateRequestConfig
	.section	.text.TIM_ARRPreloadConfig,"ax",%progbits
	.align	1
	.global	TIM_ARRPreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ARRPreloadConfig, %function
TIM_ARRPreloadConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L47
.L45:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L47:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ARRPreloadConfig, .-TIM_ARRPreloadConfig
	.section	.text.TIM_SelectOnePulseMode,"ax",%progbits
	.align	1
	.global	TIM_SelectOnePulseMode
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectOnePulseMode, %function
TIM_SelectOnePulseMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectOnePulseMode, .-TIM_SelectOnePulseMode
	.section	.text.TIM_SetClockDivision,"ax",%progbits
	.align	1
	.global	TIM_SetClockDivision
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetClockDivision, %function
TIM_SetClockDivision:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #768
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetClockDivision, .-TIM_SetClockDivision
	.section	.text.TIM_Cmd,"ax",%progbits
	.align	1
	.global	TIM_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_Cmd, %function
TIM_Cmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L53
.L51:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L53:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_Cmd, .-TIM_Cmd
	.section	.text.TIM_OC1Init,"ax",%progbits
	.align	1
	.global	TIM_OC1Init
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC1Init, %function
TIM_OC1Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3]
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #12]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #2]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L57
	cmp	r3, r2
	beq	.L55
	ldr	r3, [r7, #4]
	ldr	r2, .L57+4
	cmp	r3, r2
	bne	.L56
.L55:
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #14]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #4
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #256
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #512
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #16]
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #18]
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
.L56:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC1Init, .-TIM_OC1Init
	.section	.text.TIM_OC2Init,"ax",%progbits
	.align	1
	.global	TIM_OC2Init
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC2Init, %function
TIM_OC2Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #28672
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #768
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #32
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L62
	cmp	r3, r2
	beq	.L60
	ldr	r3, [r7, #4]
	ldr	r2, .L62+4
	cmp	r3, r2
	bne	.L61
.L60:
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #128
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #14]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #64
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #1024
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #2048
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #2
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #18]
	lsls	r3, r3, #2
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
.L61:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L63:
	.align	2
.L62:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC2Init, .-TIM_OC2Init
	.section	.text.TIM_OC3Init,"ax",%progbits
	.align	1
	.global	TIM_OC3Init
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC3Init, %function
TIM_OC3Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3]
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #512
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L67
	cmp	r3, r2
	beq	.L65
	ldr	r3, [r7, #4]
	ldr	r2, .L67+4
	cmp	r3, r2
	bne	.L66
.L65:
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2048
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #14]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #1024
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #4096
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #8192
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #18]
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
.L66:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC3Init, .-TIM_OC3Init
	.section	.text.TIM_OC4Init,"ax",%progbits
	.align	1
	.global	TIM_OC4Init
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC4Init, %function
TIM_OC4Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #28672
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	bic	r3, r3, #768
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	bic	r3, r3, #8192
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	lsls	r3, r3, #12
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsls	r3, r3, #12
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, .L72
	cmp	r3, r2
	beq	.L70
	ldr	r3, [r7, #4]
	ldr	r2, .L72+4
	cmp	r3, r2
	bne	.L71
.L70:
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #16384
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #16]
	lsls	r3, r3, #6
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
.L71:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #10]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L73:
	.align	2
.L72:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC4Init, .-TIM_OC4Init
	.section	.text.TIM_OCStructInit,"ax",%progbits
	.align	1
	.global	TIM_OCStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OCStructInit, %function
TIM_OCStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #18]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OCStructInit, .-TIM_OCStructInit
	.section	.text.TIM_SelectOCxM,"ax",%progbits
	.align	1
	.global	TIM_SelectOCxM
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectOCxM, %function
TIM_SelectOCxM:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	str	r3, [r7, #12]
	ldrh	r3, [r7, #2]
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L76
	ldrh	r3, [r7, #2]
	cmp	r3, #8
	bne	.L77
.L76:
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #1
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r2, [r7, #12]
	movw	r3, #65423
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldrh	r2, [r7]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3]
	b	.L78
.L77:
	ldrh	r3, [r7, #2]	@ movhi
	subs	r3, r3, #4
	uxth	r3, r3
	lsrs	r3, r3, #1
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r2, [r7, #12]
	movw	r3, #36863
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldrh	r3, [r7]	@ movhi
	lsls	r3, r3, #8
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3]
	nop
.L78:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectOCxM, .-TIM_SelectOCxM
	.section	.text.TIM_SetCompare1,"ax",%progbits
	.align	1
	.global	TIM_SetCompare1
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetCompare1, %function
TIM_SetCompare1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #52]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetCompare1, .-TIM_SetCompare1
	.section	.text.TIM_SetCompare2,"ax",%progbits
	.align	1
	.global	TIM_SetCompare2
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetCompare2, %function
TIM_SetCompare2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetCompare2, .-TIM_SetCompare2
	.section	.text.TIM_SetCompare3,"ax",%progbits
	.align	1
	.global	TIM_SetCompare3
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetCompare3, %function
TIM_SetCompare3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #60]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetCompare3, .-TIM_SetCompare3
	.section	.text.TIM_SetCompare4,"ax",%progbits
	.align	1
	.global	TIM_SetCompare4
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetCompare4, %function
TIM_SetCompare4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #64]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetCompare4, .-TIM_SetCompare4
	.section	.text.TIM_ForcedOC1Config,"ax",%progbits
	.align	1
	.global	TIM_ForcedOC1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ForcedOC1Config, %function
TIM_ForcedOC1Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ForcedOC1Config, .-TIM_ForcedOC1Config
	.section	.text.TIM_ForcedOC2Config,"ax",%progbits
	.align	1
	.global	TIM_ForcedOC2Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ForcedOC2Config, %function
TIM_ForcedOC2Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #28672
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ForcedOC2Config, .-TIM_ForcedOC2Config
	.section	.text.TIM_ForcedOC3Config,"ax",%progbits
	.align	1
	.global	TIM_ForcedOC3Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ForcedOC3Config, %function
TIM_ForcedOC3Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ForcedOC3Config, .-TIM_ForcedOC3Config
	.section	.text.TIM_ForcedOC4Config,"ax",%progbits
	.align	1
	.global	TIM_ForcedOC4Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ForcedOC4Config, %function
TIM_ForcedOC4Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #28672
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ForcedOC4Config, .-TIM_ForcedOC4Config
	.section	.text.TIM_OC1PreloadConfig,"ax",%progbits
	.align	1
	.global	TIM_OC1PreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC1PreloadConfig, %function
TIM_OC1PreloadConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC1PreloadConfig, .-TIM_OC1PreloadConfig
	.section	.text.TIM_OC2PreloadConfig,"ax",%progbits
	.align	1
	.global	TIM_OC2PreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC2PreloadConfig, %function
TIM_OC2PreloadConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2048
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC2PreloadConfig, .-TIM_OC2PreloadConfig
	.section	.text.TIM_OC3PreloadConfig,"ax",%progbits
	.align	1
	.global	TIM_OC3PreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC3PreloadConfig, %function
TIM_OC3PreloadConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC3PreloadConfig, .-TIM_OC3PreloadConfig
	.section	.text.TIM_OC4PreloadConfig,"ax",%progbits
	.align	1
	.global	TIM_OC4PreloadConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC4PreloadConfig, %function
TIM_OC4PreloadConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2048
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC4PreloadConfig, .-TIM_OC4PreloadConfig
	.section	.text.TIM_OC1FastConfig,"ax",%progbits
	.align	1
	.global	TIM_OC1FastConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC1FastConfig, %function
TIM_OC1FastConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #4
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC1FastConfig, .-TIM_OC1FastConfig
	.section	.text.TIM_OC2FastConfig,"ax",%progbits
	.align	1
	.global	TIM_OC2FastConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC2FastConfig, %function
TIM_OC2FastConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #1024
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC2FastConfig, .-TIM_OC2FastConfig
	.section	.text.TIM_OC3FastConfig,"ax",%progbits
	.align	1
	.global	TIM_OC3FastConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC3FastConfig, %function
TIM_OC3FastConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #4
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC3FastConfig, .-TIM_OC3FastConfig
	.section	.text.TIM_OC4FastConfig,"ax",%progbits
	.align	1
	.global	TIM_OC4FastConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC4FastConfig, %function
TIM_OC4FastConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #1024
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC4FastConfig, .-TIM_OC4FastConfig
	.section	.text.TIM_ClearOC1Ref,"ax",%progbits
	.align	1
	.global	TIM_ClearOC1Ref
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearOC1Ref, %function
TIM_ClearOC1Ref:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #128
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearOC1Ref, .-TIM_ClearOC1Ref
	.section	.text.TIM_ClearOC2Ref,"ax",%progbits
	.align	1
	.global	TIM_ClearOC2Ref
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearOC2Ref, %function
TIM_ClearOC2Ref:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	ubfx	r3, r3, #0, #15
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearOC2Ref, .-TIM_ClearOC2Ref
	.section	.text.TIM_ClearOC3Ref,"ax",%progbits
	.align	1
	.global	TIM_ClearOC3Ref
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearOC3Ref, %function
TIM_ClearOC3Ref:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #128
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearOC3Ref, .-TIM_ClearOC3Ref
	.section	.text.TIM_ClearOC4Ref,"ax",%progbits
	.align	1
	.global	TIM_ClearOC4Ref
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearOC4Ref, %function
TIM_ClearOC4Ref:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	ubfx	r3, r3, #0, #15
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearOC4Ref, .-TIM_ClearOC4Ref
	.section	.text.TIM_OC1PolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC1PolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC1PolarityConfig, %function
TIM_OC1PolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC1PolarityConfig, .-TIM_OC1PolarityConfig
	.section	.text.TIM_OC1NPolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC1NPolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC1NPolarityConfig, %function
TIM_OC1NPolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC1NPolarityConfig, .-TIM_OC1NPolarityConfig
	.section	.text.TIM_OC2PolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC2PolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC2PolarityConfig, %function
TIM_OC2PolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #32
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC2PolarityConfig, .-TIM_OC2PolarityConfig
	.section	.text.TIM_OC2NPolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC2NPolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC2NPolarityConfig, %function
TIM_OC2NPolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #128
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC2NPolarityConfig, .-TIM_OC2NPolarityConfig
	.section	.text.TIM_OC3PolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC3PolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC3PolarityConfig, %function
TIM_OC3PolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #512
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC3PolarityConfig, .-TIM_OC3PolarityConfig
	.section	.text.TIM_OC3NPolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC3NPolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC3NPolarityConfig, %function
TIM_OC3NPolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #2048
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC3NPolarityConfig, .-TIM_OC3NPolarityConfig
	.section	.text.TIM_OC4PolarityConfig,"ax",%progbits
	.align	1
	.global	TIM_OC4PolarityConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_OC4PolarityConfig, %function
TIM_OC4PolarityConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #8192
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #12
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_OC4PolarityConfig, .-TIM_OC4PolarityConfig
	.section	.text.TIM_CCxCmd,"ax",%progbits
	.align	1
	.global	TIM_CCxCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_CCxCmd, %function
TIM_CCxCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r2, r3
	ldrh	r1, [r7]
	ldrh	r3, [r7, #2]
	lsl	r3, r1, r3
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_CCxCmd, .-TIM_CCxCmd
	.section	.text.TIM_CCxNCmd,"ax",%progbits
	.align	1
	.global	TIM_CCxNCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_CCxNCmd, %function
TIM_CCxNCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]
	movs	r2, #4
	lsl	r3, r2, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r2, r3
	ldrh	r1, [r7]
	ldrh	r3, [r7, #2]
	lsl	r3, r1, r3
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_CCxNCmd, .-TIM_CCxNCmd
	.section	.text.TIM_ICInit,"ax",%progbits
	.align	1
	.global	TIM_ICInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ICInit, %function
TIM_ICInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L109
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI1_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC1Prescaler
	b	.L113
.L109:
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #4
	bne	.L111
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI2_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC2Prescaler
	b	.L113
.L111:
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #8
	bne	.L112
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI3_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC3Prescaler
	b	.L113
.L112:
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI4_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC4Prescaler
.L113:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_ICInit, .-TIM_ICInit
	.section	.text.TIM_ICStructInit,"ax",%progbits
	.align	1
	.global	TIM_ICStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ICStructInit, %function
TIM_ICStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ICStructInit, .-TIM_ICStructInit
	.section	.text.TIM_PWMIConfig,"ax",%progbits
	.align	1
	.global	TIM_PWMIConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_PWMIConfig, %function
TIM_PWMIConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L116
	movs	r3, #2
	strh	r3, [r7, #14]	@ movhi
	b	.L117
.L116:
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
.L117:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #1
	bne	.L118
	movs	r3, #2
	strh	r3, [r7, #12]	@ movhi
	b	.L119
.L118:
	movs	r3, #1
	strh	r3, [r7, #12]	@ movhi
.L119:
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI1_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC1Prescaler
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldrh	r2, [r7, #12]
	ldrh	r1, [r7, #14]
	ldr	r0, [r7, #4]
	bl	TI2_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC2Prescaler
	b	.L122
.L120:
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #4]
	bl	TI2_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC2Prescaler
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	ldrh	r2, [r7, #12]
	ldrh	r1, [r7, #14]
	ldr	r0, [r7, #4]
	bl	TI1_Config
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SetIC1Prescaler
.L122:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_PWMIConfig, .-TIM_PWMIConfig
	.section	.text.TIM_GetCapture1,"ax",%progbits
	.align	1
	.global	TIM_GetCapture1
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetCapture1, %function
TIM_GetCapture1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetCapture1, .-TIM_GetCapture1
	.section	.text.TIM_GetCapture2,"ax",%progbits
	.align	1
	.global	TIM_GetCapture2
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetCapture2, %function
TIM_GetCapture2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetCapture2, .-TIM_GetCapture2
	.section	.text.TIM_GetCapture3,"ax",%progbits
	.align	1
	.global	TIM_GetCapture3
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetCapture3, %function
TIM_GetCapture3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetCapture3, .-TIM_GetCapture3
	.section	.text.TIM_GetCapture4,"ax",%progbits
	.align	1
	.global	TIM_GetCapture4
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetCapture4, %function
TIM_GetCapture4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetCapture4, .-TIM_GetCapture4
	.section	.text.TIM_SetIC1Prescaler,"ax",%progbits
	.align	1
	.global	TIM_SetIC1Prescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetIC1Prescaler, %function
TIM_SetIC1Prescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #12
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetIC1Prescaler, .-TIM_SetIC1Prescaler
	.section	.text.TIM_SetIC2Prescaler,"ax",%progbits
	.align	1
	.global	TIM_SetIC2Prescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetIC2Prescaler, %function
TIM_SetIC2Prescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #3072
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetIC2Prescaler, .-TIM_SetIC2Prescaler
	.section	.text.TIM_SetIC3Prescaler,"ax",%progbits
	.align	1
	.global	TIM_SetIC3Prescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetIC3Prescaler, %function
TIM_SetIC3Prescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #12
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetIC3Prescaler, .-TIM_SetIC3Prescaler
	.section	.text.TIM_SetIC4Prescaler,"ax",%progbits
	.align	1
	.global	TIM_SetIC4Prescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SetIC4Prescaler, %function
TIM_SetIC4Prescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #3072
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	lsls	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SetIC4Prescaler, .-TIM_SetIC4Prescaler
	.section	.text.TIM_BDTRConfig,"ax",%progbits
	.align	1
	.global	TIM_BDTRConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_BDTRConfig, %function
TIM_BDTRConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #68]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_BDTRConfig, .-TIM_BDTRConfig
	.section	.text.TIM_BDTRStructInit,"ax",%progbits
	.align	1
	.global	TIM_BDTRStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_BDTRStructInit, %function
TIM_BDTRStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_BDTRStructInit, .-TIM_BDTRStructInit
	.section	.text.TIM_CtrlPWMOutputs,"ax",%progbits
	.align	1
	.global	TIM_CtrlPWMOutputs
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_CtrlPWMOutputs, %function
TIM_CtrlPWMOutputs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]	@ movhi
	uxth	r3, r3
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #68]	@ movhi
	b	.L140
.L138:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]	@ movhi
	uxth	r3, r3
	ubfx	r3, r3, #0, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #68]	@ movhi
.L140:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_CtrlPWMOutputs, .-TIM_CtrlPWMOutputs
	.section	.text.TIM_SelectCOM,"ax",%progbits
	.align	1
	.global	TIM_SelectCOM
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectCOM, %function
TIM_SelectCOM:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L142
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L144
.L142:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L144:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectCOM, .-TIM_SelectCOM
	.section	.text.TIM_CCPreloadControl,"ax",%progbits
	.align	1
	.global	TIM_CCPreloadControl
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_CCPreloadControl, %function
TIM_CCPreloadControl:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L148
.L146:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L148:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_CCPreloadControl, .-TIM_CCPreloadControl
	.section	.text.TIM_ITConfig,"ax",%progbits
	.align	1
	.global	TIM_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ITConfig, %function
TIM_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L152
.L150:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
.L152:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ITConfig, .-TIM_ITConfig
	.section	.text.TIM_GenerateEvent,"ax",%progbits
	.align	1
	.global	TIM_GenerateEvent
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GenerateEvent, %function
TIM_GenerateEvent:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GenerateEvent, .-TIM_GenerateEvent
	.section	.text.TIM_GetFlagStatus,"ax",%progbits
	.align	1
	.global	TIM_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetFlagStatus, %function
TIM_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L155
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L156
.L155:
	movs	r3, #0
	strb	r3, [r7, #15]
.L156:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetFlagStatus, .-TIM_GetFlagStatus
	.section	.text.TIM_ClearFlag,"ax",%progbits
	.align	1
	.global	TIM_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearFlag, %function
TIM_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearFlag, .-TIM_ClearFlag
	.section	.text.TIM_GetITStatus,"ax",%progbits
	.align	1
	.global	TIM_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_GetITStatus, %function
TIM_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	ands	r3, r3, r2
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	ands	r3, r3, r2
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #12]
	cmp	r3, #0
	beq	.L160
	ldrh	r3, [r7, #10]
	cmp	r3, #0
	beq	.L160
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L161
.L160:
	movs	r3, #0
	strb	r3, [r7, #15]
.L161:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_GetITStatus, .-TIM_GetITStatus
	.section	.text.TIM_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	TIM_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ClearITPendingBit, %function
TIM_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ClearITPendingBit, .-TIM_ClearITPendingBit
	.section	.text.TIM_DMAConfig,"ax",%progbits
	.align	1
	.global	TIM_DMAConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_DMAConfig, %function
TIM_DMAConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldrh	r2, [r7, #2]	@ movhi
	ldrh	r3, [r7]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #72]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_DMAConfig, .-TIM_DMAConfig
	.section	.text.TIM_DMACmd,"ax",%progbits
	.align	1
	.global	TIM_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_DMACmd, %function
TIM_DMACmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L168
.L166:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
.L168:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_DMACmd, .-TIM_DMACmd
	.section	.text.TIM_SelectCCDMA,"ax",%progbits
	.align	1
	.global	TIM_SelectCCDMA
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectCCDMA, %function
TIM_SelectCCDMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L170
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L172
.L170:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L172:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectCCDMA, .-TIM_SelectCCDMA
	.section	.text.TIM_InternalClockConfig,"ax",%progbits
	.align	1
	.global	TIM_InternalClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_InternalClockConfig, %function
TIM_InternalClockConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #7
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_InternalClockConfig, .-TIM_InternalClockConfig
	.section	.text.TIM_ITRxExternalClockConfig,"ax",%progbits
	.align	1
	.global	TIM_ITRxExternalClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ITRxExternalClockConfig, %function
TIM_ITRxExternalClockConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7, #2]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_SelectInputTrigger
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #7
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_ITRxExternalClockConfig, .-TIM_ITRxExternalClockConfig
	.section	.text.TIM_TIxExternalClockConfig,"ax",%progbits
	.align	1
	.global	TIM_TIxExternalClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_TIxExternalClockConfig, %function
TIM_TIxExternalClockConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #10]
	cmp	r3, #96
	bne	.L176
	ldrh	r3, [r7, #6]
	ldrh	r1, [r7, #8]
	movs	r2, #1
	ldr	r0, [r7, #12]
	bl	TI2_Config
	b	.L177
.L176:
	ldrh	r3, [r7, #6]
	ldrh	r1, [r7, #8]
	movs	r2, #1
	ldr	r0, [r7, #12]
	bl	TI1_Config
.L177:
	ldrh	r3, [r7, #10]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	TIM_SelectInputTrigger
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #7
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_TIxExternalClockConfig, .-TIM_TIxExternalClockConfig
	.section	.text.TIM_ETRClockMode1Config,"ax",%progbits
	.align	1
	.global	TIM_ETRClockMode1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ETRClockMode1Config, %function
TIM_ETRClockMode1Config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	ldr	r0, [r7, #12]
	bl	TIM_ETRConfig
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #7
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	orr	r3, r3, #7
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	orr	r3, r3, #112
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_ETRClockMode1Config, .-TIM_ETRClockMode1Config
	.section	.text.TIM_ETRClockMode2Config,"ax",%progbits
	.align	1
	.global	TIM_ETRClockMode2Config
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ETRClockMode2Config, %function
TIM_ETRClockMode2Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	ldr	r0, [r7, #12]
	bl	TIM_ETRConfig
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_ETRClockMode2Config, .-TIM_ETRClockMode2Config
	.section	.text.TIM_SelectInputTrigger,"ax",%progbits
	.align	1
	.global	TIM_SelectInputTrigger
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectInputTrigger, %function
TIM_SelectInputTrigger:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #112
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]	@ movhi
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectInputTrigger, .-TIM_SelectInputTrigger
	.section	.text.TIM_SelectOutputTrigger,"ax",%progbits
	.align	1
	.global	TIM_SelectOutputTrigger
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectOutputTrigger, %function
TIM_SelectOutputTrigger:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #112
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectOutputTrigger, .-TIM_SelectOutputTrigger
	.section	.text.TIM_SelectSlaveMode,"ax",%progbits
	.align	1
	.global	TIM_SelectSlaveMode
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectSlaveMode, %function
TIM_SelectSlaveMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #7
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectSlaveMode, .-TIM_SelectSlaveMode
	.section	.text.TIM_SelectMasterSlaveMode,"ax",%progbits
	.align	1
	.global	TIM_SelectMasterSlaveMode
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectMasterSlaveMode, %function
TIM_SelectMasterSlaveMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectMasterSlaveMode, .-TIM_SelectMasterSlaveMode
	.section	.text.TIM_ETRConfig,"ax",%progbits
	.align	1
	.global	TIM_ETRConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_ETRConfig, %function
TIM_ETRConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	uxtb	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #8]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_ETRConfig, .-TIM_ETRConfig
	.section	.text.TIM_EncoderInterfaceConfig,"ax",%progbits
	.align	1
	.global	TIM_EncoderInterfaceConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_EncoderInterfaceConfig, %function
TIM_EncoderInterfaceConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #7
	strh	r3, [r7, #22]	@ movhi
	ldrh	r2, [r7, #22]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	bic	r3, r3, #768
	bic	r3, r3, #3
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	orr	r3, r3, #256
	orr	r3, r3, #1
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #18]	@ movhi
	bic	r3, r3, #34
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #8]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #18]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #20]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #18]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_EncoderInterfaceConfig, .-TIM_EncoderInterfaceConfig
	.section	.text.TIM_SelectHallSensor,"ax",%progbits
	.align	1
	.global	TIM_SelectHallSensor
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_SelectHallSensor, %function
TIM_SelectHallSensor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L189
.L187:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L189:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_SelectHallSensor, .-TIM_SelectHallSensor
	.section	.text.TIM_RemapConfig,"ax",%progbits
	.align	1
	.global	TIM_RemapConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	TIM_RemapConfig, %function
TIM_RemapConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #80]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TIM_RemapConfig, .-TIM_RemapConfig
	.section	.text.TI1_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	TI1_Config, %function
TI1_Config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #243
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #8]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	bic	r3, r3, #10
	strh	r3, [r7, #20]	@ movhi
	ldrh	r2, [r7, #10]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #20]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TI1_Config, .-TI1_Config
	.section	.text.TI2_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	TI2_Config, %function
TI2_Config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	lsls	r3, r3, #4
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #768
	lsls	r3, r3, #20
	lsrs	r3, r3, #20
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #12
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #8]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	bic	r3, r3, #160
	strh	r3, [r7, #20]	@ movhi
	ldrh	r2, [r7, #18]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #16
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #20]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TI2_Config, .-TI2_Config
	.section	.text.TI3_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	TI3_Config, %function
TI3_Config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #243
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #4
	uxth	r2, r3
	ldrh	r3, [r7, #8]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	bic	r3, r3, #2560
	strh	r3, [r7, #20]	@ movhi
	ldrh	r2, [r7, #18]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #256
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #20]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TI3_Config, .-TI3_Config
	.section	.text.TI4_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	TI4_Config, %function
TI4_Config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #32]	@ movhi
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #10]	@ movhi
	lsls	r3, r3, #12
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	bic	r3, r3, #768
	lsls	r3, r3, #20
	lsrs	r3, r3, #20
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #8]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	lsls	r3, r3, #12
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	bic	r3, r3, #8192
	lsls	r3, r3, #17
	lsrs	r3, r3, #17
	strh	r3, [r7, #20]	@ movhi
	ldrh	r2, [r7, #18]	@ movhi
	ldrh	r3, [r7, #20]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #4096
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #20]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TI4_Config, .-TI4_Config
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
