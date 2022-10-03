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
	.file	"stm32f4xx_usart.c"
	.text
	.section	.text.USART_DeInit,"ax",%progbits
	.align	1
	.global	USART_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_DeInit, %function
USART_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L11
	cmp	r3, r2
	bne	.L2
	movs	r1, #1
	movs	r0, #16
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	movs	r0, #16
	bl	RCC_APB2PeriphResetCmd
	b	.L10
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+4
	cmp	r3, r2
	bne	.L4
	movs	r1, #1
	mov	r0, #131072
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #131072
	bl	RCC_APB1PeriphResetCmd
	b	.L10
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+8
	cmp	r3, r2
	bne	.L5
	movs	r1, #1
	mov	r0, #262144
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #262144
	bl	RCC_APB1PeriphResetCmd
	b	.L10
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+12
	cmp	r3, r2
	bne	.L6
	movs	r1, #1
	mov	r0, #524288
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #524288
	bl	RCC_APB1PeriphResetCmd
	b	.L10
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+16
	cmp	r3, r2
	bne	.L7
	movs	r1, #1
	mov	r0, #1048576
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #1048576
	bl	RCC_APB1PeriphResetCmd
	b	.L10
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+20
	cmp	r3, r2
	bne	.L8
	movs	r1, #1
	movs	r0, #32
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	movs	r0, #32
	bl	RCC_APB2PeriphResetCmd
	b	.L10
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+24
	cmp	r3, r2
	bne	.L9
	movs	r1, #1
	mov	r0, #1073741824
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #1073741824
	bl	RCC_APB1PeriphResetCmd
	b	.L10
