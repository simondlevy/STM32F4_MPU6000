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
	.file	"stm32f4xx_gpio.c"
	.text
	.section	.text.GPIO_DeInit,"ax",%progbits
	.align	1
	.global	GPIO_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_DeInit, %function
GPIO_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L14
	cmp	r3, r2
	bne	.L2
	movs	r1, #1
	movs	r0, #1
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #1
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+4
	cmp	r3, r2
	bne	.L4
	movs	r1, #1
	movs	r0, #2
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #2
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+8
	cmp	r3, r2
	bne	.L5
	movs	r1, #1
	movs	r0, #4
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #4
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+12
	cmp	r3, r2
	bne	.L6
	movs	r1, #1
	movs	r0, #8
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #8
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+16
	cmp	r3, r2
	bne	.L7
	movs	r1, #1
	movs	r0, #16
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #16
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+20
	cmp	r3, r2
	bne	.L8
	movs	r1, #1
	movs	r0, #32
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #32
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+24
	cmp	r3, r2
	bne	.L9
	movs	r1, #1
	movs	r0, #64
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #64
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L9:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+28
	cmp	r3, r2
	bne	.L10
	movs	r1, #1
	movs	r0, #128
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	movs	r0, #128
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L10:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+32
	cmp	r3, r2
	bne	.L11
	movs	r1, #1
	mov	r0, #256
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #256
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L11:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+36
	cmp	r3, r2
	bne	.L12
	movs	r1, #1
	mov	r0, #512
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #512
	bl	RCC_AHB1PeriphResetCmd
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	ldr	r2, .L14+40
	cmp	r3, r2
	bne	.L13
	movs	r1, #1
	mov	r0, #1024
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #1024
	bl	RCC_AHB1PeriphResetCmd
.L13:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1073876992
	.word	1073878016
	.word	1073879040
	.word	1073880064
	.word	1073881088
	.word	1073882112
	.word	1073883136
	.size	GPIO_DeInit, .-GPIO_DeInit
	.section	.text.GPIO_Init,"ax",%progbits
	.align	1
	.global	GPIO_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_Init, %function
GPIO_Init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L17
.L21:
	movs	r2, #1
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	movs	r1, #3
	lsl	r3, r1, r3
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L19
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L20
.L19:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	movs	r1, #3
	lsl	r3, r1, r3
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	uxth	r3, r3
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	ldrb	r2, [r2, #6]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [r7, #20]
	uxth	r2, r2
	lsl	r2, r1, r2
	uxth	r2, r2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L20:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	uxth	r3, r3
	lsls	r3, r3, #1
	movs	r1, #3
	lsl	r3, r1, r3
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L18:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L17:
	ldr	r3, [r7, #20]
	cmp	r3, #15
	bls	.L21
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_Init, .-GPIO_Init
	.section	.text.GPIO_StructInit,"ax",%progbits
	.align	1
	.global	GPIO_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_StructInit, %function
GPIO_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movw	r2, #65535
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #6]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #7]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_StructInit, .-GPIO_StructInit
	.section	.text.GPIO_PinLockConfig,"ax",%progbits
	.align	1
	.global	GPIO_PinLockConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_PinLockConfig, %function
GPIO_PinLockConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, #65536
	str	r3, [r7, #12]
	ldrh	r2, [r7, #2]
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldrh	r2, [r7, #2]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_PinLockConfig, .-GPIO_PinLockConfig
	.section	.text.GPIO_ReadInputDataBit,"ax",%progbits
	.align	1
	.global	GPIO_ReadInputDataBit
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ReadInputDataBit, %function
GPIO_ReadInputDataBit:
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
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #2]
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
	.size	GPIO_ReadInputDataBit, .-GPIO_ReadInputDataBit
	.section	.text.GPIO_ReadInputData,"ax",%progbits
	.align	1
	.global	GPIO_ReadInputData
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ReadInputData, %function
GPIO_ReadInputData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_ReadInputData, .-GPIO_ReadInputData
	.section	.text.GPIO_ReadOutputDataBit,"ax",%progbits
	.align	1
	.global	GPIO_ReadOutputDataBit
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ReadOutputDataBit, %function
GPIO_ReadOutputDataBit:
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
	ldr	r2, [r3, #20]
	ldrh	r3, [r7, #2]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L31
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L32
.L31:
	movs	r3, #0
	strb	r3, [r7, #15]
.L32:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_ReadOutputDataBit, .-GPIO_ReadOutputDataBit
	.section	.text.GPIO_ReadOutputData,"ax",%progbits
	.align	1
	.global	GPIO_ReadOutputData
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ReadOutputData, %function
GPIO_ReadOutputData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_ReadOutputData, .-GPIO_ReadOutputData
	.section	.text.GPIO_SetBits,"ax",%progbits
	.align	1
	.global	GPIO_SetBits
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_SetBits, %function
GPIO_SetBits:
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
	strh	r2, [r3, #24]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_SetBits, .-GPIO_SetBits
	.section	.text.GPIO_ResetBits,"ax",%progbits
	.align	1
	.global	GPIO_ResetBits
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ResetBits, %function
GPIO_ResetBits:
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
	strh	r2, [r3, #26]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_ResetBits, .-GPIO_ResetBits
	.section	.text.GPIO_WriteBit,"ax",%progbits
	.align	1
	.global	GPIO_WriteBit
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_WriteBit, %function
GPIO_WriteBit:
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
	beq	.L39
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	b	.L41
.L39:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #26]	@ movhi
.L41:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_WriteBit, .-GPIO_WriteBit
	.section	.text.GPIO_Write,"ax",%progbits
	.align	1
	.global	GPIO_Write
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_Write, %function
GPIO_Write:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldrh	r2, [r7, #2]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_Write, .-GPIO_Write
	.section	.text.GPIO_ToggleBits,"ax",%progbits
	.align	1
	.global	GPIO_ToggleBits
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_ToggleBits, %function
GPIO_ToggleBits:
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
	ldr	r2, [r3, #20]
	ldrh	r3, [r7, #2]
	eors	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_ToggleBits, .-GPIO_ToggleBits
	.section	.text.GPIO_PinAFConfig,"ax",%progbits
	.align	1
	.global	GPIO_PinAFConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	GPIO_PinAFConfig, %function
GPIO_PinAFConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrh	r3, [r7, #2]
	and	r3, r3, #7
	lsls	r3, r3, #2
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r2, r2, #8
	ldr	r2, [r3, r2, lsl #2]
	ldrh	r3, [r7, #2]
	and	r3, r3, #7
	lsls	r3, r3, #2
	movs	r1, #15
	lsl	r3, r1, r3
	mvns	r3, r3
	ldrh	r1, [r7, #2]
	lsrs	r1, r1, #3
	uxth	r1, r1
	mov	r0, r1
	and	r1, r2, r3
	ldr	r3, [r7, #4]
	add	r2, r0, #8
	str	r1, [r3, r2, lsl #2]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r2, r2, #8
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	adds	r2, r2, #8
	ldr	r1, [r7, #8]
	str	r1, [r3, r2, lsl #2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	GPIO_PinAFConfig, .-GPIO_PinAFConfig
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
