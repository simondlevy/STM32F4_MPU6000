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
	.file	"stm32f4xx_i2c.c"
	.text
	.section	.text.I2C_DeInit,"ax",%progbits
	.align	1
	.global	I2C_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_DeInit, %function
I2C_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L6
	cmp	r3, r2
	bne	.L2
	movs	r1, #1
	mov	r0, #2097152
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #2097152
	bl	RCC_APB1PeriphResetCmd
	b	.L5
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L6+4
	cmp	r3, r2
	bne	.L4
	movs	r1, #1
	mov	r0, #4194304
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #4194304
	bl	RCC_APB1PeriphResetCmd
	b	.L5
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L6+8
	cmp	r3, r2
	bne	.L5
	movs	r1, #1
	mov	r0, #8388608
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #8388608
	bl	RCC_APB1PeriphResetCmd
.L5:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	1073763328
	.word	1073764352
	.word	1073765376
	.size	I2C_DeInit, .-I2C_DeInit
	.section	.text.I2C_Init,"ax",%progbits
	.align	1
	.global	I2C_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_Init, %function
I2C_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #34]	@ movhi
	movs	r3, #4
	strh	r3, [r7, #36]	@ movhi
	ldr	r3, .L15
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #38]	@ movhi
	ldrh	r3, [r7, #38]	@ movhi
	bic	r3, r3, #63
	strh	r3, [r7, #38]	@ movhi
	add	r3, r7, #12
	mov	r0, r3
	bl	RCC_GetClocksFreq
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, .L15+4
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #18
	strh	r3, [r7, #34]	@ movhi
	ldrh	r2, [r7, #38]	@ movhi
	ldrh	r3, [r7, #34]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, .L15+8
	cmp	r3, r2
	bhi	.L9
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	udiv	r3, r2, r3
	strh	r3, [r7, #36]	@ movhi
	ldrh	r3, [r7, #36]
	cmp	r3, #3
	bhi	.L10
	movs	r3, #4
	strh	r3, [r7, #36]	@ movhi
.L10:
	ldrh	r2, [r7, #38]	@ movhi
	ldrh	r3, [r7, #36]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #38]	@ movhi
	ldrh	r3, [r7, #34]	@ movhi
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	b	.L11
.L9:
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	movw	r2, #49151
	cmp	r3, r2
	bne	.L12
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	udiv	r3, r2, r3
	strh	r3, [r7, #36]	@ movhi
	b	.L13
.L12:
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	udiv	r3, r2, r3
	strh	r3, [r7, #36]	@ movhi
	ldrh	r3, [r7, #36]	@ movhi
	orr	r3, r3, #16384
	strh	r3, [r7, #36]	@ movhi
.L13:
	ldrh	r3, [r7, #36]
	ubfx	r3, r3, #0, #12
	cmp	r3, #0
	bne	.L14
	ldrh	r3, [r7, #36]	@ movhi
	orr	r3, r3, #1
	strh	r3, [r7, #36]	@ movhi
.L14:
	ldrh	r2, [r7, #36]	@ movhi
	ldrh	r3, [r7, #38]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r7, #38]	@ movhi
	ldrh	r3, [r7, #34]
	mov	r2, #300
	mul	r3, r2, r3
	ldr	r2, .L15+12
	smull	r1, r2, r2, r3
	asrs	r2, r2, #6
	asrs	r3, r3, #31
	subs	r3, r2, r3
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
.L11:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #38]	@ movhi
	ldrh	r3, [r7, #38]	@ movhi
	bic	r3, r3, #1032
	bic	r3, r3, #2
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #38]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	8000000
	.word	1125899907
	.word	100000
	.word	274877907
	.size	I2C_Init, .-I2C_Init
	.section	.text.I2C_StructInit,"ax",%progbits
	.align	1
	.global	I2C_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_StructInit, %function
I2C_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #5000
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movw	r2, #49151
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #4]
	mov	r2, #16384
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_StructInit, .-I2C_StructInit
	.section	.text.I2C_Cmd,"ax",%progbits
	.align	1
	.global	I2C_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_Cmd, %function
I2C_Cmd:
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
	beq	.L19
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L21
.L19:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L21:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_Cmd, .-I2C_Cmd
	.section	.text.I2C_AnalogFilterCmd,"ax",%progbits
	.align	1
	.global	I2C_AnalogFilterCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_AnalogFilterCmd, %function
I2C_AnalogFilterCmd:
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
	beq	.L23
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #36]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #36]	@ movhi
	b	.L25
.L23:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #36]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #36]	@ movhi
.L25:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_AnalogFilterCmd, .-I2C_AnalogFilterCmd
	.section	.text.I2C_DigitalFilterConfig,"ax",%progbits
	.align	1
	.global	I2C_DigitalFilterConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_DigitalFilterConfig, %function
I2C_DigitalFilterConfig:
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
	ldrh	r3, [r3, #36]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #15
	strh	r3, [r7, #14]	@ movhi
	ldrsh	r3, [r7, #2]
	and	r3, r3, #15
	sxth	r2, r3
	ldrsh	r3, [r7, #14]
	orrs	r3, r3, r2
	sxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_DigitalFilterConfig, .-I2C_DigitalFilterConfig
	.section	.text.I2C_GenerateSTART,"ax",%progbits
	.align	1
	.global	I2C_GenerateSTART
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GenerateSTART, %function
I2C_GenerateSTART:
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
	beq	.L28
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L30
.L28:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L30:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GenerateSTART, .-I2C_GenerateSTART
	.section	.text.I2C_GenerateSTOP,"ax",%progbits
	.align	1
	.global	I2C_GenerateSTOP
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GenerateSTOP, %function
I2C_GenerateSTOP:
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
	beq	.L32
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #512
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L34
.L32:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #512
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L34:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GenerateSTOP, .-I2C_GenerateSTOP
	.section	.text.I2C_Send7bitAddress,"ax",%progbits
	.align	1
	.global	I2C_Send7bitAddress
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_Send7bitAddress, %function
I2C_Send7bitAddress:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	ldrb	r3, [r7, #3]
	orr	r3, r3, #1
	strb	r3, [r7, #3]
	b	.L37
.L36:
	ldrb	r3, [r7, #3]
	bic	r3, r3, #1
	strb	r3, [r7, #3]
.L37:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_Send7bitAddress, .-I2C_Send7bitAddress
	.section	.text.I2C_AcknowledgeConfig,"ax",%progbits
	.align	1
	.global	I2C_AcknowledgeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_AcknowledgeConfig, %function
I2C_AcknowledgeConfig:
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
	beq	.L39
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1024
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L41
.L39:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1024
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L41:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_AcknowledgeConfig, .-I2C_AcknowledgeConfig
	.section	.text.I2C_OwnAddress2Config,"ax",%progbits
	.align	1
	.global	I2C_OwnAddress2Config
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_OwnAddress2Config, %function
I2C_OwnAddress2Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #254
	strh	r3, [r7, #14]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	sxth	r3, r3
	and	r3, r3, #254
	sxth	r2, r3
	ldrsh	r3, [r7, #14]
	orrs	r3, r3, r2
	sxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_OwnAddress2Config, .-I2C_OwnAddress2Config
	.section	.text.I2C_DualAddressCmd,"ax",%progbits
	.align	1
	.global	I2C_DualAddressCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_DualAddressCmd, %function
I2C_DualAddressCmd:
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
	beq	.L44
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L46
.L44:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
.L46:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_DualAddressCmd, .-I2C_DualAddressCmd
	.section	.text.I2C_GeneralCallCmd,"ax",%progbits
	.align	1
	.global	I2C_GeneralCallCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GeneralCallCmd, %function
I2C_GeneralCallCmd:
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
	beq	.L48
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #64
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L50
.L48:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #64
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L50:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GeneralCallCmd, .-I2C_GeneralCallCmd
	.section	.text.I2C_SoftwareResetCmd,"ax",%progbits
	.align	1
	.global	I2C_SoftwareResetCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_SoftwareResetCmd, %function
I2C_SoftwareResetCmd:
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
	beq	.L52
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L54
.L52:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	ubfx	r3, r3, #0, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L54:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_SoftwareResetCmd, .-I2C_SoftwareResetCmd
	.section	.text.I2C_StretchClockCmd,"ax",%progbits
	.align	1
	.global	I2C_StretchClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_StretchClockCmd, %function
I2C_StretchClockCmd:
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
	bne	.L56
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L58
.L56:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #128
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L58:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_StretchClockCmd, .-I2C_StretchClockCmd
	.section	.text.I2C_FastModeDutyCycleConfig,"ax",%progbits
	.align	1
	.global	I2C_FastModeDutyCycleConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_FastModeDutyCycleConfig, %function
I2C_FastModeDutyCycleConfig:
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
	cmp	r3, #16384
	beq	.L60
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	b	.L62
.L60:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
.L62:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_FastModeDutyCycleConfig, .-I2C_FastModeDutyCycleConfig
	.section	.text.I2C_NACKPositionConfig,"ax",%progbits
	.align	1
	.global	I2C_NACKPositionConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_NACKPositionConfig, %function
I2C_NACKPositionConfig:
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
	cmp	r3, #2048
	bne	.L64
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L66
.L64:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L66:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_NACKPositionConfig, .-I2C_NACKPositionConfig
	.section	.text.I2C_SMBusAlertConfig,"ax",%progbits
	.align	1
	.global	I2C_SMBusAlertConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_SMBusAlertConfig, %function
I2C_SMBusAlertConfig:
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
	cmp	r3, #8192
	bne	.L68
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L70
.L68:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L70:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_SMBusAlertConfig, .-I2C_SMBusAlertConfig
	.section	.text.I2C_ARPCmd,"ax",%progbits
	.align	1
	.global	I2C_ARPCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ARPCmd, %function
I2C_ARPCmd:
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
	beq	.L72
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L74
.L72:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L74:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ARPCmd, .-I2C_ARPCmd
	.section	.text.I2C_SendData,"ax",%progbits
	.align	1
	.global	I2C_SendData
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_SendData, %function
I2C_SendData:
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
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_SendData, .-I2C_SendData
	.section	.text.I2C_ReceiveData,"ax",%progbits
	.align	1
	.global	I2C_ReceiveData
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ReceiveData, %function
I2C_ReceiveData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ReceiveData, .-I2C_ReceiveData
	.section	.text.I2C_TransmitPEC,"ax",%progbits
	.align	1
	.global	I2C_TransmitPEC
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_TransmitPEC, %function
I2C_TransmitPEC:
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
	beq	.L79
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L81
.L79:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L81:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_TransmitPEC, .-I2C_TransmitPEC
	.section	.text.I2C_PECPositionConfig,"ax",%progbits
	.align	1
	.global	I2C_PECPositionConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_PECPositionConfig, %function
I2C_PECPositionConfig:
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
	cmp	r3, #2048
	bne	.L83
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L85
.L83:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L85:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_PECPositionConfig, .-I2C_PECPositionConfig
	.section	.text.I2C_CalculatePEC,"ax",%progbits
	.align	1
	.global	I2C_CalculatePEC
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_CalculatePEC, %function
I2C_CalculatePEC:
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
	beq	.L87
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #32
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L89
.L87:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #32
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L89:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_CalculatePEC, .-I2C_CalculatePEC
	.section	.text.I2C_GetPEC,"ax",%progbits
	.align	1
	.global	I2C_GetPEC
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GetPEC, %function
I2C_GetPEC:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GetPEC, .-I2C_GetPEC
	.section	.text.I2C_DMACmd,"ax",%progbits
	.align	1
	.global	I2C_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_DMACmd, %function
I2C_DMACmd:
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
	beq	.L93
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L95
.L93:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L95:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_DMACmd, .-I2C_DMACmd
	.section	.text.I2C_DMALastTransferCmd,"ax",%progbits
	.align	1
	.global	I2C_DMALastTransferCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_DMALastTransferCmd, %function
I2C_DMALastTransferCmd:
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
	beq	.L97
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L99
.L97:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L99:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_DMALastTransferCmd, .-I2C_DMALastTransferCmd
	.section	.text.I2C_ReadRegister,"ax",%progbits
	.align	1
	.global	I2C_ReadRegister
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ReadRegister, %function
I2C_ReadRegister:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ReadRegister, .-I2C_ReadRegister
	.section	.text.I2C_ITConfig,"ax",%progbits
	.align	1
	.global	I2C_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ITConfig, %function
I2C_ITConfig:
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
	beq	.L103
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L105
.L103:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L105:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ITConfig, .-I2C_ITConfig
	.section	.text.I2C_CheckEvent,"ax",%progbits
	.align	1
	.global	I2C_CheckEvent
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_CheckEvent, %function
I2C_CheckEvent:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	bic	r3, r3, #-16777216
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	ands	r3, r3, r2
	ldr	r2, [r7]
	cmp	r2, r3
	bne	.L107
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L108
.L107:
	movs	r3, #0
	strb	r3, [r7, #23]
.L108:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_CheckEvent, .-I2C_CheckEvent
	.section	.text.I2C_GetLastEvent,"ax",%progbits
	.align	1
	.global	I2C_GetLastEvent
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GetLastEvent, %function
I2C_GetLastEvent:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	bic	r3, r3, #-16777216
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GetLastEvent, .-I2C_GetLastEvent
	.section	.text.I2C_GetFlagStatus,"ax",%progbits
	.align	1
	.global	I2C_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GetFlagStatus, %function
I2C_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	lsrs	r3, r3, #28
	str	r3, [r7, #16]
	ldr	r3, [r7]
	bic	r3, r3, #-16777216
	str	r3, [r7]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	b	.L114
.L113:
	ldr	r3, [r7]
	lsrs	r3, r3, #16
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	str	r3, [r7, #12]
.L114:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L115
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L116
.L115:
	movs	r3, #0
	strb	r3, [r7, #23]
.L116:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GetFlagStatus, .-I2C_GetFlagStatus
	.section	.text.I2C_ClearFlag,"ax",%progbits
	.align	1
	.global	I2C_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ClearFlag, %function
I2C_ClearFlag:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	bic	r3, r3, #-16777216
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ClearFlag, .-I2C_ClearFlag
	.section	.text.I2C_GetITStatus,"ax",%progbits
	.align	1
	.global	I2C_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_GetITStatus, %function
I2C_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #4]	@ movhi
	uxth	r2, r2
	ands	r3, r3, r2
	and	r3, r3, #1792
	str	r3, [r7, #8]
	ldr	r3, [r7]
	bic	r3, r3, #-16777216
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L120
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L120
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L121
.L120:
	movs	r3, #0
	strb	r3, [r7, #15]
.L121:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_GetITStatus, .-I2C_GetITStatus
	.section	.text.I2C_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	I2C_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	I2C_ClearITPendingBit, %function
I2C_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	bic	r3, r3, #-16777216
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2C_ClearITPendingBit, .-I2C_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
