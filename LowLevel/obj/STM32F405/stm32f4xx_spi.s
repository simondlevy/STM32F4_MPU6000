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
	.file	"stm32f4xx_spi.c"
	.text
	.section	.text.SPI_I2S_DeInit,"ax",%progbits
	.align	1
	.global	SPI_I2S_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_DeInit, %function
SPI_I2S_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L9
	cmp	r3, r2
	bne	.L2
	movs	r1, #1
	mov	r0, #4096
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #4096
	bl	RCC_APB2PeriphResetCmd
	b	.L8
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L9+4
	cmp	r3, r2
	bne	.L4
	movs	r1, #1
	mov	r0, #16384
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #16384
	bl	RCC_APB1PeriphResetCmd
	b	.L8
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L9+8
	cmp	r3, r2
	bne	.L5
	movs	r1, #1
	mov	r0, #32768
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #32768
	bl	RCC_APB1PeriphResetCmd
	b	.L8
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, .L9+12
	cmp	r3, r2
	bne	.L6
	movs	r1, #1
	mov	r0, #8192
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #8192
	bl	RCC_APB2PeriphResetCmd
	b	.L8
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L9+16
	cmp	r3, r2
	bne	.L7
	movs	r1, #1
	mov	r0, #1048576
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #1048576
	bl	RCC_APB2PeriphResetCmd
	b	.L8
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, .L9+20
	cmp	r3, r2
	bne	.L8
	movs	r1, #1
	mov	r0, #2097152
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #2097152
	bl	RCC_APB2PeriphResetCmd
.L8:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	1073819648
	.word	1073756160
	.word	1073757184
	.word	1073820672
	.word	1073827840
	.word	1073828864
	.size	SPI_I2S_DeInit, .-SPI_I2S_DeInit
	.section	.text.SPI_Init,"ax",%progbits
	.align	1
	.global	SPI_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_Init, %function
