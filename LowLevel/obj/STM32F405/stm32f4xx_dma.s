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
	.file	"stm32f4xx_dma.c"
	.text
	.section	.text.DMA_DeInit,"ax",%progbits
	.align	1
	.global	DMA_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_DeInit, %function
DMA_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #33
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L19
	cmp	r3, r2
	bne	.L2
	ldr	r3, .L19+4
	movs	r2, #61
	str	r2, [r3, #8]
	b	.L18
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+8
	cmp	r3, r2
	bne	.L4
	ldr	r3, .L19+4
	mov	r2, #3904
	str	r2, [r3, #8]
	b	.L18
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+12
	cmp	r3, r2
	bne	.L5
	ldr	r3, .L19+4
	mov	r2, #3997696
	str	r2, [r3, #8]
	b	.L18
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+16
	cmp	r3, r2
	bne	.L6
	ldr	r3, .L19+4
	mov	r2, #255852544
	str	r2, [r3, #8]
	b	.L18
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+20
	cmp	r3, r2
	bne	.L7
	ldr	r3, .L19+4
	ldr	r2, .L19+24
	str	r2, [r3, #12]
	b	.L18
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+28
	cmp	r3, r2
	bne	.L8
	ldr	r3, .L19+4
	ldr	r2, .L19+32
	str	r2, [r3, #12]
	b	.L18
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+36
	cmp	r3, r2
	bne	.L9
	ldr	r3, .L19+4
	ldr	r2, .L19+40
	str	r2, [r3, #12]
	b	.L18
.L9:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+44
	cmp	r3, r2
	bne	.L10
	ldr	r3, .L19+4
	mov	r2, #792723456
	str	r2, [r3, #12]
	b	.L18
.L10:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+48
	cmp	r3, r2
	bne	.L11
	ldr	r3, .L19+52
	movs	r2, #61
	str	r2, [r3, #8]
	b	.L18
.L11:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+56
	cmp	r3, r2
	bne	.L12
	ldr	r3, .L19+52
	mov	r2, #3904
	str	r2, [r3, #8]
	b	.L18
.L12:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+60
	cmp	r3, r2
	bne	.L13
	ldr	r3, .L19+52
	mov	r2, #3997696
	str	r2, [r3, #8]
	b	.L18
.L13:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+64
	cmp	r3, r2
	bne	.L14
	ldr	r3, .L19+52
	mov	r2, #255852544
	str	r2, [r3, #8]
	b	.L18
.L14:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+68
	cmp	r3, r2
	bne	.L15
	ldr	r3, .L19+52
	ldr	r2, .L19+24
	str	r2, [r3, #12]
	b	.L18
.L15:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+72
	cmp	r3, r2
	bne	.L16
	ldr	r3, .L19+52
	ldr	r2, .L19+32
	str	r2, [r3, #12]
	b	.L18
.L16:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+76
	cmp	r3, r2
	bne	.L17
	ldr	r3, .L19+52
	ldr	r2, .L19+40
	str	r2, [r3, #12]
	b	.L18
.L17:
	ldr	r3, [r7, #4]
	ldr	r2, .L19+80
	cmp	r3, r2
	bne	.L18
	ldr	r3, .L19+52
	mov	r2, #792723456
	str	r2, [r3, #12]
.L18:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	1073897488
	.word	1073897472
	.word	1073897512
	.word	1073897536
	.word	1073897560
	.word	1073897584
	.word	536870973
	.word	1073897608
	.word	536874816
	.word	1073897632
	.word	540868608
	.word	1073897656
	.word	1073898512
	.word	1073898496
	.word	1073898536
	.word	1073898560
	.word	1073898584
	.word	1073898608
	.word	1073898632
	.word	1073898656
	.word	1073898680
	.size	DMA_DeInit, .-DMA_DeInit
	.section	.text.DMA_Init,"ax",%progbits
	.align	1
	.global	DMA_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_Init, %function
DMA_Init:
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
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L22
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #56]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #7
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	-266567617
	.size	DMA_Init, .-DMA_Init
	.section	.text.DMA_StructInit,"ax",%progbits
	.align	1
	.global	DMA_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_StructInit, %function
DMA_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_StructInit, .-DMA_StructInit
	.section	.text.DMA_Cmd,"ax",%progbits
	.align	1
	.global	DMA_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_Cmd, %function
DMA_Cmd:
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
	beq	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L28
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L28:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_Cmd, .-DMA_Cmd
	.section	.text.DMA_PeriphIncOffsetSizeConfig,"ax",%progbits
	.align	1
	.global	DMA_PeriphIncOffsetSizeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_PeriphIncOffsetSizeConfig, %function
DMA_PeriphIncOffsetSizeConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #32768
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L32
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #32768
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L32:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_PeriphIncOffsetSizeConfig, .-DMA_PeriphIncOffsetSizeConfig
	.section	.text.DMA_FlowControllerConfig,"ax",%progbits
	.align	1
	.global	DMA_FlowControllerConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_FlowControllerConfig, %function
DMA_FlowControllerConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L36
.L34:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L36:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_FlowControllerConfig, .-DMA_FlowControllerConfig
	.section	.text.DMA_SetCurrDataCounter,"ax",%progbits
	.align	1
	.global	DMA_SetCurrDataCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_SetCurrDataCounter, %function
DMA_SetCurrDataCounter:
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
	str	r2, [r3, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_SetCurrDataCounter, .-DMA_SetCurrDataCounter
	.section	.text.DMA_GetCurrDataCounter,"ax",%progbits
	.align	1
	.global	DMA_GetCurrDataCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetCurrDataCounter, %function
DMA_GetCurrDataCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_GetCurrDataCounter, .-DMA_GetCurrDataCounter
	.section	.text.DMA_DoubleBufferModeConfig,"ax",%progbits
	.align	1
	.global	DMA_DoubleBufferModeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_DoubleBufferModeConfig, %function
DMA_DoubleBufferModeConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r3, #524288
	ldr	r3, [r7, #12]
	str	r2, [r3]
	b	.L42
.L41:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r3, #524288
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L42:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_DoubleBufferModeConfig, .-DMA_DoubleBufferModeConfig
	.section	.text.DMA_DoubleBufferModeCmd,"ax",%progbits
	.align	1
	.global	DMA_DoubleBufferModeCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_DoubleBufferModeCmd, %function
DMA_DoubleBufferModeCmd:
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
	ldr	r3, [r3]
	orr	r2, r3, #262144
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L46
.L44:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #262144
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L46:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_DoubleBufferModeCmd, .-DMA_DoubleBufferModeCmd
	.section	.text.DMA_MemoryTargetConfig,"ax",%progbits
	.align	1
	.global	DMA_MemoryTargetConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_MemoryTargetConfig, %function
DMA_MemoryTargetConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
	b	.L50
.L48:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
.L50:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_MemoryTargetConfig, .-DMA_MemoryTargetConfig
	.section	.text.DMA_GetCurrentMemoryTarget,"ax",%progbits
	.align	1
	.global	DMA_GetCurrentMemoryTarget
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetCurrentMemoryTarget, %function
DMA_GetCurrentMemoryTarget:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L52
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L53
.L52:
	movs	r3, #0
	str	r3, [r7, #12]
.L53:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_GetCurrentMemoryTarget, .-DMA_GetCurrentMemoryTarget
	.section	.text.DMA_GetCmdStatus,"ax",%progbits
	.align	1
	.global	DMA_GetCmdStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetCmdStatus, %function
DMA_GetCmdStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L56
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L57
.L56:
	movs	r3, #0
	strb	r3, [r7, #15]
.L57:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_GetCmdStatus, .-DMA_GetCmdStatus
	.section	.text.DMA_GetFIFOStatus,"ax",%progbits
	.align	1
	.global	DMA_GetFIFOStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetFIFOStatus, %function
DMA_GetFIFOStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	and	r3, r3, #56
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_GetFIFOStatus, .-DMA_GetFIFOStatus
	.section	.text.DMA_GetFlagStatus,"ax",%progbits
	.align	1
	.global	DMA_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetFlagStatus, %function
DMA_GetFlagStatus:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L69
	cmp	r3, r2
	bhi	.L62
	ldr	r3, .L69+4
	str	r3, [r7, #16]
	b	.L63
.L62:
	ldr	r3, .L69+8
	str	r3, [r7, #16]
.L63:
	ldr	r3, [r7]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	b	.L65
.L64:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
.L65:
	ldr	r3, [r7, #12]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L66
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L67
.L66:
	movs	r3, #0
	strb	r3, [r7, #23]
.L67:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L70:
	.align	2
.L69:
	.word	1073898511
	.word	1073897472
	.word	1073898496
	.size	DMA_GetFlagStatus, .-DMA_GetFlagStatus
	.section	.text.DMA_ClearFlag,"ax",%progbits
	.align	1
	.global	DMA_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_ClearFlag, %function
DMA_ClearFlag:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, .L77
	cmp	r3, r2
	bhi	.L72
	ldr	r3, .L77+4
	str	r3, [r7, #12]
	b	.L73
.L72:
	ldr	r3, .L77+8
	str	r3, [r7, #12]
.L73:
	ldr	r3, [r7]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	ldr	r2, [r7, #12]
	str	r3, [r2, #12]
	b	.L76
.L74:
	ldr	r3, [r7]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	ldr	r2, [r7, #12]
	str	r3, [r2, #8]
.L76:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L78:
	.align	2
.L77:
	.word	1073898511
	.word	1073897472
	.word	1073898496
	.size	DMA_ClearFlag, .-DMA_ClearFlag
	.section	.text.DMA_ITConfig,"ax",%progbits
	.align	1
	.global	DMA_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_ITConfig, %function
DMA_ITConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L80
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	orr	r2, r3, #128
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	b	.L80
.L81:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	bic	r2, r3, #128
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
.L80:
	ldr	r3, [r7, #8]
	cmp	r3, #128
	beq	.L84
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	and	r3, r3, #30
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	b	.L84
.L83:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	and	r3, r3, #30
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L84:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA_ITConfig, .-DMA_ITConfig
	.section	.text.DMA_GetITStatus,"ax",%progbits
	.align	1
	.global	DMA_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_GetITStatus, %function
DMA_GetITStatus:
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
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, .L95
	cmp	r3, r2
	bhi	.L86
	ldr	r3, .L95+4
	str	r3, [r7, #16]
	b	.L87
.L86:
	ldr	r3, .L95+8
	str	r3, [r7, #16]
.L87:
	ldr	r3, [r7]
	bic	r3, r3, #-268374016
	bic	r3, r3, #12779715
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r7]
	lsrs	r3, r3, #11
	and	r3, r3, #30
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #8]
	b	.L89
.L88:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	str	r3, [r7, #8]
.L89:
	ldr	r3, [r7]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	b	.L91
.L90:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
.L91:
	ldr	r3, [r7, #12]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L92
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L93
.L92:
	movs	r3, #0
	strb	r3, [r7, #23]
.L93:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L96:
	.align	2
.L95:
	.word	1073898511
	.word	1073897472
	.word	1073898496
	.size	DMA_GetITStatus, .-DMA_GetITStatus
	.section	.text.DMA_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	DMA_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA_ClearITPendingBit, %function
DMA_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, .L103
	cmp	r3, r2
	bhi	.L98
	ldr	r3, .L103+4
	str	r3, [r7, #12]
	b	.L99
.L98:
	ldr	r3, .L103+8
	str	r3, [r7, #12]
.L99:
	ldr	r3, [r7]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	ldr	r2, [r7, #12]
	str	r3, [r2, #12]
	b	.L102
.L100:
	ldr	r3, [r7]
	bic	r3, r3, #-268374016
	bic	r3, r3, #8519810
	ldr	r2, [r7, #12]
	str	r3, [r2, #8]
.L102:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L104:
	.align	2
.L103:
	.word	1073898511
	.word	1073897472
	.word	1073898496
	.size	DMA_ClearITPendingBit, .-DMA_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
