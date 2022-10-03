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
	.file	"stm32f4xx_dma2d.c"
	.text
	.section	.text.DMA2D_DeInit,"ax",%progbits
	.align	1
	.global	DMA2D_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_DeInit, %function
DMA2D_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #8388608
	bl	RCC_AHB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #8388608
	bl	RCC_AHB1PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	DMA2D_DeInit, .-DMA2D_DeInit
	.section	.text.DMA2D_Init,"ax",%progbits
	.align	1
	.global	DMA2D_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_Init, %function
DMA2D_Init:
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
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, .L8
	bic	r3, r3, #196611
	bic	r3, r3, #7936
	str	r3, [r2]
	ldr	r3, .L8
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L8
	orrs	r3, r3, r2
	str	r3, [r1]
	ldr	r3, .L8
	ldr	r3, [r3, #52]
	ldr	r2, .L8
	bic	r3, r3, #7
	str	r3, [r2, #52]
	ldr	r3, .L8
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L8
	orrs	r3, r3, r2
	str	r3, [r1, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #24
	str	r3, [r7, #12]
	b	.L4
.L3:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #5
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #11
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L6:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	bne	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #5
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #10
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #15
	str	r3, [r7, #12]
	b	.L4
.L7:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #12
	str	r3, [r7, #12]
.L4:
	ldr	r3, .L8
	ldr	r2, [r3, #56]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #16]
	orrs	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r1, r1, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r1
	ldr	r1, .L8
	orrs	r3, r3, r2
	str	r3, [r1, #56]
	ldr	r2, .L8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r2, #60]
	ldr	r3, .L8
	ldr	r3, [r3, #64]
	ldr	r2, .L8
	bic	r3, r3, #16320
	bic	r3, r3, #63
	str	r3, [r2, #64]
	ldr	r3, .L8
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r1, .L8
	orrs	r3, r3, r2
	str	r3, [r1, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, .L8
	ldr	r3, [r3, #68]
	ldr	r2, .L8
	and	r3, r3, #-1073741824
	str	r3, [r2, #68]
	ldr	r3, .L8
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #32]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r1
	ldr	r1, .L8
	orrs	r3, r3, r2
	str	r3, [r1, #68]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073917952
	.size	DMA2D_Init, .-DMA2D_Init
	.section	.text.DMA2D_StructInit,"ax",%progbits
	.align	1
	.global	DMA2D_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_StructInit, %function
DMA2D_StructInit:
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
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA2D_StructInit, .-DMA2D_StructInit
	.section	.text.DMA2D_StartTransfer,"ax",%progbits
	.align	1
	.global	DMA2D_StartTransfer
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_StartTransfer, %function
DMA2D_StartTransfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L12
	ldr	r3, [r3]
	ldr	r2, .L12
	orr	r3, r3, #1
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073917952
	.size	DMA2D_StartTransfer, .-DMA2D_StartTransfer
	.section	.text.DMA2D_AbortTransfer,"ax",%progbits
	.align	1
	.global	DMA2D_AbortTransfer
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_AbortTransfer, %function
DMA2D_AbortTransfer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r2, .L15
	orr	r3, r3, #4
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073917952
	.size	DMA2D_AbortTransfer, .-DMA2D_AbortTransfer
	.section	.text.DMA2D_Suspend,"ax",%progbits
	.align	1
	.global	DMA2D_Suspend
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_Suspend, %function
DMA2D_Suspend:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L21
	ldr	r3, [r3]
	ldr	r2, .L21
	orr	r3, r3, #2
	str	r3, [r2]
	b	.L20
.L18:
	ldr	r3, .L21
	ldr	r3, [r3]
	ldr	r2, .L21
	bic	r3, r3, #2
	str	r3, [r2]
.L20:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073917952
	.size	DMA2D_Suspend, .-DMA2D_Suspend
	.section	.text.DMA2D_FGConfig,"ax",%progbits
	.align	1
	.global	DMA2D_FGConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_FGConfig, %function
DMA2D_FGConfig:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r2, .L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r2, #12]
	ldr	r3, .L24
	ldr	r3, [r3, #16]
	ldr	r2, .L24
	bic	r3, r3, #16320
	bic	r3, r3, #63
	str	r3, [r2, #16]
	ldr	r3, .L24
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L24
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L24
	ldr	r2, [r3, #28]
	ldr	r1, .L24
	ldr	r3, .L24+4
	ands	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #8
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #24
	str	r3, [r7, #16]
	ldr	r3, .L24
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #28]
	orrs	r1, r1, r3
	ldr	r3, [r7, #24]
	orrs	r1, r1, r3
	ldr	r3, [r7, #20]
	orrs	r1, r1, r3
	ldr	r3, [r7, #16]
	orrs	r3, r3, r1
	ldr	r1, .L24
	orrs	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, .L24
	ldr	r3, [r3, #32]
	ldr	r2, .L24
	and	r3, r3, #-16777216
	str	r3, [r2, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, .L24
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #12]
	orrs	r1, r1, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r1
	ldr	r1, .L24
	orrs	r3, r3, r2
	str	r3, [r1, #32]
	ldr	r2, .L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r2, #44]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073917952
	.word	16515264
	.size	DMA2D_FGConfig, .-DMA2D_FGConfig
	.section	.text.DMA2D_FG_StructInit,"ax",%progbits
	.align	1
	.global	DMA2D_FG_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_FG_StructInit, %function
DMA2D_FG_StructInit:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA2D_FG_StructInit, .-DMA2D_FG_StructInit
	.section	.text.DMA2D_BGConfig,"ax",%progbits
	.align	1
	.global	DMA2D_BGConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_BGConfig, %function
DMA2D_BGConfig:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r2, .L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r2, #20]
	ldr	r3, .L28
	ldr	r3, [r3, #24]
	ldr	r2, .L28
	bic	r3, r3, #16320
	bic	r3, r3, #63
	str	r3, [r2, #24]
	ldr	r3, .L28
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L28
	orrs	r3, r3, r2
	str	r3, [r1, #24]
	ldr	r3, .L28
	ldr	r2, [r3, #36]
	ldr	r1, .L28
	ldr	r3, .L28+4
	ands	r3, r3, r2
	str	r3, [r1, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #8
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #24
	str	r3, [r7, #16]
	ldr	r3, .L28
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #28]
	orrs	r1, r1, r3
	ldr	r3, [r7, #24]
	orrs	r1, r1, r3
	ldr	r3, [r7, #20]
	orrs	r1, r1, r3
	ldr	r3, [r7, #16]
	orrs	r3, r3, r1
	ldr	r1, .L28
	orrs	r3, r3, r2
	str	r3, [r1, #36]
	ldr	r3, .L28
	ldr	r3, [r3, #40]
	ldr	r2, .L28
	and	r3, r3, #-16777216
	str	r3, [r2, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, .L28
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #12]
	orrs	r1, r1, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r1
	ldr	r1, .L28
	orrs	r3, r3, r2
	str	r3, [r1, #40]
	ldr	r2, .L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r2, #48]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L29:
	.align	2
.L28:
	.word	1073917952
	.word	16515264
	.size	DMA2D_BGConfig, .-DMA2D_BGConfig
	.section	.text.DMA2D_BG_StructInit,"ax",%progbits
	.align	1
	.global	DMA2D_BG_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_BG_StructInit, %function
DMA2D_BG_StructInit:
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
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	DMA2D_BG_StructInit, .-DMA2D_BG_StructInit
	.section	.text.DMA2D_FGStart,"ax",%progbits
	.align	1
	.global	DMA2D_FGStart
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_FGStart, %function
DMA2D_FGStart:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L35
	ldr	r3, [r3, #28]
	ldr	r2, .L35
	orr	r3, r3, #32
	str	r3, [r2, #28]
	b	.L34
.L32:
	ldr	r3, .L35
	ldr	r3, [r3, #28]
	ldr	r2, .L35
	bic	r3, r3, #32
	str	r3, [r2, #28]
.L34:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L36:
	.align	2
.L35:
	.word	1073917952
	.size	DMA2D_FGStart, .-DMA2D_FGStart
	.section	.text.DMA2D_BGStart,"ax",%progbits
	.align	1
	.global	DMA2D_BGStart
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_BGStart, %function
DMA2D_BGStart:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	ldr	r3, .L41
	ldr	r3, [r3, #36]
	ldr	r2, .L41
	orr	r3, r3, #32
	str	r3, [r2, #36]
	b	.L40
.L38:
	ldr	r3, .L41
	ldr	r3, [r3, #36]
	ldr	r2, .L41
	bic	r3, r3, #32
	str	r3, [r2, #36]
.L40:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L42:
	.align	2
.L41:
	.word	1073917952
	.size	DMA2D_BGStart, .-DMA2D_BGStart
	.section	.text.DMA2D_DeadTimeConfig,"ax",%progbits
	.align	1
	.global	DMA2D_DeadTimeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_DeadTimeConfig, %function
DMA2D_DeadTimeConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L47
	ldr	r3, [r3, #76]
	ldr	r2, .L47
	bic	r3, r3, #65280
	bic	r3, r3, #1
	str	r3, [r2, #76]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, .L47
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	ldr	r2, .L47
	orr	r3, r3, #1
	str	r3, [r2, #76]
	b	.L46
.L44:
	ldr	r3, .L47
	ldr	r3, [r3, #76]
	ldr	r2, .L47
	bic	r3, r3, #1
	str	r3, [r2, #76]
.L46:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	1073917952
	.size	DMA2D_DeadTimeConfig, .-DMA2D_DeadTimeConfig
	.section	.text.DMA2D_LineWatermarkConfig,"ax",%progbits
	.align	1
	.global	DMA2D_LineWatermarkConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_LineWatermarkConfig, %function
DMA2D_LineWatermarkConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L50
	ldr	r3, [r7, #4]
	str	r3, [r2, #72]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L51:
	.align	2
.L50:
	.word	1073917952
	.size	DMA2D_LineWatermarkConfig, .-DMA2D_LineWatermarkConfig
	.section	.text.DMA2D_ITConfig,"ax",%progbits
	.align	1
	.global	DMA2D_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_ITConfig, %function
DMA2D_ITConfig:
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
	beq	.L53
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r1, .L56
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L55
.L53:
	ldr	r3, .L56
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L56
	ands	r3, r3, r2
	str	r3, [r1]
.L55:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	1073917952
	.size	DMA2D_ITConfig, .-DMA2D_ITConfig
	.section	.text.DMA2D_GetFlagStatus,"ax",%progbits
	.align	1
	.global	DMA2D_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_GetFlagStatus, %function
DMA2D_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L62
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L59
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L60
.L59:
	movs	r3, #0
	strb	r3, [r7, #15]
.L60:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L63:
	.align	2
.L62:
	.word	1073917952
	.size	DMA2D_GetFlagStatus, .-DMA2D_GetFlagStatus
	.section	.text.DMA2D_ClearFlag,"ax",%progbits
	.align	1
	.global	DMA2D_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_ClearFlag, %function
DMA2D_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L65
	ldr	r3, [r7, #4]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L66:
	.align	2
.L65:
	.word	1073917952
	.size	DMA2D_ClearFlag, .-DMA2D_ClearFlag
	.section	.text.DMA2D_GetITStatus,"ax",%progbits
	.align	1
	.global	DMA2D_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_GetITStatus, %function
DMA2D_GetITStatus:
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
	lsrs	r3, r3, #8
	str	r3, [r7, #8]
	ldr	r3, .L73
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L68
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L69
.L68:
	movs	r3, #0
	strb	r3, [r7, #15]
.L69:
	ldr	r3, .L73
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L70
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L71
.L70:
	movs	r3, #0
	strb	r3, [r7, #15]
.L71:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L74:
	.align	2
.L73:
	.word	1073917952
	.size	DMA2D_GetITStatus, .-DMA2D_GetITStatus
	.section	.text.DMA2D_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	DMA2D_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2D_ClearITPendingBit, %function
DMA2D_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	str	r3, [r7, #4]
	ldr	r2, .L76
	ldr	r3, [r7, #4]
	str	r3, [r2, #8]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L77:
	.align	2
.L76:
	.word	1073917952
	.size	DMA2D_ClearITPendingBit, .-DMA2D_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