SPI_Init:
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
	ldrh	r3, [r7, #14]	@ movhi
	and	r3, r3, #12352
	strh	r3, [r7, #14]	@ movhi
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
	ldr	r3, [r7]
	ldrh	r3, [r3, #14]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #16]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_Init, .-SPI_Init
	.section	.text.I2S_Init,"ax",%progbits
	.align	1
	.global	I2S_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	I2S_Init, %function
I2S_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #2
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #36]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #34]	@ movhi
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4016
	bic	r3, r3, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #2
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L13
	movs	r3, #0
	strh	r3, [r7, #36]	@ movhi
	movs	r3, #2
	strh	r3, [r7, #38]	@ movhi
	b	.L14
.L13:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L15
	movs	r3, #1
	strh	r3, [r7, #34]	@ movhi
	b	.L16
.L15:
	movs	r3, #2
	strh	r3, [r7, #34]	@ movhi
.L16:
	ldr	r3, .L24
	ldr	r3, [r3, #8]
	and	r3, r3, #8388608
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L24
	ldr	r3, [r3, #8]
	ldr	r2, .L24
	bic	r3, r3, #8388608
	str	r3, [r2, #8]
.L17:
	ldr	r3, .L24
	ldr	r3, [r3, #132]
	lsrs	r3, r3, #6
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #12]
	ldr	r3, .L24
	ldr	r3, [r3, #132]
	lsrs	r3, r3, #28
	and	r3, r3, #7
	str	r3, [r7, #8]
	ldr	r3, .L24
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r3, .L24
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	cmp	r3, #4194304
	bne	.L18
	ldr	r2, .L24+4
	ldr	r3, [r7, #16]
	udiv	r3, r2, r3
	ldr	r2, [r7, #12]
	mul	r2, r3, r2
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	str	r3, [r7, #24]
	b	.L19
.L18:
	ldr	r2, .L24+8
	ldr	r3, [r7, #16]
	udiv	r3, r2, r3
	ldr	r2, [r7, #12]
	mul	r2, r3, r2
	ldr	r3, [r7, #8]
	udiv	r3, r2, r3
	str	r3, [r7, #24]
.L19:
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #512
	bne	.L20
	ldr	r3, [r7, #24]
	lsrs	r2, r3, #8
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	udiv	r3, r2, r3
	uxth	r3, r3
	adds	r3, r3, #5
	uxth	r3, r3
	str	r3, [r7, #28]
	b	.L21
.L20:
	ldrh	r3, [r7, #34]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #24]
	udiv	r2, r3, r2
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	udiv	r3, r2, r3
	uxth	r3, r3
	adds	r3, r3, #5
	uxth	r3, r3
	str	r3, [r7, #28]
.L21:
	ldr	r3, [r7, #28]
	ldr	r2, .L24+12
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	uxth	r3, r3
	and	r3, r3, #1
	strh	r3, [r7, #36]	@ movhi
	ldrh	r3, [r7, #36]
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	lsrs	r3, r3, #1
	strh	r3, [r7, #38]	@ movhi
	ldrh	r3, [r7, #36]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [r7, #36]	@ movhi
.L14:
	ldrh	r3, [r7, #38]
	cmp	r3, #1
	bls	.L22
	ldrh	r3, [r7, #38]
	cmp	r3, #255
	bls	.L23
.L22:
	movs	r3, #2
	strh	r3, [r7, #38]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #36]	@ movhi
.L23:
	ldr	r3, [r7]
	ldrh	r2, [r3, #6]
	ldrh	r3, [r7, #36]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #38]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r1, [r3, #2]
	ldr	r3, [r7]
	ldrh	r0, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	orrs	r3, r3, r0
	uxth	r3, r3
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #22]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #2048
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073887232
	.word	8000000
	.word	16000000
	.word	-858993459
	.size	I2S_Init, .-I2S_Init
	.section	.text.SPI_StructInit,"ax",%progbits
	.align	1
	.global	SPI_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_StructInit, %function
SPI_StructInit:
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
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #7
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_StructInit, .-SPI_StructInit
	.section	.text.I2S_StructInit,"ax",%progbits
	.align	1
	.global	I2S_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	I2S_StructInit, %function
I2S_StructInit:
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
	movs	r2, #2
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2S_StructInit, .-I2S_StructInit
	.section	.text.SPI_Cmd,"ax",%progbits
	.align	1
	.global	SPI_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_Cmd, %function
SPI_Cmd:
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
	beq	.L29
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #64
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L31
.L29:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #64
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L31:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_Cmd, .-SPI_Cmd
	.section	.text.I2S_Cmd,"ax",%progbits
	.align	1
	.global	I2S_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	I2S_Cmd, %function
I2S_Cmd:
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
	beq	.L33
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #1024
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	b	.L35
.L33:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #1024
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
.L35:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2S_Cmd, .-I2S_Cmd
	.section	.text.SPI_DataSizeConfig,"ax",%progbits
	.align	1
	.global	SPI_DataSizeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_DataSizeConfig, %function
SPI_DataSizeConfig:
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
	bic	r3, r3, #2048
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
	.size	SPI_DataSizeConfig, .-SPI_DataSizeConfig
	.section	.text.SPI_BiDirectionalLineConfig,"ax",%progbits
	.align	1
	.global	SPI_BiDirectionalLineConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_BiDirectionalLineConfig, %function
SPI_BiDirectionalLineConfig:
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
	bne	.L38
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L40
.L38:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L40:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_BiDirectionalLineConfig, .-SPI_BiDirectionalLineConfig
	.section	.text.SPI_NSSInternalSoftwareConfig,"ax",%progbits
	.align	1
	.global	SPI_NSSInternalSoftwareConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_NSSInternalSoftwareConfig, %function
SPI_NSSInternalSoftwareConfig:
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
	movw	r2, #65279
	cmp	r3, r2
	beq	.L42
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L44
.L42:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #256
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L44:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_NSSInternalSoftwareConfig, .-SPI_NSSInternalSoftwareConfig
	.section	.text.SPI_SSOutputCmd,"ax",%progbits
	.align	1
	.global	SPI_SSOutputCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_SSOutputCmd, %function
SPI_SSOutputCmd:
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
	beq	.L46
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L48
.L46:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L48:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_SSOutputCmd, .-SPI_SSOutputCmd
	.section	.text.SPI_TIModeCmd,"ax",%progbits
	.align	1
	.global	SPI_TIModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_TIModeCmd, %function
SPI_TIModeCmd:
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
	beq	.L50
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L52
.L50:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L52:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_TIModeCmd, .-SPI_TIModeCmd
	.section	.text.I2S_FullDuplexConfig,"ax",%progbits
	.align	1
	.global	I2S_FullDuplexConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	I2S_FullDuplexConfig, %function
I2S_FullDuplexConfig:
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
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4016
	bic	r3, r3, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #2
	strh	r2, [r3, #32]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #28]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #512
	beq	.L54
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L55
.L54:
	mov	r3, #256
	strh	r3, [r7, #14]	@ movhi
	b	.L56
.L55:
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #768
	beq	.L57
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r3, #256
	bne	.L56
.L57:
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
.L56:
	ldr	r3, [r7]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7]
	ldrh	r1, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	orrs	r3, r3, r1
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	uxth	r3, r3
	orr	r3, r3, #2048
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #12]	@ movhi
	strh	r2, [r3, #28]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	I2S_FullDuplexConfig, .-I2S_FullDuplexConfig
	.section	.text.SPI_I2S_ReceiveData,"ax",%progbits
	.align	1
	.global	SPI_I2S_ReceiveData
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_ReceiveData, %function
SPI_I2S_ReceiveData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_ReceiveData, .-SPI_I2S_ReceiveData
	.section	.text.SPI_I2S_SendData,"ax",%progbits
	.align	1
	.global	SPI_I2S_SendData
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_SendData, %function
SPI_I2S_SendData:
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
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_SendData, .-SPI_I2S_SendData
	.section	.text.SPI_CalculateCRC,"ax",%progbits
	.align	1
	.global	SPI_CalculateCRC
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_CalculateCRC, %function
SPI_CalculateCRC:
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
	beq	.L62
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	b	.L64
.L62:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
.L64:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_CalculateCRC, .-SPI_CalculateCRC
	.section	.text.SPI_TransmitCRC,"ax",%progbits
	.align	1
	.global	SPI_TransmitCRC
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_TransmitCRC, %function
SPI_TransmitCRC:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_TransmitCRC, .-SPI_TransmitCRC
	.section	.text.SPI_GetCRC,"ax",%progbits
	.align	1
	.global	SPI_GetCRC
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_GetCRC, %function
SPI_GetCRC:
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
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L67
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	b	.L68
.L67:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	strh	r3, [r7, #14]	@ movhi
.L68:
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_GetCRC, .-SPI_GetCRC
	.section	.text.SPI_GetCRCPolynomial,"ax",%progbits
	.align	1
	.global	SPI_GetCRCPolynomial
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_GetCRCPolynomial, %function
SPI_GetCRCPolynomial:
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
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_GetCRCPolynomial, .-SPI_GetCRCPolynomial
	.section	.text.SPI_I2S_DMACmd,"ax",%progbits
	.align	1
	.global	SPI_I2S_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_DMACmd, %function
SPI_I2S_DMACmd:
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
	beq	.L73
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L75
.L73:
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
.L75:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_DMACmd, .-SPI_I2S_DMACmd
	.section	.text.SPI_I2S_ITConfig,"ax",%progbits
	.align	1
	.global	SPI_I2S_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_ITConfig, %function
SPI_I2S_ITConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #12]	@ movhi
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	b	.L79
.L77:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
.L79:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_ITConfig, .-SPI_I2S_ITConfig
	.section	.text.SPI_I2S_GetFlagStatus,"ax",%progbits
	.align	1
	.global	SPI_I2S_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_GetFlagStatus, %function
SPI_I2S_GetFlagStatus:
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
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L81
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L82
.L81:
	movs	r3, #0
	strb	r3, [r7, #15]
.L82:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_GetFlagStatus, .-SPI_I2S_GetFlagStatus
	.section	.text.SPI_I2S_ClearFlag,"ax",%progbits
	.align	1
	.global	SPI_I2S_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_ClearFlag, %function
SPI_I2S_ClearFlag:
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
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_ClearFlag, .-SPI_I2S_ClearFlag
	.section	.text.SPI_I2S_GetITStatus,"ax",%progbits
	.align	1
	.global	SPI_I2S_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_GetITStatus, %function
SPI_I2S_GetITStatus:
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
	strb	r3, [r7, #15]
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #8]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #15
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #12]	@ movhi
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #10]	@ movhi
	ands	r3, r3, r2
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #12]	@ movhi
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L86
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L86
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L87
.L86:
	movs	r3, #0
	strb	r3, [r7, #15]
.L87:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_GetITStatus, .-SPI_I2S_GetITStatus
	.section	.text.SPI_I2S_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	SPI_I2S_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	SPI_I2S_ClearITPendingBit, %function
SPI_I2S_ClearITPendingBit:
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
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #15
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SPI_I2S_ClearITPendingBit, .-SPI_I2S_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