.L9:
	ldr	r3, [r7, #4]
	ldr	r2, .L11+28
	cmp	r3, r2
	bne	.L10
	movs	r1, #1
	mov	r0, #-2147483648
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #-2147483648
	bl	RCC_APB1PeriphResetCmd
.L10:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	1073811456
	.word	1073759232
	.word	1073760256
	.word	1073761280
	.word	1073762304
	.word	1073812480
	.word	1073772544
	.word	1073773568
	.size	USART_DeInit, .-USART_DeInit
	.section	.text.USART_Init,"ax",%progbits
	.align	1
	.global	USART_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_Init, %function
USART_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	bic	r3, r3, #12288
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	mov	r2, r3
	ldr	r3, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	bic	r3, r3, #5632
	bic	r3, r3, #12
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	orrs	r3, r3, r2
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	bic	r3, r3, #768
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	add	r3, r7, #8
	mov	r0, r3
	bl	RCC_GetClocksFreq
	ldr	r3, [r7, #4]
	ldr	r2, .L21
	cmp	r3, r2
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r2, .L21+4
	cmp	r3, r2
	bne	.L15
.L14:
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
	b	.L16
.L15:
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
.L16:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	bge	.L17
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	str	r3, [r7, #28]
	b	.L18
.L17:
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	str	r3, [r7, #28]
.L18:
	ldr	r3, [r7, #28]
	ldr	r2, .L21+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	lsls	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #4
	movs	r2, #100
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	bge	.L19
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	adds	r3, r3, #50
	ldr	r2, .L21+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r3, r3, #7
	ldr	r2, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	b	.L20
.L19:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L21+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r3, r3, #15
	ldr	r2, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #36]
.L20:
	ldr	r3, [r7, #36]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	1073811456
	.word	1073812480
	.word	1374389535
	.size	USART_Init, .-USART_Init
	.section	.text.USART_StructInit,"ax",%progbits
	.align	1
	.global	USART_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_StructInit, %function
USART_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #9600
	str	r2, [r3]
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
	movs	r2, #12
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
	.size	USART_StructInit, .-USART_StructInit
	.section	.text.USART_ClockInit,"ax",%progbits
	.align	1
	.global	USART_ClockInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ClockInit, %function
USART_ClockInit:
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
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3840
	str	r3, [r7, #12]
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
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ClockInit, .-USART_ClockInit
	.section	.text.USART_ClockStructInit,"ax",%progbits
	.align	1
	.global	USART_ClockStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ClockStructInit, %function
USART_ClockStructInit:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ClockStructInit, .-USART_ClockStructInit
	.section	.text.USART_Cmd,"ax",%progbits
	.align	1
	.global	USART_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_Cmd, %function
USART_Cmd:
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
	beq	.L27
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L29
.L27:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
.L29:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_Cmd, .-USART_Cmd
	.section	.text.USART_SetPrescaler,"ax",%progbits
	.align	1
	.global	USART_SetPrescaler
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SetPrescaler, %function
USART_SetPrescaler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #255
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r2, r3
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
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
	.size	USART_SetPrescaler, .-USART_SetPrescaler
	.section	.text.USART_OverSampling8Cmd,"ax",%progbits
	.align	1
	.global	USART_OverSampling8Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_OverSampling8Cmd, %function
USART_OverSampling8Cmd:
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
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L34
.L32:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	ubfx	r3, r3, #0, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
.L34:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_OverSampling8Cmd, .-USART_OverSampling8Cmd
	.section	.text.USART_OneBitMethodCmd,"ax",%progbits
	.align	1
	.global	USART_OneBitMethodCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_OneBitMethodCmd, %function
USART_OneBitMethodCmd:
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
	beq	.L36
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L38
.L36:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L38:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_OneBitMethodCmd, .-USART_OneBitMethodCmd
	.section	.text.USART_SendData,"ax",%progbits
	.align	1
	.global	USART_SendData
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SendData, %function
USART_SendData:
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
	ubfx	r3, r3, #0, #9
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_SendData, .-USART_SendData
	.section	.text.USART_ReceiveData,"ax",%progbits
	.align	1
	.global	USART_ReceiveData
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ReceiveData, %function
USART_ReceiveData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ReceiveData, .-USART_ReceiveData
	.section	.text.USART_SetAddress,"ax",%progbits
	.align	1
	.global	USART_SetAddress
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SetAddress, %function
USART_SetAddress:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #15
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_SetAddress, .-USART_SetAddress
	.section	.text.USART_ReceiverWakeUpCmd,"ax",%progbits
	.align	1
	.global	USART_ReceiverWakeUpCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ReceiverWakeUpCmd, %function
USART_ReceiverWakeUpCmd:
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
	orr	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	b	.L46
.L44:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2
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
	.size	USART_ReceiverWakeUpCmd, .-USART_ReceiverWakeUpCmd
	.section	.text.USART_WakeUpConfig,"ax",%progbits
	.align	1
	.global	USART_WakeUpConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_WakeUpConfig, %function
USART_WakeUpConfig:
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
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2048
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_WakeUpConfig, .-USART_WakeUpConfig
	.section	.text.USART_LINBreakDetectLengthConfig,"ax",%progbits
	.align	1
	.global	USART_LINBreakDetectLengthConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_LINBreakDetectLengthConfig, %function
USART_LINBreakDetectLengthConfig:
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
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #32
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_LINBreakDetectLengthConfig, .-USART_LINBreakDetectLengthConfig
	.section	.text.USART_LINCmd,"ax",%progbits
	.align	1
	.global	USART_LINCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_LINCmd, %function
USART_LINCmd:
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
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
	b	.L52
.L50:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16384
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #16]	@ movhi
.L52:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_LINCmd, .-USART_LINCmd
	.section	.text.USART_SendBreak,"ax",%progbits
	.align	1
	.global	USART_SendBreak
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SendBreak, %function
USART_SendBreak:
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
	orr	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_SendBreak, .-USART_SendBreak
	.section	.text.USART_HalfDuplexCmd,"ax",%progbits
	.align	1
	.global	USART_HalfDuplexCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_HalfDuplexCmd, %function
USART_HalfDuplexCmd:
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
	beq	.L55
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L57
.L55:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L57:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_HalfDuplexCmd, .-USART_HalfDuplexCmd
	.section	.text.USART_SetGuardTime,"ax",%progbits
	.align	1
	.global	USART_SetGuardTime
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SetGuardTime, %function
USART_SetGuardTime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r3, r3
	uxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #24]	@ movhi
	uxth	r2, r3
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	uxth	r3, r3
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
	.size	USART_SetGuardTime, .-USART_SetGuardTime
	.section	.text.USART_SmartCardCmd,"ax",%progbits
	.align	1
	.global	USART_SmartCardCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SmartCardCmd, %function
USART_SmartCardCmd:
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
	beq	.L60
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #32
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L62
.L60:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #32
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L62:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_SmartCardCmd, .-USART_SmartCardCmd
	.section	.text.USART_SmartCardNACKCmd,"ax",%progbits
	.align	1
	.global	USART_SmartCardNACKCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_SmartCardNACKCmd, %function
USART_SmartCardNACKCmd:
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
	beq	.L64
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L66
.L64:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L66:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_SmartCardNACKCmd, .-USART_SmartCardNACKCmd
	.section	.text.USART_IrDAConfig,"ax",%progbits
	.align	1
	.global	USART_IrDAConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_IrDAConfig, %function
USART_IrDAConfig:
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
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_IrDAConfig, .-USART_IrDAConfig
	.section	.text.USART_IrDACmd,"ax",%progbits
	.align	1
	.global	USART_IrDACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_IrDACmd, %function
USART_IrDACmd:
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
	beq	.L69
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	orr	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L71
.L69:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	bic	r3, r3, #2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L71:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_IrDACmd, .-USART_IrDACmd
	.section	.text.USART_DMACmd,"ax",%progbits
	.align	1
	.global	USART_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_DMACmd, %function
USART_DMACmd:
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
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
	b	.L75
.L73:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	mvns	r3, r3
	uxth	r3, r3
	ands	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #20]	@ movhi
.L75:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_DMACmd, .-USART_DMACmd
	.section	.text.USART_ITConfig,"ax",%progbits
	.align	1
	.global	USART_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ITConfig, %function
USART_ITConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r3, r3
	lsrs	r3, r3, #5
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldrh	r3, [r7, #2]
	and	r3, r3, #31
	str	r3, [r7, #12]
	movs	r2, #1
	ldr	r3, [r7, #12]
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L77
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	str	r3, [r7, #20]
	b	.L78
.L77:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	bne	.L79
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	str	r3, [r7, #20]
	b	.L78
.L79:
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	str	r3, [r7, #20]
.L78:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #20]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	orrs	r2, r2, r1
	str	r2, [r3]
	b	.L82
.L80:
	ldr	r3, [r7, #20]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	mvns	r2, r3
	ldr	r3, [r7, #20]
	ands	r2, r2, r1
	str	r2, [r3]
.L82:
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ITConfig, .-USART_ITConfig
	.section	.text.USART_GetFlagStatus,"ax",%progbits
	.align	1
	.global	USART_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_GetFlagStatus, %function
USART_GetFlagStatus:
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
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldrh	r3, [r7, #2]	@ movhi
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L84
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L85
.L84:
	movs	r3, #0
	strb	r3, [r7, #15]
.L85:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_GetFlagStatus, .-USART_GetFlagStatus
	.section	.text.USART_ClearFlag,"ax",%progbits
	.align	1
	.global	USART_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ClearFlag, %function
USART_ClearFlag:
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
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ClearFlag, .-USART_ClearFlag
	.section	.text.USART_GetITStatus,"ax",%progbits
	.align	1
	.global	USART_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_GetITStatus, %function
USART_GetITStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	strb	r3, [r7, #19]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r3, r3
	lsrs	r3, r3, #5
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldrh	r3, [r7, #2]
	and	r3, r3, #31
	str	r3, [r7, #20]
	movs	r2, #1
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L89
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	b	.L90
.L89:
	ldr	r3, [r7, #8]
	cmp	r3, #2
	bne	.L91
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #16]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	b	.L90
.L91:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #20]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #20]
.L90:
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	str	r3, [r7, #12]
	movs	r2, #1
	ldr	r3, [r7, #12]
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L92
	movs	r3, #1
	strb	r3, [r7, #19]
	b	.L93
.L92:
	movs	r3, #0
	strb	r3, [r7, #19]
.L93:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_GetITStatus, .-USART_GetITStatus
	.section	.text.USART_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	USART_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	USART_ClearITPendingBit, %function
USART_ClearITPendingBit:
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
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	movs	r2, #1
	lsl	r3, r2, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]	@ movhi
	mvns	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USART_ClearITPendingBit, .-USART_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
